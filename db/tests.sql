insert into personne (id_personne, nom, prenom, sexe) values (9,'Tartanpion', 'Toto', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (10,'Tartanpion', 'Tata', 'G');
insert into personne (id_personne, prenom, sexe) values (10,'Tata', 'M');

insert into client (id_personne, courriel, cle, password_hasher) values (4, 'mignault@gmail.com', 'f7af63f61ce44a27ba7d321348565e60', '3537be9c25818adcd334ff80f1f0887a79eb18094a21f10d5e75341b1bb7fdd9d09b9a68ae0b91f047e0f9bd4805fe4e35af360fa5b2ed9561158ac6c6adb95f');

insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (4, 1, '12345345678', 07, 21, '876');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (4, 1, '1234567812345678', 07, 21, '876');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (4, 1, '0000567812345678', 24, 21, '876');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (4, 1, '0000567812345678', 07, 45, '876');
insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (4, 1, '0000567812345678', 07, 21, '6');

insert into film (id_film, nom, duree_minute, description) values (1, 'Seigneur des Anneaux', 200, 'Il doit mener l''anneau.');
insert into film (id_film, nom, duree_minute, description) values (6, 'Seigneur des Anneaux', -5, 'Il doit mener l''anneau.');

insert into acteurs_film (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (9,'Gandalf','1999-11-01', '2003-01-07', 1000455);
insert into acteurs_film (id_acteur, nom_personnage, date_embauche, date_fin_embauche, cachet) values (10,'Gandalf','1999-11-01', '2003-01-07', -567);

insert into employe (id_personne, date_embauche, date_fin_emploi, code_utilisateur, cle, password_hasher, type_acces) values (10,'2007-01-07', '2020-01-01', 'sacha256255', '3ad1215862c3449989a58fc2b9629461', '3549f0e2722ed526a57c7f39cdf5801d6bb6a939308f89b267972aadd1fadc131d876634944c2ad76f95b4a0c55cf37e9e9e41791f6c4ef3e98e22e284825d57', 'R');
insert into employe (id_personne, date_embauche, date_fin_emploi, code_utilisateur, cle, password_hasher, type_acces) values (7,'2007-01-07', '2020-01-01', 'sacha256255', '3ad1215862c3449989a58fc2b9629461', '3549f0e2722ed526a57c7f39cdf5801d6bb6a939308f89b267972aadd1fadc131d876634944c2ad76f95b4a0c55cf37e9e9e41791f6c4ef3e98e22e284825d57', 'P');
