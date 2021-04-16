<?php

//session_start();

//**verif si formlulaire bien rempli
//if (isset($_POST['connect']))
if(isset($_POST['connectUsername']) && isset($_POST['connectPassword']))
{
	//**connection BDD
	$db = new PDO('mysql:host=localhost;dbname=formulaire','root','');
    
	$Username = $_POST['connectUsername'];
	$Password = $_POST['connectPassword'];
    //**verifier si le user et password existent
	$sql = ("SELECT * FROM membres where Username  = '$Username' and Password = '$Password' ");	       
	$result = $db->prepare($sql);
	$result->execute();
	//** si la ligne a ete trouvee dans la base
	if($result->rowCount() > 0)
	{
         $data = $result->fetchAll();
         session_start(); //**on demarre la session ici !
         $_SESSION['pseudo'] = $Username; // on sauvegarde en session le username
         header('Location: index.php'); //puis on va sur accueil
	}
	//** pas de ligne trouve, donc user et passwd inconnus = retour formulaire
	else
	{
		header('location: Connexion.php');

	}
}

?>
