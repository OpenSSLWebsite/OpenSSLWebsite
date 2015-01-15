<?php

function recupClePublique(String $certif, String $contenueText){
    //on inclue en début de code la configuration de openssl
    include('configurationSSL.php');

    //$certif passer en paramètre est le certificat envoyer par l'utilisateur

    //récupération de la clé publique du certificat Perso
    $pkPub = openssl_pkey_get_public ( $certif );

    //ci besoin le code ci-dessous permet d'exporter en fichier la clé publique de ce certificat
    //clé publique exporter dans un fichier
   // openssl_pkey_export_to_file($pkPub, "CléPublique.txt");

    // Affiche les erreurs qui sont survenues
    while (($e = openssl_error_string()) !== false) {
        echo $e . "\n";
    }
    
    chiffrer($certif, $contenueText, $pkPub);
}

function chiffrer(String $source, String $crypttext, String $pub_key_string){
    //on crypte le message envoyer par le formulaire
    openssl_public_encrypt($source, $crypttext, $pub_key_string);
    //on retourne le texte crypter en base 64.
    return(base64_encode($crypttext));
}
?>