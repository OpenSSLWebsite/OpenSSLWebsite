<?php
//code conseiller d'ajouter a chaque ddébut de fichier créer 
$configars = array("config"=>"C:\Program Files (x86)\EasyPHP-DevServer-14.1VC9\binaries\php\php_runningversion\extras\openssl.cnf");

//récupération de l'emplacement du certificat Perso
$certificate = "certificatPerso.txt"; 

//récupération de la clé publique du certificat Perso 
$pkPub = resource openssl_pkey_get_public ( mixed $certificate );

//clé publique exporter dans un fichier 
openssl_pkey_export_to_file($pkPub, "CléPublique.txt");

// Affiche les erreurs qui sont survenues
while (($e = openssl_error_string()) !== false) {
    echo $e . "\n";
}


?>