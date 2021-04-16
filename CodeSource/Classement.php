<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <!-- Titre H1 souligne balise <style> -->
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

        <title>Histoire Et Champions</title>

        <!--Icone Onglet + Lien vers fichier CSS-->

        <link rel="icon" href="favicon.ico" />
        <link rel="icon" type="image/png" href="raquette.png" />
        <meta charstet="utf-8" />
        <title>Le tennis de table</title>
        <link type="text/css" rel="stylesheet" href="SiteGeneral.css">
    </head>


    <body background="images/texte.jpg">
        <!---------ComboBox + incluse mise en forme du site----------> 
        <?php
        include 'miseenpage.php';
        ?>
      <form action="Classement.php" method="POST">
        <select name="listClassement">
          <option value="">TOUS PAYS</option>
          <option value="(CHN)">(CHN)</option>
          <option value="(JPN)">(JPN)</option>
          <option value="(BRE)">(BRE)</option>
          <option value="(TAI)">(TAI)</option>
          <option value="(SUE)">(SUE)</option>
          <option value="(ALL)">(ALL)</option>
          <option value="(COR)">(COR)</option>
          <option value="(HKG)">(HKG)</option>
          <option value="(NGR)">(NGR)</option>
          <option value="(FRA)">(FRA)</option>
          <option value="(BLR)">(BLR)</option>
          <option value="(ANG)">(ANG)</option>
          <option value="(POR)">(POR)</option>
          <option value="(E-U)">(E-U)</option>
          <option value="(DAN)">(DAN)</option>
          <option value="(EGY)">(EGY)</option>
          <option value="(IND)">(IND)</option>
          <option value="(AUT)">(AUT)</option>
          <option value="(CRO)">(CRO)</option>
          <option value="(SVK)">(SVK)</option>
          <option value="(SLO)">(SLO)</option>
          <option value="(RTC)">(RTC)</option>
          <option value="(BEL)">(BEL)</option>
          <option value="(GRE)">(GRE)</option>
          <option value="(ROU)">(ROU)</option>
        </select>
         <button class="RechercheComboBoxClassement" type="submit" value="Go" name="chercherClassement">
           Rechercher
        </button>
<!-------Lecture donnees de la base de donnee puis recuperation des donnees pour insertion dans le tableau de la page Actualite------->
        <?php
        $selectPAYS = "";
         if(isset($_POST['listClassement'])) { 
                $selectPAYS = $_POST['listClassement'];
                echo $selectPAYS; //Affiche la selection à droite de la combo box
         }
        //Tableau lecture donnees----------
        $db = new PDO('mysql:host=localhost;dbname=formulaire','root',''); //Connexion BDD
        if($selectPAYS != "") { 
            $reqperso = "SELECT * FROM Classement where Pays='".$selectPAYS."'";
        }
        else {
            $reqperso = "SELECT * FROM Classement";
        }
        $reponse = $db->query($reqperso); //Requete lecture 
         echo "<table border='1'>";
         echo "<thead class='ClassementEntete'><tr><th>Rang</th><th>Sportif</th><th>Pays</th><th>Points</th></tr></thead>";
         while ($donnees = $reponse->fetch())
         {
            echo "<tr><td>".$donnees['Rang']."</td><td>".$donnees['Sportif']."</td><td>".$donnees['Pays']."</td><td>".$donnees['Points']."</td></tr>";
         }
          echo "</table>";

          $reponse->closeCursor();
       ?>
            kl

</body>
</html>
