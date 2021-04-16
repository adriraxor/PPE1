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
        <?php
        include 'miseenpage.php';
        ?>
    <div class="textbox">
<!--------Insertion des informations saisies par l'utilisateur du formulaire d'inscription dans la BDD--------> 
    <?php
    $valueUsername = $_POST['Username']; //Variable Username liée avec la valeur Username
    $valuePassword =  $_POST['Password']; //Variable Password liée avec la valeur Password 
    $valueemail = $_POST['email']; //Variable email liée avec la valeur email

    //execution de la requete preparee SI TOUS LES CHAMPS DU FORMULAIRE NE SONT PAS VIDDES
    if($valueUsername !="" && $valuePassword !="" && $valueemail != "")
    {

        //ouverture d'une connexion a  la base de donnee "formulaire"
        $objetPdo = new PDO('mysql:host=localhost;dbname=formulaire','root','');

        //preparation de la requete d'insertion (SQL) dans la table membres 
        $pdoStat = $objetPdo->prepare('INSERT INTO membres VALUES(:pseudo, :mdp, :email)');

        //liaison de chaque marqueur a  une valeur
        $pdoStat->bindValue(':pseudo', $valueUsername, PDO::PARAM_STR );
        $pdoStat->bindValue(':mdp', $valuePassword, PDO::PARAM_STR);
        $pdoStat->bindValue(':email', $valueemail, PDO::PARAM_STR);
        $InsertIsOk = $pdoStat->execute();
        
        if($InsertIsOk){
            //$message = 'Compte enregistree dans la BDD';
            echo "<h1 id='title-se-connecter'>Inscription reussi</h1>";
            echo "<u><p class='ConfirmationInscription'>Vous avez bien ete inscrit, veuillez vous connecte sur cette page : </u></p>";
            echo "<font size=3><a id='lienConnexionInscription' href='Connexion.php'>Se connecter</a></font>";
            echo "<hr size='4' color='black'/>";
        }

        else{
            //$message = 'Echec de l\insertion';
            echo "<u><p class='ConfirmationInscription'>Echec d/insertion dans la base de donnee ! </u></p>";
           }
    }
    else {
        //$message = 'le formulaire comporte au moins un champ vide';
         echo "<u><p class='ConfirmationInscription'>Le formulaire comporte au moins un champs vide</u></p>";
         echo "<a href='Inscription.php'>Cliquez ici pour revenir au formulaire</a>"; 
    }

    //echo "<br>".$message."<br>";

    ?>

    </div>
    </body>
</html>