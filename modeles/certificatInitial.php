<?php

function certificatRacine (String $cn, String $sopn, String $ln, String $on, String $oun, String $comN, String $mail){
    //code conseiller d'ajouter a chaque ddébut de fichier créer
    $configars = array("config"=>"C:\Program Files (x86)\EasyPHP-DevServer-14.1VC9\binaries\php\php_runningversion\extras\openssl.cnf");

    // Assigne les valeurs du nom distingué à utiliser avec le certificat.
    $dn = array(
        "countryName" => $cn,
        "stateOrProvinceName" => $sopn,
        "localityName" => $ln,
        "organizationName" => $on,
        "organizationalUnitName" => $oun,
        "commonName" => $comN,
        "emailAddress" => $mail
    );

    // Génère les clés privée et publique
    $privkey = openssl_pkey_new();

    // Génère la requête de signature de certificat
    $csr = openssl_csr_new($dn, $privkey);

    // Cette commande crée une certificat auto-signé valide 3 ans soit 1095 jours
    $sscert = openssl_csr_sign($csr, null, $privkey, 1095);

    // préserver la clé privée, la CSR et le certificat auto-signé,
    //de façon à ce qu'ils puissent être installés sur le site internet.
    // Cet exemple vous montre comment placer ces éléments dans des variables
    // mais vous pouvez aussi les mettre directement dans des fichiers.
    // Typiquement, vous allez envoyer la CSR à votre autorité de certification
    // qui vous émettra un "vrai" certificat.
    openssl_csr_export_to_file($csr, "requeteSignature".$comN.".txt");
    openssl_x509_export_to_file($sscert, "certificat".$comN.".txt");
    openssl_pkey_export_to_file($privkey, "cles".$comN.".txt");

    // Affiche les erreurs qui sont survenues
    while (($e = openssl_error_string()) !== false) {
        echo $e . "\n";
    }
}
?>