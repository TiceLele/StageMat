<?php
//fonction qui vérifie les données du tableau
//function classe($categorie,$nom){
    $classe = array(
        array(
            'categorie' => 'EX1',
            'nom' => '',
        ),
        array(
            'categorie' => '',
            'nom' => 'B101',
        ),
        array(
            'categorie' => '',
            'nom' => 'B102',
        ),
        array(
            'categorie' => '',
            'nom' => 'B103',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => 'EX2',
            'nom' => '',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
        array(
            'categorie' => '',
            'nom' => '-',
        ),
    );
    //procédure test pour création liste
    $form = '<form id="form_class" action="#">
    <label for="class">Choisissez une classe :</label>
    <div class="select_class">
    <select name="class" id ="class">
    <option value="" id="select_disabled", disabled selected>Choisissez la classe</option>';
    for ($i = 0; $i < (count($classe)); $i++){
        if ($classe[$i]["categorie"] == ''){
            if ($classe[$i]["nom"] !== ''){
                $form .= '<option value='.$classe[$i]["nom"].'>'.$classe[$i]["nom"].'</option>';
            }
        }elseif($classe[$i]["categorie"] !== ''){
            $form .= '<optgroup label='.$classe[$i]["categorie"].'>';
        }
    }
    $form .= "</div></select>";
    echo($form);

