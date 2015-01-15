<?php
//on inclue en début de code la configuration de openssl
include('configurationSSL.php');
$privkey = openssl_pkey_new();

header("Location: ../index.php?page=FormCertificatRacine.tpl&kprivkey=".openssl_pkey_get_private($privkey));


?>