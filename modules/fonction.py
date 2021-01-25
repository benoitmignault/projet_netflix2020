from .database import Database
from .mes_classes import *
import tkinter as tk
import PySimpleGUI as sg

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


def creation_interface_base_tkinter():
    def clicked():
        win_creat_compte = tk.Tk()
        win_creat_compte.geometry('250x150')
        win_creat_compte.title("Création de compte Netflix")
        lbl_username = tk.Label(win_creat_compte, text="Nom d'utilisateur :")
        lbl_username.grid(column=0, row=0)
        txt_username = tk.Entry(win_creat_compte, width=25)
        txt_username.grid(column=0, row=1)
        txt_username.focus()
        lbl_password = tk.Label(win_creat_compte, text="Mot de passe :")
        lbl_password.grid(column=0, row=3)
        txt_password = tk.Entry(win_creat_compte, width=25)
        txt_password.grid(column=0, row=4)
        btn_creat = tk.Button(win_creat_compte, text="Création Compte")
        btn_creat.grid(column=0, row=6)
        win_home.destroy()  # On vient fermer la fenêtre de présentation
        win_creat_compte.mainloop()  # oouvre la page de création de compte

    win_home = tk.Tk()
    win_home.geometry('500x100')
    win_home.title("Bienvenue au futur Netflix")

    titre1 = tk.Label(win_home, text="Vous avez deux choix d'action. Créer un compte ou se connecter !")
    titre1.grid(column=0, row=0)

    btn_signUp = tk.Button(win_home, text="Création Compte", fg="darkblue", command=clicked)
    btn_signUp.grid(column=0, row=1)

    btn_signIn = tk.Button(win_home, text="Se Connecter", fg="darkblue")
    btn_signIn.grid(column=0, row=2)

    # fg -> la couleur du texte
    # bg -> la couleur en arrière plan

    win_home.mainloop()  # Permet d'afficher la page


def creation_interface_base_pysimpleGUI():
    layout = [[sg.Text('My one-shot window.')],
                     [sg.InputText(key='-IN-')],
                     [sg.Submit(), sg.Cancel()]]

    window = sg.Window('Window Title', layout)

    event, values = window.read()
    window.close()

    text_input = values['-IN-']
    sg.popup('You entered', text_input)


