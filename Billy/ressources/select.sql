--Récupère les ordinateurs en fonction de l'id d'une salle
SELECT * FROM Ordinateur WHERE Id_Ordinateur IN (SELECT id_Ordinateur FROM équiper WHERE équiper.Id_salleAffectée = 1);
--Récupère les vidéo projecteur en fonction de l'ID d'un salle
SELECT * FROM videoProjecteur WHERE Id_videoProjecteur IN (SELECT id_videoProjecteur FROM équiper WHERE équiper.Id_salleAffectée = 1);
--Récupère les ordinateurs en fonction du nom de la salle
SELECT nomOrdinateur FROM Ordinateur WHERE Id_Ordinateur IN (SELECT id_salleAffectée FROM salleaffectée WHERE salleaffectée.nomSalle = 'Z203');	
--Récupère les VP en fonction du nom de la salle
SELECT * FROM videoProjecteur WHERE Id_videoProjecteur IN (SELECT id_salleAffectée FROM salleaffectée WHERE salleaffectée.nomSalle = 'Z203');
-- Récupère les phériphériques d'un ordinateur (chercher un moyen de compiler les resultat, script? trigger?)
SELECT * FROM Souris WHERE id_souris IN (SELECT Id_souris FROM ordinateur WHERE Id_Ordinateur = 1);
SELECT * FROM clavier WHERE id_clavier IN (SELECT id_clavier FROM ordinateur WHERE id_ordinateur = 1);

SELECT Souris.*, clavier.* from souris, clavier