insert into personne (id_personne, nom, prenom, sexe) values (1,'Mignault', 'Benoit', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (2,'Wilson', 'Frederic', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (3,'Dolbec', 'Marie', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (4,'Mireault', 'Philippe', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (5,'April', 'Pascale', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (6,'Lavoie', 'Pascale', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (7,'Maldonado', 'Sacha', 'M');
insert into personne (id_personne, nom, prenom, sexe) values (8,'Hall', 'Carole-Anne', 'F');
insert into personne (id_personne, nom, prenom, sexe) values (9,'Maheu', 'Denise', 'F');

insert into client (id_personne, courriel, salt, password_hasher) values (1, 'Mignault@gmail.com', 'f7af63f61ce44a27ba7d321348565e60', '3537be9c25818adcd334ff80f1f0887a79eb18094a21f10d5e75341b1bb7fdd9d09b9a68ae0b91f047e0f9bd4805fe4e35af360fa5b2ed9561158ac6c6adb95f');

insert into client (id_personne, courriel, salt, password_hasher) values (2, 'Wilson@gmail.com', '4fe41e0dcce04f42984c38b608dd0866', '8897719645c4e0ee58827f2d910480eb1fa8f427c99a9afb303a3e87bd9b8e2dc8f0096a9d859c91f742e8bd7537586243d614ef5493719c849576b480f027c3');

insert into client (id_personne, courriel, salt, password_hasher) values (3, 'Dolbec@gmail.com', 'ebd2ba1c0ff24fb2b98736db8fe456e1', 'e2ccacf93ed3b0c6209608e029d90ae27276a3eaa913c7777d11b50303087a422498bb4068308fc250b24a99ecb9d8b61e3e38300d29f8b3748387250fac4ff5');

insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (1, 1, 1234567812345678, 07, 21, 876);

insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (2, 2, 1234987612345678, 10, 20, 999);

insert into carte_credit (id_carte, id_personne, numero_carte, mois_expiration, annee_expiration, code_cvn) values (3, 3, 1234567812341234, 02, 22, 765);



