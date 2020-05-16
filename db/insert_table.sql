insert into personne (id_personne, nom, prenom, sexe) values (1,'Mignault', 'Benoit', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (2,'Wilson', 'Frederic', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (3,'Dolbec', 'Marie', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (4,'Mireault', 'Philippe', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (5,'April', 'Pascale', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (6,'Lavoie', 'Pascale', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (7,'Maldonado', 'Sacha', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (8,'Hall', 'Carole-Anne', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (9,'Maheu', 'Denise', 'F');

insert into client (id_personne, courriel, cle, password_hasher) values (1, 'mignault@gmail.com', 'f7af63f61ce44a27ba7d321348565e60', '3537be9c25818adcd334ff80f1f0887a79eb18094a21f10d5e75341b1bb7fdd9d09b9a68ae0b91f047e0f9bd4805fe4e35af360fa5b2ed9561158ac6c6adb95f');
insert into client (id_personne, courriel, cle, password_hasher) values (2, 'wilson@gmail.com', '4fe41e0dcce04f42984c38b608dd0866', '8897719645c4e0ee58827f2d910480eb1fa8f427c99a9afb303a3e87bd9b8e2dc8f0096a9d859c91f742e8bd7537586243d614ef5493719c849576b480f027c3');
insert into client (id_personne, courriel, cle, password_hasher) values (3, 'dolbec@gmail.com', 'ebd2ba1c0ff24fb2b98736db8fe456e1', 'e2ccacf93ed3b0c6209608e029d90ae27276a3eaa913c7777d11b50303087a422498bb4068308fc250b24a99ecb9d8b61e3e38300d29f8b3748387250fac4ff5');

insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (1, 1, '1234567812345678', 07, 21, '876');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (2, 2, '1234987612345678', 10, 20, '999');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (3, 3, '1234567812341234', 02, 22, '765');

insert into film (id_film, nom, duree_minute, description) values (1, 'Seigneur des Anneaux', 200, 'Il doit mener l''anneau.');
insert into film (id_film, nom, duree_minute, description) values (2, 'Silence des Agneaux', 69, 'Il doit tripoter l''anneau.');
insert into film (id_film, nom, duree_minute, description) values (3, 'Mission Impossible III', 123, 'Il doit faire une mission.');
insert into film (id_film, nom, duree_minute, description) values (4, 'La Belle et la bête', 141, 'La bête doit conquérir la belle.');
insert into film (id_film, nom, duree_minute, description) values (5, 'Final Fantasy VII', 456, 'La fantasy numéro 7.');

insert into acteur (id_acteur, id_film, id_personne) values (1,1,4);
insert into acteur (id_acteur, id_film, id_personne) values (2,3,4);
insert into acteur (id_acteur, id_film, id_personne) values (3,5,4);
insert into acteur (id_acteur, id_film, id_personne) values (4,2,5);
insert into acteur (id_acteur, id_film, id_personne) values (5,1,5);
insert into acteur (id_acteur, id_film, id_personne) values (6,4,5);
insert into acteur (id_acteur, id_film, id_personne) values (7,3,6);
insert into acteur (id_acteur, id_film, id_personne) values (8,5,6);
insert into acteur (id_acteur, id_film, id_personne) values (9,1,6);

insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (1,'Gandalf','1999-11-01', '2003-01-07', 1000455);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (2,'Jack','1995-11-01', '2001-01-07', 4874746);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (3,'Cloud','1991-11-01', '2020-04-01', 34567);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (4,'Ronald','1967-11-01', '1969-01-07', 139675);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (5,'Bilbon','1999-12-01', '2002-01-07', 999879);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (6,'Bella','1989-11-01', '1992-01-07', 234974);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (7,'Reno','1996-03-14', '1998-02-09', 2089573);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (8,'Barrett','1991-11-01', '2001-01-07', 2347555);
insert into description_acteur (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (9,'Gimli','2000-02-01', '2003-01-07', 686767);

insert into categorie (nom, description) values ('Science Fiction', 'Des chose qui n''arrivera pas dans un avenir proche');
insert into categorie (nom, description) values ('Film d''action', 'Un film rempli d''action avec des scènes de toutes sortes');
insert into categorie (nom, description) values ('Film fantastique', 'Quelque chose qui n''est pas possible ou qui se passe dans un monde parallèle');
insert into categorie (nom, description) values ('Film d''horreur', 'On risque d''en faire des cauchemars la nuit suivi du film');
insert into categorie (nom, description) values ('Comédie musicale', 'Il y a plus de chanteurs que d''acteurs et ils chantent tout le film ou presque');
insert into categorie (nom, description) values ('Comédie romantique', 'Il y a de l''amour dans l''air');
insert into categorie (nom, description) values ('Western', 'Il y a beaucoup de cowboy et d''indiens');

insert into film_categorise (id_film, nom) values (1, 'Film fantastique');
insert into film_categorise (id_film, nom) values (1, 'Science Fiction');
insert into film_categorise (id_film, nom) values (2, 'Film d''horreur');
insert into film_categorise (id_film, nom) values (2, 'Film d''action');
insert into film_categorise (id_film, nom) values (3, 'Film d''action');
insert into film_categorise (id_film, nom) values (4, 'Comédie musicale');
insert into film_categorise (id_film, nom) values (4, 'Comédie romantique');
insert into film_categorise (id_film, nom) values (5, 'Film fantastique');
insert into film_categorise (id_film, nom) values (5, 'Film d''action');

insert into employe (id_personne, date_embauche, date_fin_emploi, code_utilisateur, cle, password_hasher, type_acces) values (7,'2007-01-07', '2020-01-01', 'sacha256255', '3ad1215862c3449989a58fc2b9629461', '3549f0e2722ed526a57c7f39cdf5801d6bb6a939308f89b267972aadd1fadc131d876634944c2ad76f95b4a0c55cf37e9e9e41791f6c4ef3e98e22e284825d57', 'R');
insert into employe (id_personne, date_embauche, date_fin_emploi, code_utilisateur, cle, password_hasher, type_acces) values (8,'2017-11-23', null, 'hall256255', '3ad1215862c3449989a58fc2b9629461', '20f7da7ea80d43491dab38a9f60f9085b07cd4f6bfbc52cf3665056622d12d2249d36e1b4e403faa5233ef2459de0ea131e432a23f620324b0293cc5dba0b6d3', 'W');
insert into employe (id_personne, date_embauche, date_fin_emploi, code_utilisateur, cle, password_hasher, type_acces) values (9,'2004-04-14', null, 'denise256255', '1d6c7a3474ec405a98bf3c460fc37ccb', 'cf0db385204e64ca84de591a41b9af46cb90c883e2fa704c8a54b0a63d74862d8fdfec5d58f617b970d15817b6057f95ebcbeded25175f3ba8aac8d211b9b600', 'R');




