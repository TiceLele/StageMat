<?php
require_once("../includes/PdoIF.php");

$monPDOIF = PdoIF::getPdoIF();
$nom = "B101";
$monPDOIF->selectAllInfo($nom);

/*

$res = $monPDOIF->selectSalle($nom);
$res2 = $monPDOIF->selectOrdi($nom);
$res3 = $monPDOIF->selectVP($nom);
$res4 = $monPDOIF->selectImpri($nom);
$res5 = $monPDOIF->selectSouris($nom);
$res6 = $monPDOIF->selectClavier($nom);
$res7 = $monPDOIF->selectEcrans($nom);
var_dump($res,$res2,$res3,$res4,$res5,$res6,$res7);*/
$tab1 = array(1,2,3,4,5,6,7,8,9,10);
$tab2 = array(10,9,8,7,6,5,4,3,2,1);
$tab3 = array();
//  écrire une boucle qui affiche chaque entrée de $tab1 une entrée par ligne
/*for ($i = 0 ; $i < 10 ; $i++){

    echo ('<b>'.$i.'</b>');
    echo ($tab1[$i]);
    echo('<br/>');
}*/
//écrire une boucle qui affiche l'opération et le résultat du produit d'une entrée de $tab1 avec la même de $tab2
/*for ($i = 0 ; $i < 10 ; $i++){
    $res = ($tab1[$i]*$tab2[$i]);
    echo ('<b>'.$i.'. </b>');
    echo($tab1[$i]."*".$tab2[$i]."=".$res);
    echo('<br/>');
}*/
//écrire une boucle semblable à la précedente mais le résultat du produit est à ranger dans $tab3 
/*for ($i = 0 ; $i < 10 ; $i++){
    //print_r($tab3);
    $res = ($tab1[$i]*$tab2[$i]);
    echo ('<b>'.$i.'. </b>');
    echo($tab1[$i]."*".$tab2[$i]."=".$res);
    echo('<br/>');
    $tab3[$i] = $res;
    //array_push($tab3, $res);
  */
?>


