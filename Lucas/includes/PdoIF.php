<?php
/** 
 * Classe d'accès au données.
 
 * Utilise les services de la classe PDO
 * pour le parc informatique
 * Tout les attributs sont statiques,
 * les 4 premiers sont pour la connexion
 * $monPdoIF de type PDO
 * $monPdoIFIF
 
 * @package default
 * @author LXM
 * @version 1.0
 * @link http://www.php.net/manual/fr/book.pdo.php
 */

class PdoIF{
        private static $serveur='mysql:host=localhost';
        private static $bdd='dbname=inventaire';
        private static $user='root';   
        private static $mdp=''; 
        private static $monPdo;
        private static $monPdoIF=null;

/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */
    private function __construct(){
        PdoIF::$monPdo = new PDO(PdoIF::$serveur.';'.PdoIF::$bdd, PdoIF::$user, PdoIF::$mdp);
        PdoIF::$monPdo->query("SET CHARACTER SET UTF8");
        var_dump(PdoIF::$monPdo); 
    }
    public function _destruct(){
        PdoIF::$monPdo = null;
    }    
    
/**
 * Fonction Statique qui crée l'unique instance de la classe
 
 * Appel : $instancePdoIF = PdoIF::getPdoIF();
 
 * @return l'unique objet de la classe PdoIF
 */
    public static function getPdoIF(){
        if(PdoIF::$monPdoIF==null){
            PdoIF::$monPdoIF= new PdoIF();
        }
        return PdoIF::$monPdoIF;
    }
	//Récupérer les classes
    public function selectSalle($NOM){
        $req = "SELECT * from Salle_De_Classe WHERE nom=\"".$NOM."\"";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des ordinateurs
    public function selectOrdi($NOM){
        $req = "SELECT * FROM Ordinateur WHERE Id_classe in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des videos projecteurs
    public function selectVP($NOM){
        $req = "SELECT * FROM video_Projecteur WHERE id_video_projecteur in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des imprimantes
    public function selectImpri($NOM){
        $req = "SELECT * FROM imprimante WHERE id_imprimante in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des souris
    public function selectSouris($NOM){
        $req = "SELECT * FROM souris WHERE id_souris in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des claviers
    public function selectClavier($NOM){
        $req = "SELECT * FROM clavier WHERE id_clavier in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Récupérer des écrans
    public function selectEcrans($NOM){
        $req = "SELECT * FROM ecrans WHERE id_ecrans in (SELECT ID_classe FROM Salle_de_Classe WHERE nom=\"".$NOM."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;    
    }
    //Ecrire la fonction selectBasicInfo(nomClasse). Sortira NB pc, NB clavier NB souris, modèle VP. Retourne un tableau
    //avec les infos trier pour que l'UIX weeb designer pour qu'il puisse les caster dans son template.
    public function selectAllInfo($nomClasse){
        $req = array(
            "SELECT COUNT(*) AS nbOrdi FROM ORDINATEUR WHERE id_classe IN (SELECT id_classe FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")",
            "SELECT COUNT(*) AS nbSouris FROM ordinateur WHERE Id_ordinateur IN (SELECT Id_ordinateur FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")",
            "SELECT COUNT(*) AS nbClavier FROM ordinateur WHERE Id_ordinateur IN (SELECT Id_ordinateur FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")",
            "SELECT COUNT(*) AS nbVP FROM video_Projecteur WHERE id_classe IN (SELECT id_classe FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")"
        );
        $response = array();
        for ($i = 0; $i <= 3; $i++){
            /*poue chaque requete de $req, soumets la requete à la BDD et renvoie un objet res*/
            $res= PdoIF::$monPdo -> query($req[$i]);

            //converti les lignes de l'objet $res;
        $ligne = $res->fetchall();
            echo($ligne[0][0]);
        //array_push($response, $ligne[0][0]);
        $catégorie = array("nbOrdi","nbSouris","nbClavier","nbVP");
        $response[$catégorie[$i]] = $ligne[0][0];
        var_dump($response);
            //ranger $ligne dans une entrée de response[$i]; 

        }
        //$rs = PdoIF::$monPdo->query($req);
        //$rs = PdoIF::$monPdo->query($req1);
        //$rs = PdoIF::$monPdo->query($req2);
        //$rs = PdoIF::$monPdo->query($req3);

        return $response;
    }
    
    
    
    public function selectBasicInfoOrdi($nomClasse){
        $req = "SELECT COUNT(*) AS nbOrdi FROM ORDINATEUR WHERE Id_ordinateur IN (SELECT Id_ordinateur FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;
    }
    public function selectBasicInfoSouris($nomClasse){
        $req = "SELECT COUNT(*) AS nbSouris FROM SOURIS WHERE Id_Souris IN (SELECT Id_Souris FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;
    }
    public function selectBasicInfoClavier($nomClasse){
        $req = "SELECT COUNT(*) AS nbClavier FROM CLAVIER WHERE Id_Clavier IN (SELECT Id_clavier FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;
    }
    public function selectBasicInfoVP($nomClasse){
        $req = "SELECT COUNT(*) AS nbVP FROM video_Projecteur WHERE Id_video_projecteur IN (SELECT Id_video_projecteur FROM salle_de_classe WHERE NOM =\"".$nomClasse."\")";
        $rs = PdoIF::$monPdo->query($req);
        $ligne = $rs->fetchall();
        return $ligne;
    }
}
?>