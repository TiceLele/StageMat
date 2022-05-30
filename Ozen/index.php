<html>
	<head>
		<title>parcInformatique</title>
	</head>
	<body>
		<h1>parcInformatique</h1>
			<br />

		<p>Bienvenu dans la base de donnés de notre parcInformatique. 
			<br> 
		Sur cette page vous pouvez renseigner toutes les donnés nécessaire au renouvellement de phériphérique (Souris, Clavier, Ecran et Ordinateur). 
		</p>
			<br />
		<div>

			<p>Commencer par choisir le types de peripheriques.</p>

			<form action="resultat.php" method="post">
				<label for="types">Choisir le périphériques:</label>
					<select name="types" id="types">
						<option value="clavier">clavier</option>
						<option value="souris">souris</option>
						<option value="ecran">ecran</option>
						<option value="ordinateur">ordinateur</option>
						<option value="salle de classe">salle de classe</option>
						<option value="video projecteur">video projecteur</option>
						<option value="imprimante">imprimante</option>
			</select><br>
				<label for="Nom de la marque">marque</label>
					<input type="text" id="marque" name="marque" placeholder="marque"><br>
				<label for="numeroDeSerie du pheripherique">numeroDeSerie</label>
					<input type="text" id="nmd" name="nmd" placeholder="numeroDeSerie"><br>
				<label for="modele du pheripherique">modele</label>
					<input type="text" id="modele" name="modele" placeholder="modele"><br>
			</select>
					<input type="submit" value="Validation">
			</form>
		</div>

		<br />
		<br />

	</body>
</head>