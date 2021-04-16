<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="favicon.ico" />
        <link rel="icon" type="image/png" href="raquette.png" />
        <meta charstet="utf-8" />
        <title>Le tennis de table</title>
        <link type="text/css" rel="stylesheet" href="SiteGeneral.css">     <!--Cible-->
    </head>

    <body background="images/texte.jpg">
        <!-------------Include mise en page du site--------->
        <?php
        include 'miseenpage.php';
        ?>
        <!------Formulaire d'inscription-------->  
<div class="textbox">
        <form action="insertion.php" method="POST">
            <h1 id="CreerCompte">Creer un compte</h1>
            <u><p class="username">Nom d'Utilisateur :</u>
            <input type="text" name="Username" maxlength="250" placeholder='Pseudo'/>
            </p>

            <u><p class="password">Mot de passe :</u>
            <input type="password" name="Password" maxlength="250" placeholder='Mot de passe'/>
            </p>
            <u><p class="mail">Adresse e-mail : </u>
            <input type="email" name="email" placeholder="Entrer une adresse mail valide"/>
        </p>

        <!------------Espacement voir SiteGeneral.css----------->
        <div  class="sautcreateaccount"></div>
        <!------------Bouton submit--------->
        <button class="create-account" type="submit" value="Ajouter" name="CreerCompte">
            Creer un compte
        </button>
        <hr size="4" color="black"/>
        <!-----------Connexion page--------->
        <font size=5><a href="Connexion.php" id="Connecter">Deja un compte ? Se connecter !</a></font>
        </form>

    </div>
    </body>
    
</html>