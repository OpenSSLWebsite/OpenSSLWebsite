<?php
function certificat(String $cn, String $sopn, String $ln, String $on, String $oun, String $comN, String $mail){
	//code conseiller d'ajouter a chaque ddébut de fichier créer 
	$configars = array("config"=>"C:\Program Files (x86)\EasyPHP-DevServer-14.1VC9\binaries\php\php_runningversion\extras\openssl.cnf");

	//récupération des informations du certificat principal
	$CAcrt = "certificat.crt";
	$CAkey = array("cles.txt", "monmot2passe");

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

	// Cette commande crée une certificat signer par l'autorité supérieur valide 1 ans soit 365 jours
	$sscert = openssl_csr_sign($csr, $CAcrt, $CAkey, 365);

	// préserver la clé privée, la CSR et le certificat auto-signé,
	//de façon à ce qu'ils puissent être installés sur le site internet.
	// éléments dans des fichiers.
	// Typiquement, l'autorité de certification émettra un "vrai" certificat.
	openssl_csr_export_to_file($csr, "requeteSignaturePerso.txt");
	openssl_x509_export_to_file($sscert, "certificatPerso.txt");
	openssl_pkey_export_to_file($privkey, "clesPerso.txt", "m2p");


	// Affiche les erreurs qui sont survenues
	while (($e = openssl_error_string()) !== false) {
		echo $e . "\n";
	}

}
?>