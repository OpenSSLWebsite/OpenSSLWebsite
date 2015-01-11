<?php
    error_reporting( E_ALL );
?>
<div class="vacciner-container">
    <h1 style="text-align: center; color: red">Signature & Vérification</h1>
</br>

<div class="col-sm-6" style="border-right:1px solid #397bce;">
  <h3 style="text-align: center; color: red">Signature</h3>
  </br>
  <form method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="col-sm-3 control-label">Document : </label>
      <div class="col-sm-9">
        <input name="nom" type="text" class="form-control" placeholder="Document" required>
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
        <button name="chiffrer" type="submit" class="btn btn-primary" style="width:100%">Chiffrer le texte</button>
      </div>
    </div>
  </form>
  <div class="cadre-menu-actualite img-thumbnail" style="width: 100%; background-color:#86B0E7; margin-bottom:10px">
    <div class="form-group">
      <div class="col-sm-12">
        <label for="textChiffrerAL" class="control-label" style="color:white">Texte chiffrer : </label>
        <textarea id="textChiffrerAL" name="TextChiffrerAL" class="form-control" rows="3"></textarea>
      </div>
    </div>
  </div>
</div>

<div class="col-sm-6">
  <h3 style="text-align: center; color: red">Déchiffrement</h3>
  </br>
  <form method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="col-sm-3 control-label">Clé privée : </label>
      <div class="col-sm-9">
        <input name="nom" type="text" class="form-control" placeholder="Clé privée" required>
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
        <textarea id="textDechiffrerAL" name="TextDechiffrerAL" class="form-control" rows="3"></textarea>
      </div>
    </div>
  </div>
</div>

    <?php
        if(isset($_POST['valider'])){
            if (isset ($_POST['nom'])&&isset($_POST['prenom'])&&isset($_POST['age'])&&isset($_POST['sexe'])){
                Personnes::addPersonne($_POST['nom'], $_POST['prenom'], $_POST['age'],$_POST['sexe']);
            }
        }
    ?>
</div>