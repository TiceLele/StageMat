<?php
echo("le formulaire submit bien <br/>");
echo("cette ligne devrait être en dessous et séparée par un espace");

var_dump($_POST);
echo("resultat: ");
echo("<br/>Le types de périphérique est: ");
echo($_POST['types']);

echo("<br/>La marque est: ");
echo($_POST['marque']);

echo("<br/>Le numéro de série est: ");
echo($_POST['nmd']);

echo("<br/>Le modele est: ");
echo($_POST['modele']);

?>