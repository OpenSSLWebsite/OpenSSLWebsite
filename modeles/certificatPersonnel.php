<?php

//on inclue ici le fichier de configuration
include('configurationSSL.php');

$comN=stripslashes($_POST['commonName']);
$on=stripslashes($_POST['organizationName']);
$oun=stripslashes($_POST['organizationUnitName']);
$mail=stripslashes($_POST['emailAdress']);
$ln=stripslashes($_POST['localityName']);
$sopn=stripslashes($_POST['stateOrProvinceName']);
$cn=stripslashes($_POST['countryName']);

if (isset($cn) && isset($sopn) && isset($ln) && isset($on) && isset($oun) && isset($comN) && isset($mail)){

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
	openssl_csr_export_to_file($csr, "requeteSignaturePerso".$comN.".txt");
	openssl_x509_export_to_file($sscert, "certificatPerso".$comN.".txt");
	openssl_pkey_export_to_file($privkey, "clesPerso".$comN.".txt");


	// Affiche les erreurs qui sont survenues
	while (($e = openssl_error_string()) !== false) {
		echo $e . "\n";
	}

}
?>