<!---Lancement de la session--->
<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
	<title>Actualites</title>
	<link type="text/css" rel="stylesheet" href="SiteGeneral.css">
	<link rel="icon" type="images/png" href="raquette.png" />
        <link href="DateHeure.js"/>
        <meta charstet="utf-8" />
  </head>
   <body background="images/texte.jpg">
       
     <!------Include qui inclus la forme de la page entête + footer + fond d'écran------>
         <?php 
            include 'miseenpage.php';
         ?>

      <marquee behavior="alternate" class="Actualites"><font size="4">Actualites</marquee></font>
      
       <!-------Liste de selections avec bouton rechercher----->
      <form action="Actualites.php" method="POST">
        <select name="listTournois">
          <option value="">Tous les tournois</option>
          <option value="Regional">Regional</option>
          <option value="Departemental">Departemental</option>
          <option value="National B">National B</option>
          <option value="International">International</option>
        </select>
        <button class="RechercheComboBoxCalendrier" type="submit" value="Go" name="chercheCalendrier">
           Rechercher
        </button>
      <!-------Lecture donnees de la base de donnee puis recuperation des donnees pour insertion dans le tableau de la page Actualite------->
        <?php
        $selectType = "";
         if(isset($_POST['listTournois'])) { 
                $selectType = $_POST['listTournois'];
                echo $selectType;
         }
        //Tableau lecture données----------
        $db = new PDO('mysql:host=localhost;dbname=formulaire','root',''); //Connexion
        if($selectType != "") { 
            $reqperso = "SELECT * FROM tournois where Type ='".$selectType."'";
        }
        else {
            $reqperso = "SELECT * FROM tournois";
        }
        //echo conception Tableau avec information récupéré de la Base de Donnée (Voir requête SQL plus haut) 
        $reponse = $db->query($reqperso); //Requete lecture 
         echo "<table border='1'>";
         echo "<thead class='TournoisEntete'><tr><th>NomTournois</th><th>Date</th><th>CodePostal</th><th>Ville</th><th>Type</th></tr></thead>";
         while ($donnees = $reponse->fetch())
         {
            echo "<tr><td>".$donnees['NomTournois']."</td><td>".$donnees['Date']."</td><td>".$donnees['CodePostal']."</td><td>".$donnees['Ville']."</td><td>".$donnees['Type']."</td></tr>";
         }
          echo "</table>";

          $reponse->closeCursor();
     ?>


   <div class="sautactu"></div>

  </body>
</html>