<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <!--Icone Onglet + Lien vers fichier CSS + title de l'onglet-->

        <link rel="icon" type="images/png" href="raquette.png" />
        <link href="DateHeure.js"/>
        <meta charstet="utf-8" />
        <title>Le tennis de table</title>
        <link type="text/css" rel="stylesheet" href="SiteGeneral.css">
    </head>

    <body background="images/background.png">
        <!------Include qui inclus la forme de la page entete + footer + fond d'ecran------>
        <?php
        include 'miseenpage.php';
        ?>
        <!----Videos page d'accueil---->
        <video class="video2" controls>
            <source src="" type="video/mp4"/>
            Votre navigateur ne prend pas en charge ce type de vidéo
        </video>
        <video class="video1" controls>
            <source src="" type="video/mp4"/>
            Votre navigateur ne prend pas en charge ce type de vidéo
        </video>               
    </body>
</html>
