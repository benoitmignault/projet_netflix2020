from modules.fonction import *
import tkinter as tk


def clicked():
    titre2 = tk.Label(fprincipale, text="Vous etes connecté !", fg="red")
    titre2.grid(column=0, row=3)


fprincipale = tk.Tk()
fprincipale.geometry('400x300')
fprincipale.title("Bienvenue au futur Netflix")

titre1 = tk.Label(fprincipale, text="Vous avez deux choix d'action. Créer un compte ou se connecter !")
titre1.grid(column=0, row=0)

btn_signUp = tk.Button(fprincipale, text="Création Compte", fg="darkblue", command=clicked)
btn_signUp.grid(column=0, row=1)

btn_signIn = tk.Button(fprincipale, text="Se Connecter", fg="darkblue")
btn_signIn.grid(column=0, row=2)

# fg -> la couleur du texte
# bg -> la couleur en arrière plan

fprincipale.mainloop()  # Permet d'afficher la page

# une_personne = creation_personne("Thibault", "Anita", "M")
# print(une_personne.prenom)
# print(une_personne.nom)
# print(une_personne.sexe)
# print(une_personne.id)
