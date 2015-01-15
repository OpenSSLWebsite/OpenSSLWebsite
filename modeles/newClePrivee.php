<?php

$configars = array("config"=>"C:\Program Files (x86)\EasyPHP-DevServer-14.1VC11\binaries\php\php_runningversion\extras\ssl\openssl.cnf");
$privkey = openssl_pkey_new();

header("Location: ../index.php?page=pictionary.tpl&kprivkey=".$privkey);


?>