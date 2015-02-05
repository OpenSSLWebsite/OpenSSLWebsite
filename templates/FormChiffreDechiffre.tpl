<?php

    $chiffrement = (isset($_POST["return_chiffrement"])) ? htmlentities($_POST["return_chiffrement"]) : NULL;
    $dechiffrement = (isset($_POST["return_dechiffrement"])) ? htmlentities($_POST["return_dechiffrement"]) : NULL;
?>
<div class="vacciner-container">
    <h1 style="text-align: center; color: red">Chiffrement & Déchiffrement</h1>
</br>

<div class="col-sm-6" style="border-right:1px solid #397bce;">
  <h3 style="text-align: center; color: red">Chiffrement</h3>
  </br>
  <form action="modeles/ClePublique.php" method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="col-sm-3 control-label">Certificat : </label>
      <div class="col-sm-9">
        <input type="file" id="cerRac" name="cerRac" class="form-control" required />
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-12">
        <label for="textChiffrerAR" class="control-label">Texte à chiffrer : </label>
        <textarea id="textChiffrerAR" name="TextChiffrerAR" class="form-control" rows="3" required></textarea>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-8 col-sm-4">
        <button name="chiffrer" type="button" class="btn btn-primary" style="width:100%">Chiffrer le texte</button>
      </div>
    </div>
  </form>
  <div class="cadre-menu-actualite img-thumbnail" style="width: 100%; background-color:#86B0E7; margin-bottom:10px">
    <div class="form-group">
      <div class="col-sm-12">
        <label for="textChiffrerAL" class="control-label" style="color:white">Texte chiffrer : </label>
        <textarea id="textChiffrerAL" name="TextChiffrerAL" class="form-control" rows="3"><?php if ( isset ( $chiffrement ) ) { echo $chiffrement; }; ?></textarea>
      </div>
    </div>
  </div>
</div>

<div class="col-sm-6">
  <h3 style="text-align: center; color: red">Déchiffrement</h3>
  </br>
  <form action="modeles/ClePublique.php" method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="col-sm-3 control-label">Clé privée : </label>
      <div class="col-sm-9">
        <input type="file" id="clePrim" name="clePrim" class="form-control" required />
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-12">
        <label for="textDechiffrerAR" class="control-label">Texte à déchiffrer : </label>
        <textarea id="textDechiffrerAR" name="textDechiffrerAR" class="form-control" rows="3" required></textarea>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-8 col-sm-4">
        <button name="dechiffrer" type="submit" class="btn btn-primary" style="width:100%">Déchiffrer le texte</button>
      </div>
    </div>
  </form>
  <div class="cadre-menu-actualite img-thumbnail" style="width: 100%; background-color:#86B0E7; margin-bottom:10px">
    <div class="form-group">
      <div class="col-sm-12">
        <label for="textDechiffrerAL" class="control-label" style="color:white">Texte déchiffrer : </label>
        <textarea id="textDechiffrerAL" name="TextDechiffrerAL" class="form-control" rows="3"><?php if ( isset ( $dechiffrement ) ) { echo $dechiffrement; }; ?></textarea>
      </div>
    </div>
  </div>
</div>
</div>