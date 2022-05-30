-- Le fichier ou tu enregitrera tes requêtes SQL
--1 - écrire une requête qui renvoie la marque, le modèle et le numéro de série de tous les ordinateurs
Select marque, modele, numeroDeSerie from ordinateur;

--2 - écrire plusieurs requêtes qui renvoie le numéro de série et l'état des claviers, écrans souris
Select clavier.numeroDeSerie, etat from clavier;
Select Ecrans.numeroDeSerie, etat from Ecrans;
Select souris.numeroDeSerie, etat from souris;

Select clavier.numeroDeSerie as 'numeroDeSerie clavier', clavier.etat as 'etat clavier', Ecrans.numeroDeSerie as 'numeroDeSerie Ecrans', Ecrans.etat as 'etat Ecrans', souris.numeroDeSerie as 'numeroDeSerie souris', souris.etat as 'etat souris' from clavier, Ecrans, souris;

--3 - écrire une requête qui renvoie les numéros de séries des ordinateurs de la salle qui a pour id_class la valeur 1
Select numeroDeSerie from ordinateur where id_classe= 1;

--4 - écrire une requête qui renvoie les numéros de séries du vidéoprojeceur de la salle qui a pour nom B102
Select numeroDeSerie from video_Projecteur where id_classe in (select id_classe from Salle_de_Classe where Nom ="B102");

--5 - requete qui renvoie l'état de toute les souris en fonction d'un nom de classe et le numéro de série de l'ordi associé. (faire la même pour les écrans et clavier)
Select souris.etat as 'etat souris', ordinateur.numeroDeSerie as 'numeroDeSerie ordinateur', clavier.etat as 'etat clavier', Ecrans.etat as 'etat ecran' from souris, clavier, Ecrans, ordinateur where ordinateur.id_classe in (select id_classe from Salle_de_Classe where Nom ="B102");

--6 - requete qui renvoie tout les types de port des écrans en fonction du nom d'une salle
Select port1, port2, port3 from Ecrans, ordinateur where ordinateur.id_classe in (select id_classe from Salle_de_Classe where Nom ="B102");

--7 - requête qui renvoie tout les vidéo projecteur sans télécommande en fonction du nom de la classe.
Select telecommande from video_Projecteur where id_classe in (select id_classe from Salle_de_Classe where Nom ="B102");

--8 - 1 requete par table: insert d'un ordinateur, un clavier, une souris un écran
Insert into clavier (marque, numeroDeSerie, modele, etat) 
values ("Logitech", "JUFDE987BZE526", "920-008158", "Bonne Etat");

Insert into souris (marque, numeroDeSerie, modele, etat)
values ("Logitech", "EHFP846BFG235F", "910-001794", "Neuf");

Insert into Ecrans (marque, numeroDeSerie, modele, port1, port2, pouces, etat)
values ("Dell", "UH54T3HFUGZA5376", "SE2422HX", "VGA", "HDMI", "23.8", "Bonne Etat");

Insert into ordinateur (marque, numeroDeSerie, modele, ram, espaces_de_stockage, processeurs)
values ("Dell", "ZH8OKRG5326JJJL46", "OptiPlex 3010 SFF", "8Go DDR3", "240Go", "Intel Core i5 3.20GHz");
--9 - 1 requete qui associe les périphériques à un ordinateur.

Update ordinateur 
	set id_classe = 3,
	id_souris = 5,
	id_clavier = 5,
	id_Ecrans = 5
Where id= 5;