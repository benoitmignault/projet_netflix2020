from modules.fonction import *
import tkinter as tk

une_personne = creation_personne("Thibault", "Anita", "M")

print(une_personne.prenom)
print(une_personne.nom)
print(une_personne.sexe)
print(une_personne.id)

root = tk.Tk()

w = tk.Label(root, text="Hello Tkinter!")
w.pack()

root.mainloop()
