<?php
//on inclue en début de code la configuration de openssl
include('configurationSSL.php');

$privkey = openssl_pkey_new();

header("Location: ../index.php?page=pictionary.tpl&kprivkey=".$privkey);


?>