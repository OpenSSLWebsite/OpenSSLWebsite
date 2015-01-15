<?php
//on inclue en début de code la configuration de openssl
include('configurationSSL.php');

//récupération de l'emplacement du certificat Perso
$certificate = "certificatPerso.txt"; 

//récupération de la clé publique du certificat Perso 
$pkPub = openssl_pkey_get_public ( $certificate );

//clé publique exporter dans un fichier 
openssl_pkey_export_to_file($pkPub, "CléPublique.txt");

// Affiche les erreurs qui sont survenues
while (($e = openssl_error_string()) !== false) {
    echo $e . "\n";
}


?>