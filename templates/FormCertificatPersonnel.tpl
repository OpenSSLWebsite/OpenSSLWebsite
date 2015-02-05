<?php
    error_reporting( E_ALL );
?>
<div class="vacciner-container">
    <h1 style="text-align: center; color: red">Génération d'un certificat personnel</h1>


<form action="modeles/certificatPersonnel.php" method="post" class="form-horizontal" role="form">
  <div class="form-group">
    <label class="col-sm-2 control-label">Certificat racine : </label>
    <div class="col-sm-4">
      <input type="file" id="cerRac" name="cerRac" class="form-control" required />
    </div>
    <label class="col-sm-2 control-label">Clé privée racine : </label>
    <div class="col-sm-4">
      <input type="file" id="clePri" name="clePri" class="form-control" required />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Nom et prénom : </label>
    <div class="col-sm-10">
      <input name="commonName" type="text" class="form-control" placeholder="Nom" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Email : </label>
    <div class="col-sm-10">
      <input name="emailAdress" type="text" class="form-control" placeholder="Acronyme" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Ville : </label>
    <div class="col-sm-10">
      <input name="localityName" type="text" class="form-control" placeholder="Nom de l'unité" required>
    </div>
  </div>
	<div class="form-group">
      <label class="col-sm-2 control-label">Département : </label>
      <div class="col-sm-10">
        <input name="stateOrProvinceName" type="text" class="form-control" placeholder="Email" required>
      </div>
    </div>
	<div class="form-group">
      <label class="col-sm-2 control-label">Pays : </label>
      <div class="col-sm-10">
        <input name="countryName" type="text" class="form-control" placeholder="Ville" required>
      </div>
    </div>
	<div class="form-group">
    <label class="col-sm-2 control-label">Organisation : </label>
    <div class="col-sm-10">
      <input name="organizationName" type="text" class="form-control" placeholder="Département" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Nom de l'unité : </label>
    <div class="col-sm-10">
      <input name="organizationalUnitName" type="text" class="form-control" placeholder="Pays" required>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-9 col-sm-3">
      <button name="valider" type="submit" class="btn btn-primary" style="width:100%">Valider</button>
    </div>
  </div>
</form>

</div>