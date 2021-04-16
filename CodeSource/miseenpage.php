<!-- ici pas besoin de session start car déjà déclaré plus haut -->
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" media="screen and (max-width: 1024px)" href="SiteGeneral.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style> @import url('https://fonts.googleapis.com/css?family=Bree+Serif&display=swap');
            @import url('https://fonts.googleapis.com/css?family=Volkhov&display=swap');
        </style>
    </head>


    <body>
        <!-----------------CREATION BANDEAU--------------->
        <header>
            <div class="container">
                <img src="images/raquette.png" alt="logo" class="logo">
                <!------------Navigation Bar haut de page---------->
                <nav>
                    <ul>
                        <li><font size="5"><p class="navTT">Le Tennis de Table</p></font><li>
                      <div class="espacement"></div>
                        <li><font size=5><a href="index.php" class="Accueil"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Accueil</a></li></font>
                        <li><font size=3><a href="Regles.php" class="Regles">Regles</a></li></font>
                        <li><font size=3><a href="HistoireETchampions.php" class="HistoireETchampions">Histoire et Champions</a></li></font>
                        <li><font size=3><a href="Actualites.php" class="Contact">Actualites</a></li></font>
                        <li><font size=3><a href="Classement.php" class="Classement">Classement</a></font></li>
                        <!--------Ouverture PHP pour session membre changer dans la nav bar lien "connexion" en "deconnexion"------------------->
                        <?php
                        //**Si user connecte donc session ouverte
                        if(isset($_SESSION['pseudo']))
                        {
                        echo "<li><font size='3'><a href='deconnexion.php' class='Connexion'> DéConnexion</a></li></font>";
                        } 
                        //**Ici user non connecte = donc pas de session en cours, soit session public
                        else 
                        {
                          echo "<li><font size='3'><a href='Inscription.php' class='Connexion'>Connexion</a></li></font>";  
                        }
                        ?> 
                    </ul>
                </nav>
            </div>
        </header>
        <footer>
            <div class="basdepage">
            <!-----Heure JS------>    
            <h3 id='time'></h3>
            <div class="Script">
                <script src="DateHeure.js"></script>
            </div> 
            <?php
            //**membre connecte = affichage du user en bas gauche de la page
            if(isset($_SESSION['pseudo']))
            {
                    echo "<p id='account'>Connecte en tant que ".$_SESSION['pseudo']."</p>";
            } 
            ?>
            <p class="Copyright">Copyright &copy; 2019</p>
            <p class="devby">Site developper par Adrien F. et Hadrien B.</p>
        </footer>  
    </body>
</html>






