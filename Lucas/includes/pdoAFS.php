<?php
/** 
 * Classe d'accès aux données. 
 
 * Utilise les services de la classe PDO
 * pour l'application Afs
 * Les attributs sont tous statiques,
 * les 4 premiers pour la connexion
 * $monPdo de type PDO 
 * $monPdoAfs qui contiendra l'unique instance de la classe
 
 * @package default
 * @author Cheri Bibi
 * @version 1.0
 * @link http://www.php.net/manual/fr/book.pdo.php
 */

class PdoAfs{   		
      	private static $serveur='mysql:host=localhost';
      	private static $bdd='dbname=inventaire';   		
      	private static $user='root' ;    		
      	private static $mdp='' ;	
		private static $monPdo=null;
		private static $monPdoAfs=null;
		
/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */				
	private function __construct(){
    	PdoAfs::$monPdo = new PDO(PdoAfs::$serveur.';'.PdoAfs::$bdd, PdoAfs::$user, PdoAfs::$mdp); 
		PdoAfs::$monPdo->query("SET CHARACTER SET UTF8");
	}
	public function _destruct(){
		PdoAfs::$monPdo = null;
	}
/**
 * Fonction statique qui crée l'unique instance de la classe
 
 * Appel : $instancePdoAfs = PdoAfs::getPdoAfs();
 
 * @return l'unique objet de la classe PdoAfs
 */
	public static function getPdoAfs(){
		if(PdoAfs::$monPdo==null){
			PdoAfs::$monPdo= new PdoAfs();
		}
		return PdoAfs::$monPdo;  
	}
	public function Test(){
		//echo("samarche");
		$req="select * from Salle_de_Classe";
		$rs = PdoAfs::$monPdo->query($req);
		return $rs;
	}
	public function SelectAllQuestion(){
		$req = "select * from question";
		$rs = PdoAfs::$monPdo->query($req);
		$ligne = $rs->fetchall();
		return $ligne;
	}
	//Récupérer l'adresse de l'image
	public function SelectImagePath($ID){
		$req = "select imagePath from question where id =".$ID;
		$rs = PdoAfs::$monPdo->query($req);
		$ligne = $rs->fetchall();
		return $ligne;
	}
	//Récupérer la question
	public function SelectQuestion($ID){
	$req = "select intitulé from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer la réponse 1
	public function SelectReponse1($ID){
	$req = "select choixDeReponse1 from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer la réponse 2
	public function SelectReponse2($ID){
	$req = "select choixDeReponse2 from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer la réponse 3
	public function SelectReponse3($ID){
	$req = "select choixDeReponse3 from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer la réponse 4
	public function SelectReponse4($ID){
	$req = "select choixDeReponse4 from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer la bonne réponse
	public function SelectBonneReponse($ID){
	$req = "select bonneReponse from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//Récupérer le commentaire
	public function SelectCommentaire($ID){
	$req = "select commentaire from question where id =".$ID;
	$rs = PdoAfs::$monPdo->query($req);
	$ligne = $rs->fetchall();
	return $ligne;
	}
	//LES FONCTIONS QUI SUIVENT SERVENT UNIQUEMENT A TESTPDO/index.php POUR ETUDE
	public function exempletest(){
		//on écrit la requête
		$req = "select * from question";
		//on prépare la requête en "l'injectant" dans le pdo et on met tout ça dans la varialbe $rs
		$rs = PdoAfs::$monPdo->query($req);
		//On envoie la requête et on mets le résultat dans $ligne
		$ligne = $rs->fetchall();
		//On renvoie le resultat à l'endroit ou la fonction a été appelé.
		return $ligne;
	}

	public function getQuestCount($max){
		$req = "SELECT COUNT(*) from question";
		$rs= PdoAfs::$monPdo->query($req);
		$ligne = $rs->fetchall();
		if($max == 0 or $max > $ligne[0][0]){
			$ret = false;
		}else{
			$ret = true;	
		}
		return $ret;
	}
	public function SelectSalle(){
        $req = "select * from Salle_De_Classe";
        $rs = PdoAFS::$monPdo->query($req);
        $ligne = $rs->fetchall();
        var_dump($ligne);
        return $ligne;    
    }
}
?>