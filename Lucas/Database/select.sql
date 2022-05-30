-- Récupère une salle
SELECT * FROM Salle_De_Classe WHERE Nom = " "
-- Récupère les ordinateurs en fonction de l'id d'une salle
SELECT * FROM Ordinateur WHERE Id_classe in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");
-- Récupère les video projecteur en fonction de l'id d'une salle
SELECT * FROM video_Projecteur WHERE Id_video_Projecteur in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");
-- Récupère les imprimantes en fonction de l'id d'une salle
SELECT * FROM Imprimante WHERE Id_imprimante in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");
-- Récupère les souris en fonction de l'id d'une salle
SELECT * FROM souris WHERE id_souris in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");
-- Récupère les clavier en fonction de l'id d'une salle
SELECT * FROM clavier WHERE id_clavier in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");
-- Récupère les clavier en fonction de l'id d'une salle
SELECT * FROM ecrans WHERE id_ecrans in (SELECT ID_classe FROM Salle_de_Classe WHERE nom = "B101");