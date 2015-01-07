<?php
    error_reporting( E_ALL );
?>
<div class="vacciner-container">
    <h1 style="text-align: center; color: red">Génération d'un certificat racine</h1>


<div class="cadre-menu-actualite img-thumbnail" style="width: 100%; background-color:#86B0E7; margin-bottom:10px">
</br>
	<form method="post" class="form-horizontal" role="form">
		<div class="form-group">
			<label class="col-sm-2 control-label" style="color:white">Clé privé : </label>
			<div class="col-sm-10">
				<input name="cleprivee" type="text" class="form-control" disabled>
			</div>		
		</div>
		<div class="form-group">
	      	<div class="col-sm-offset-5 col-sm-3">
	            <button name="genererCle" type="submit" class="btn btn-primary" style="width:100%">Générer la clé privé</button>
	      	</div>
	    </div>
	</Form>
</div>
<!--<p class="centrer img-thumbnail" style="width: 100%; background-color:#397bce;"></p>-->

<form method="post" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-sm-2 control-label">Nom : </label>
          <div class="col-sm-10">
            <input name="nom" type="text" class="form-control" placeholder="Nom">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Acronyme : </label>
          <div class="col-sm-10">
            <input name="acronyme" type="text" class="form-control" placeholder="Acronyme">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Nom de l'unité : </label>
          <div class="col-sm-10">
            <input name="nomUnite" type="text" class="form-control" placeholder="Nom de l'unité">
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Email : </label>
          <div class="col-sm-10">
            <input name="email" type="text" class="form-control" placeholder="Email">
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Ville : </label>
          <div class="col-sm-10">
            <input name="ville" type="text" class="form-control" placeholder="Ville">
          </div>
        </div>
    	<div class="form-group">
          <label class="col-sm-2 control-label">Département : </label>
          <div class="col-sm-10">
            <input name="departement" type="text" class="form-control" placeholder="Département">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Pays : </label>
          <div class="col-sm-10">
            <input name="pays" type="text" class="form-control" placeholder="Pays">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button name="valider" type="submit" class="btn btn-primary">Envoyer</button>
          </div>
        </div>
</form>

    <?php
        if(isset($_POST['valider'])){
            if (isset ($_POST['nom'])&&isset($_POST['prenom'])&&isset($_POST['age'])&&isset($_POST['sexe'])){
                Personnes::addPersonne($_POST['nom'], $_POST['prenom'], $_POST['age'],$_POST['sexe']);
            }
        }
    ?>
</div>