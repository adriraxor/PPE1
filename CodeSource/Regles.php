<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Les Regles</title>

        <!-- Titre d'importance H1 et H3 souligner -->
        <style>
            H1
            {
                text-decoration: underline;
            }

            H3
            {
                text-decoration: underline;
            }
        </style>


        <!--Icone Onglet + Lien vers fichier CSS-->

        <link rel="icon" href="favicon.ico" />
        <link rel="icon" type="image/png" href="raquette.png" />
        <meta charstet="utf-8" />
        <title>Le tennis de table</title>
        <link type="text/css" rel="stylesheet" href="SiteGeneral.css">     <!--Cible-->
    </head>


    <body background="images/texte.jpg">
        <?php
        include 'miseenpage.php';
        ?>

    <center>
        <h1>REGLES</h1>
    </center>


    <h1>Regles du tennis de table</h1>


    <h3>Comptage des points</h3>
    <ul>
        <li><p>Le vainqueur est celui qui remporte le premier, trois ou quatre manches (Differents selon la competition.)</p></li>
        <li><p>Une manche est gagnée lorsque le score de 11 points a été atteint.</p></li>
        <li><p>Le vainqueur doit avoir au moins deux points d'écart sur son adversaire. En cas de score de 10 à 10, le jeu se poursuivra jusqu'à ce qu'un des joueurs obtienne deux points de plus que l'autre joueur (Exemple victoire:12 à 10)</p></li>
    </ul>


    <h3>Gains de points</h3>
    <ul>
        <li><p>Un joueur gagne un point si son adversaire commet une des fautes suivantes :</p></li>
        <li><p>Il ne peut pas renvoyer la balle</p></li>
        <li><p>Il frappe la balle en dehors du camp de l'adversaire</p></li>
        <li><p>Il laisse la balle rebondir plus d'une fois dans son propre camp avant de la renvoyer</p></li>
        <li><p>Il touche la balle plus d'une fois d'affilée</p></li>
        <li><p>Il prend la balle à la volée au-dessus de son camp, sans que la balle ait rebondi au préalable sur la table</p></li>
        <li><p>Il deplace la table en jouant</p></li>
        <li><p>Il touche le filet</p></li>
        <li><p>Il touche la table avec la main</p></li>
        <li><p>Il fait un service nul (rebondis sur le filet)</p></li>
    </ul>


    <h3>Regles du jeu</h3>
    <ul>
        <li><p>Lorsque la balle touche le bord de la table, elle est valable.</p></li>
        <li><p>La balle ne doit pas etre renvoye à la vole</p></li>
    </ul>


    <h3>Le Service</h3>

    <ul>
        <li><p>Un tirage au sort determinera qui servira en premier. Le service change tous les deux points.</p></li>
        <li><p>Pendant les prolongations le service change apres chaque point</p></li>
        <li><p>La balle repose sur la paume de la main ouvert</p></li>
        <li><p>La main qui tient la balle doit se trouver au-dessus de la table</p></li>
        <li><p>La balle doit d'abord rebondir dans notre propre camp, puis dans le camp adverse</p></li>
        <li><p>Le service peut se faire de fa�on diagonale ainsi que rectiligne</p></li>
    </ul>


    <h3>Match en double</h3>
    <ul>
        <li><p>Le service doit etre obligatoirement en diagonale</p></li>
    </ul>

    <!-------------SAUT DE LIGNE POUR QUE LE FOOTER NE CACHE PAS LE TEXTE-------------->
    <div class="sautregles"></div>

</body>
</html>
