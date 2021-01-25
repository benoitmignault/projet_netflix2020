from .database import Database
from .mes_classes import *


def ouverture_database():
    connection = Database()
    connection.get_connection()
    
    return connection


def creation_personne(nom, prenom, sexe):
    connection = ouverture_database()
    une_personne = Personne(None, nom, prenom, sexe)
    une_personne = connection.insertion_personne(une_personne)
    connection.disconnect()
    
    return une_personne



