<?php
//on inclue en début de code la configuration de openssl
include('configurationSSL.php');
$privkey = openssl_pkey_new();
echo openssl_pkey_get_private($privkey);


?>