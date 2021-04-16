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
        <!-------------Include mise en page------------>
        <?php
        include 'miseenpage.php';
        ?>
    <div class="textbox">
        <!------------Formulaire de connexion-------------->
    <form action="login.php" method="POST">
        <h1 id="title-se-connecter">Se connecter</h1>
        <u><p class="username">Nom d'Utilisateur</u>
        <input type="text" name="connectUsername" maxlength="250" placeholder="Mail ou Pseudo">
        </p>
        
        <u><p class="password">Mot de passe</u>
            <input type="password" name="connectPassword" maxlength="250" placeholder="mot de passe">
        </p>
        <button class="Connect" type="submit" name="connect">
          Se connecter
        </button>
        
        <hr size="4" color="black"/>
       
    </div>
    </body>
</html>