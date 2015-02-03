<?php
    error_reporting( E_ALL );
?>
<div class="vacciner-container">
    <h1 style="text-align: center; color: red">Génération d'un certificat racine</h1>

<form action="modeles/certificatInitial.php" method="post" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-sm-2 control-label">Nom : </label>
          <div class="col-sm-10">
            <input name="commonName" type="text" class="form-control" placeholder="Nom" required>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Acronyme : </label>
          <div class="col-sm-10">
            <input name="organizationName" type="text" class="form-control" placeholder="Acronyme" required>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Nom de l'unité : </label>
          <div class="col-sm-10">
            <input name="organizationUnitName" type="text" class="form-control" placeholder="Nom de l'unité" required>
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Email : </label>
          <div class="col-sm-10">
            <input name="emailAdress" type="text" class="form-control" placeholder="Email" required>
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Ville : </label>
          <div class="col-sm-10">
            <input name="localityName" type="text" class="form-control" placeholder="Ville" required>
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Département : </label>
          <div class="col-sm-10">
            <input name="stateOrProvinceName" type="text" class="form-control" placeholder="Département" required>
          </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">Pays : </label>
        <div class="col-sm-10">
          <input name="countryName" type="text" class="form-control" placeholder="Pays" required>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-9 col-sm-3">
          <button name="valider" type="submit" class="btn btn-primary" style="width:100%">Valider</button>
        </div>
      </div>
</form>

<div class="form-horizontal">
  <div class="form-group">
    <div class="col-sm-4">
      <label for="textKeyPrivate" class="control-label">Clé Privée : </label>
      <textarea id="textKeyPrivate" name="textKeyPrivate" class="form-control" rows="3" readonly></textarea>
    </div>
    <div class="col-sm-4">
      <label for="textRequete" class="control-label">Requête : </label>
      <textarea id="textRequete" name="Requete" class="form-control" rows="3" readonly></textarea>
    </div>
    <div class="col-sm-4">
      <label for="textCertificat" class="control-label">Certificat : </label>
      <textarea id="textCertificat" name="Requete" class="form-control" rows="3" readonly></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-2">
      <form method="post" role="form">
        <button name="telClePrivee" type="submit" class="btn btn-primary" style="width:100%" disabled>Télécharger Clé privée</button>
      </form>
    </div>
    <div class="col-sm-2">
      <form method="post" role="form">
        <button name="telRequete" type="submit" class="btn btn-primary" style="width:100%" disabled>Télécharger Requête</button>
      </form>
    </div>
    <div class="col-sm-2">
      <form method="post" role="form">
        <button name="telCertificat" type="submit" class="btn btn-primary" style="width:100%" disabled>Télécharger Certificat</button>
      </form>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-6">
      <form method="post" role="form">
        <button name="CertificatPersonnel" type="submit" class="btn btn-primary" style="width:100%" disabled>Créer certificat personnel</button>
      </form>
    </div>
  </div>
</div>
</div>