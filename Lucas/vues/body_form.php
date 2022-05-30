    <body>
        <script type="text/javascript" src="../Script/jquery-3.6.0.min.js"></script>
        <!--On crée l'entête avec son titre ("title") et son sous titre ("subtitle")-->
        <div id="div_form_class">
            <p id="title">Parc Informatique</p>
            <p id="line">–––––––––––––––––––––––––––––</p>
            <p id="subtitle">Recherche</p>
        </div>
        <br>
        <!--On crée la section du formulaire-->
        <section id="Container_form_class">
            <div id="Incontainer_center_form">
                <div id="form_in">
                    <!--On crée le formulaires contenent la liste déroulante avec toute les classes-->
                    <?php
                        include('Testouillage/test.php');
                    ?>
                    </div>
                    <a id="togg1">Plus de critère</a>
                    <div id="d1">
                        <fieldset id="field">
                            <script type="text/javascript" src="../Script/hiddencrit.js"></script>
                            <legend id="prelist_matos">Liste du matérielle :</legend>
                            <div id="checkbox_box">
                                <div>
                                    <input type="checkbox" id="video_projecteur" name="video_projecteur">
                                    <label for="video_projecteur">Vidéo projecteur</label>
                                </div>
                                <div>
                                    <input type="checkbox" id="ordinateur" name="ordinateur">
                                    <label for="ordinateur">Ordinateur</label>
                                </div>
                                <div>
                                    <input type="checkbox" id="ecran" name="ecran">
                                    <label for="ecran">Écrans</label>
                                </div> 
                                <div>
                                    <input type="checkbox" id="clavier" name="clavier">
                                    <label for="clavier">Clavier</label>
                                </div> 
                                <div>
                                    <input type="checkbox" id="souris" name="souris">
                                    <label for="souris">Souris</label>
                                </div> 
                                <div>
                                    <a id="submit_select">Chercher !</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
            </div>
        </section>
    </body>