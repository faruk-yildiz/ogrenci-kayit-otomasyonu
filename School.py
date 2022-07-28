import re
import sqlite3
import mysql.connector

class School:
    def __init__(self):
        self.database=mysql.connector.connect(
            host="localhost",
            user="root",
            password="faruk1234",
            database="schooldb")
        self.cursor=self.database.cursor()
        self.sql=""
    def addStudent(self,tcKimlikNo,ad,soyad,bolum,cinsiyet,dogumTarihi): #CREATE
        self.sql="Insert into schooldb.Ogrenci(tcKimlikNo,ad,soyad,bolum,cinsiyet,dogumTarihi) values (%s,%s,%s,%s,%s,%s)"
        list=[tcKimlikNo,ad,soyad,bolum,cinsiyet,dogumTarihi]
        self.cursor.execute(self.sql,list)
        self.database.commit()
            
    def getStudent(self,tcKimlikNo): #READ
        self.sql=f"Select * from schooldb.Ogrenci where tcKimlikNo={tcKimlikNo}"
        self.cursor.execute(self.sql)
        return self.cursor.fetchone()

    def updateStudent(self,tcKimlikNo,ad,soyad,bolum,cinsiyet,dogumTarihi): #UPDATE
        self.sql="Update Ogrenci Set ad= %s , soyad= %s ,bolum= %s,cinsiyet= %s,dogumTarihi= %s where tcKimlikNo= %s"
        self.cursor.execute(self.sql,(ad,soyad,bolum,cinsiyet,dogumTarihi,tcKimlikNo))
        self.database.commit()
    def removeStudent(self,tcKimlikNo): #DELETE
        self.sql=f"Delete from schooldb.Ogrenci where tcKimlikNo={tcKimlikNo}"
        self.cursor.execute(self.sql)
        self.database.commit()
    def getDepartment(self):
        self.cursor.execute("SELECT BolumAdi FROM schooldb.Bolumler")
        result=self.cursor.fetchall()
        return result