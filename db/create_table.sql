create TABLE personne (
	id_personne	integer PRIMARY KEY AUTOINCREMENT,
	nom	varchar(50) NOT NULL,
	prenom varchar(50) NOT NULL,
	sexe varchar(1) NOT NULL check (sexe in ('M','F'))
);

create TABLE client (
	id_personne	integer,
	courriel varchar(50) NOT NULL UNIQUE,
	cle varchar(32) NOT NULL,
	password_hasher varchar(128) NOT NULL,
	FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
	PRIMARY KEY(id_personne)
);

create TABLE carte_credit (
    id_carte integer PRIMARY KEY AUTOINCREMENT,
    id_personne integer,
    numero_carte number(16, 0) unique not null,
    mois_expiration integer check (mois_expiration between 1 and 12),
    annee_expiration integer check (annee_expiration between 20 and 23),
    code_cvn number(3, 0) not null,
    FOREIGN KEY(id_personne) REFERENCES client(id_personne)
);

create TABLE film (
    id_film integer PRIMARY KEY AUTOINCREMENT,
    nom varchar(50) NOT NULL,
    duree_minute integer default 0 check (duree_minute >= 0),
    description varchar(255) NOT NULL
);

create TABLE acteur (
    id_acteur integer PRIMARY KEY AUTOINCREMENT,
    id_film integer,
    id_personne integer,
    FOREIGN KEY(id_film) REFERENCES film(id_film),
    FOREIGN KEY(id_personne) REFERENCES personne(id_personne)
    unique(id_film, id_personne)
);

create TABLE acteurs_film (
    id_acteur integer PRIMARY KEY,
    nom_personnage varchar(50) not null,
    date_embauche varchar(10) not null,
    date_fin_embauche varchar(10) not null,
    cachet integer default 0 check (cachet >= 0),
    FOREIGN KEY(id_acteur) REFERENCES acteur(id_acteur)
);

create table categorie (
    nom varchar(50) PRIMARY KEY,
    description varchar(255) not null
);

create table film_categorise (
    id_film integer,
    nom varchar(50),
    FOREIGN KEY(id_film) REFERENCES film(id_film),
    FOREIGN KEY(nom) REFERENCES categorie(nom),
    PRIMARY KEY(id_film, nom)
);

create table employe (
    id_personne	integer,
    date_embauche varchar(10) not null,
    date_fin_emploi varchar(10),
    code_utilisateur varchar(25) unique not null,
    cle varchar(32) NOT NULL,
	password_hasher varchar(128) NOT NULL,
	type_acces varchar(1) NOT NULL check (type_acces in ('R','W')),
	FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
	PRIMARY KEY(id_personne)
);