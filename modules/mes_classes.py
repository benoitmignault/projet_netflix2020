class Personne(object):
    def __init__(self, id, nom, prenom, sexe):
        self.id = id
        self.nom = nom
        self.prenom = prenom
        self.sexe = sexe


class Client(Personne):
    def __init__(self, nom, prenom, sexe, courriel, cle, password_hasher):
        super(Client, self).__init__(id, nom, prenom, sexe)
        self.courriel = courriel
        self.cle = cle
        self.password_hasher = password_hasher


class Acteur(Personne):
    def __init__(self, nom, prenom, sexe, id_film):
        super(Acteur, self).__init__(id, nom, prenom, sexe)
        self.id_film = id_film


class Employe(Personne):
    def __init__(self, nom, prenom, sexe, date_embauche, date_fin_emploi,
                 code_utilisateur, cle, password_hasher, type_acces):
        super(Employe, self).__init__(id, nom, prenom, sexe)
        self.date_embauche = date_embauche
        self.date_fin_emploi = date_fin_emploi
        self.code_utilisateur = code_utilisateur
        self.cle = cle
        self.password_hasher = password_hasher
        self.type_acces = type_acces


class DescriptionActeur(object):
    def __init__(self, id_acteur, nom_personnage, date_embauche,
                 date_fin_embauche, cachet):
        self.id_acteur = id_acteur
        self.nom_personnage = nom_personnage
        self.date_embauche = date_embauche
        self.date_fin_embauche = date_fin_embauche
        self.cachet = cachet
        
        
class CarteCredit(object):
    def __init__(self, id_personne, numero_carte, mois_expiration,
                 annee_expiration, code_cvn):
        self.id_personne = id_personne
        self.numero_carte = numero_carte
        self.mois_expiration = mois_expiration
        self.annee_expiration = annee_expiration
        self.code_cvn = code_cvn


class Film(object):
    def __init__(self, id_film, nom, duree_minute, description):
        self.id_film = id_film
        self.nom = nom
        self.duree_minute = duree_minute
        self.description = description


class Categorie(object):
    def __init__(self, nom, description):
        self.nom = nom
        self.description = description
