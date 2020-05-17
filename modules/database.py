import sqlite3
from .mes_classes import Personne


class Database:
    def __init__(self):
        self.connection = None
    
    def get_connection(self):
        if self.connection is None:
            self.connection = sqlite3.connect('db/gestion_film.db')
        
        return self.connection
    
    def disconnect(self):
        if self.connection is not None:
            self.connection.close()
    
    def insertion_personne(self, une_personne):
        connection = self.get_connection()
        connection.execute("insert into personne(nom, prenom, sexe) "
                           "values(?, ?, ?)",
                           (une_personne.nom, une_personne.prenom,
                            une_personne.sexe))
        connection.commit()
        
        cursor = connection.cursor()
        cursor.execute("select last_insert_rowid()")
        result = cursor.fetchall()
        une_personne.id = result[0][0]
        return une_personne
