<!DOCTYPE html>
<!--
    Name :          OpenSSLWebsite
    Created on :    7 jan. 2015, 09:00:36
    Author     :    Pacheco Mélanie | Passé Valentin | Fillon Vincent
-->

<?php
    $page = (isset($_GET['page'])) ? htmlentities($_GET['page']) : NULL;
?>

<html>
    <head>
        <title>OpenSSLWebsite</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="OpenSSLWebsite">
        <meta name="author" content="Pacheco Mélanie | Passé Valentin | Fillon Vincent">
        <!-- TODO   =>  Choisir un favicon et le placer dans le dossier img/
        <link rel="shortcut icon" href="images/favicon.ico"/>
        -->

        <!-- Local Bootstrap core CSS -->
        <link href="bootstrap-3.3.1/css/bootstrap.css" rel="stylesheet">
        
        <!-- CDM Bootstrap core CSS
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        -->
        
        <!-- Custom styles for this template -->
        <link href="css/global.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div id="header-background"></div>
            <ul class="nav nav-justified nav-pills">
                <li><a href="index.php?page=FormCertificatRacine.tpl"><span class="glyphicon glyphicon-inbox" aria-hidden="true"></span></a>Certificat Racine</li>
                <li><a href="index.php?page=FormCertificatPersonnel.tpl"><span class="glyphicon glyphicon-file" aria-hidden="true"></span></a>Certificat Personnel</li>                
                <li><a href="index.php?page=FormChiffreDechiffre.tpl"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></a>Chiffrement / Déchiffrement</li>
            </ul>
        </header>
        <div class="container">
            <div id="container-head-white"></div>
            <div id="container-head-gradient"></div>
            <!-- Contenu importé depuis les differentes pages : "nom_page".tpl -->
            <?php
                if ( $page ) {
                    include('templates/' . $page);
                }
                else {
                    include('templates/FormCertificatRacine.tpl');
                }
            ?>
        </div>
        <footer>
            <div id="footer-gradient"></div>
            <div id="footer-background"></div>
        </footer>
    </body>
    
    <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        
        <!-- Local Bootstrap core JavaScript -->
        <script src="bootstrap-3.3.1/js/bootstrap.min.js"></script>
        
        <!-- CDN Bootstrap core JavaScript :
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script> 
        -->
        
        <!-- JavaScript du projet -->
        <script src="js/global.js"></script>
</html>
