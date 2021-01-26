from .database import Database
from .mes_classes import *
import PySimpleGUI as sg
import re
import hashlib
import uuid

PATTERN_PASSWORD = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*()?&])" \
                   "[A-Za-z\\d@()$!%*?&]{8,20}$"


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


def interface_page_login():
    sg.theme('Dark')  # Add a touch of color
    # All the stuff inside your window.
    layout = [[sg.Text('Veuiller saisir vos informations !')],
              [sg.Text()],
              [sg.Text('Code Employer :')], [sg.InputText(key='username')],
              [sg.Text('Password :')], [sg.InputText(key='password')],
              [sg.Button('Se Connecter...'), sg.Button('Quitter...')]]

    # Create the Window
    fenetre_login = sg.Window('Gestion Portail Netflix', layout)
    liste_champs = initial_champs_connexion()
    liste_validation = initial_champ_connexion_validation()
    # Event Loop to process "events" and get the "values" of the inputs
    while True:
        event, values = fenetre_login.read()
        if event == sg.WIN_CLOSED or event == 'Quitter...':  # if user closes window or clicks cancel
            break
        else:
            liste_champs = remplissage_champ_connexion(values, liste_champs)

        print(liste_champs)

    fenetre_login.close()


def initial_champs_connexion():
    liste_champs = {"username": "", "password": "", "salt": "", "hash": "",
                    "password_hasher": ""}

    return liste_champs


def initial_champ_connexion_validation():
    liste_validation = {"situation_erreur": False,
                        "champ_username_vide": False,
                        "champ_password_vide": False,
                        "champ_username_inv": False,
                        "champ_password_inv": False,
                        "champ_username_non_trouve": False,
                        "champ_password_non_trouve": False,
                        "longueur_username_inv": False,
                        "longueur_password_inv": False}

    return liste_validation


def remplissage_champ_connexion(values, liste_champs):
    liste_champs['username'] = values['username']
    liste_champs['password'] = values['password']

    return liste_champs


def validation_courriel_connexion(liste_champs, liste_validation):
    if liste_champs['username'] == "":
        liste_validation['champ_username_vide'] = True
    else:
        # Créer un patterne pour avoir des chiffres et des lettres seulement

        if len(liste_champs['username']) > 50:
            liste_validation['longueur_username_inv'] = True

    return liste_validation


def validation_password_connexion(liste_champs, liste_validation):
    if liste_champs['password'] == "":
        liste_validation['champ_password_vide'] = True
    else:
        match_password = re.compile(PATTERN_PASSWORD).match
        if match_password(liste_champs['password']) is None:
            liste_validation['champ_password_inv'] = True

        if not (7 < len(liste_champs['password']) < 21):
            liste_validation['longueur_password_inv'] = True

        if not liste_champs['password_hasher'] == liste_champs['hash']:
            liste_validation['champ_password_non_trouve'] = True

    return liste_validation