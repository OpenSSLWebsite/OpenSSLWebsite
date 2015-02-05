<?php
//on inclue ici le fichier de configuration
include('configurationSSL.php');

$sert=stripslashes($_POST['cerRac']);
$chiffre=stripslashes($_POST['TextChiffrerAR']);
$cle=stripslashes($_POST['clePrim']);
$textdechiffre=stripslashes($_POST['textDechiffrerAR']);


if(isset($_POST['chiffrer'])){
    if (isset($cert) && isset($chiffre)){

        //récupération de la clé publique du certificat Perso
        $pkPub = openssl_pkey_get_public ( $cert );

        // Affiche les erreurs qui sont survenues
        while (($e = openssl_error_string()) !== false) {
            echo $e . "\n";
        }

        $_POST['return_chiffrement'] = chiffrer($cert, $chiffre, $pkPub);
    }
    else {
        echo "veuillez renseigner le certificat ainsi que le message à chiffre";
        header('Location:templates/FormChiffreDechiffre.tpl');
    }
}

else if (isset($_POST['dechiffrer'])){
    if (isset($cle) && isset($textdechiffre)){
        $text="";

        $_POST['return_dechiffrement'] = dechiffre($textdechiffre, $text, $cle);
    }

    else {
        echo "veuillez renseigner la clé publique ainsi que le message à déchiffrer";
        header('Location:templates/FormChiffreDechiffre.tpl');
    }
}

function chiffrer(String $source, String $crypttext, String $pub_key_string){

    //on inclue en début de code la configuration de openssl
    include('configurationSSL.php');

    //on crypte le message envoyer par le formulaire
    openssl_public_encrypt($source, $crypttext, $pub_key_string);
    //on retourne le texte crypter en base 64.
    return (base64_encode($crypttext));
}

function dechiffre(String $text, String $txtDechiffre, String $cle){
    //on inclue en début de code la configuration de openssl
    include('configurationSSL.php');

    openssl_private_decrypt($text, $txtDechiffre, $cle);
    return $txtDechiffre;
}
?>