from PyQt5.QtCore import QDate
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication,QMainWindow,QMessageBox,QTableWidgetItem,QTableWidget,QDateEdit
import sys
from School import School
import mysql.connector


class Ui_MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.school=School()
        self.list=[]
        self.dialogBox=QMessageBox()
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(791, 584)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.tabWidget = QtWidgets.QTabWidget(self.centralwidget)
        self.tabWidget.setEnabled(True)
        self.tabWidget.setGeometry(QtCore.QRect(10, 10, 761, 551))
        self.tabWidget.setAccessibleName("")
        self.tabWidget.setObjectName("tabWidget")
        self.tab = QtWidgets.QWidget()
        self.tab.setObjectName("tab")
        self.verticalLayoutWidget_2 = QtWidgets.QWidget(self.tab)
        self.verticalLayoutWidget_2.setGeometry(QtCore.QRect(370, 30, 171, 321))
        self.verticalLayoutWidget_2.setObjectName("verticalLayoutWidget_2")
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(self.verticalLayoutWidget_2)
        self.verticalLayout_2.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_2.setSpacing(20)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.tcKimlikNo = QtWidgets.QLineEdit(self.verticalLayoutWidget_2)
        self.tcKimlikNo.setObjectName("tcKimlikNo")
        self.verticalLayout_2.addWidget(self.tcKimlikNo)
        self.ad = QtWidgets.QLineEdit(self.verticalLayoutWidget_2)
        self.ad.setObjectName("ad")
        self.verticalLayout_2.addWidget(self.ad)
        self.soyad = QtWidgets.QLineEdit(self.verticalLayoutWidget_2)
        self.soyad.setObjectName("soyad")
        self.verticalLayout_2.addWidget(self.soyad)
        self.bolum = QtWidgets.QComboBox(self.verticalLayoutWidget_2)
        self.list=[bolum[0] for bolum in self.school.getDepartment()]
        self.bolum.addItems(self.list)
        self.bolum.setObjectName("bolum")
        self.verticalLayout_2.addWidget(self.bolum)
        self.cinsiyet = QtWidgets.QComboBox(self.verticalLayoutWidget_2)
        self.cinsiyet.addItems(["Erkek","Kad??n"])
        self.cinsiyet.setObjectName("cinsiyet")
        self.verticalLayout_2.addWidget(self.cinsiyet)
        self.dogumTarihi = QtWidgets.QDateEdit(self.verticalLayoutWidget_2)
        self.dogumTarihi.setContextMenuPolicy(QtCore.Qt.ActionsContextMenu)
        self.dogumTarihi.setObjectName("dogumTarihi")
        self.verticalLayout_2.addWidget(self.dogumTarihi)
        self.verticalLayoutWidget = QtWidgets.QWidget(self.tab)
        self.verticalLayoutWidget.setGeometry(QtCore.QRect(160, 30, 181, 321))
        self.verticalLayoutWidget.setObjectName("verticalLayoutWidget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.verticalLayoutWidget)
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout.setSpacing(0)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label_3 = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label_3.setObjectName("label_3")
        self.verticalLayout.addWidget(self.label_3)
        self.label = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.label_2 = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label_2.setObjectName("label_2")
        self.verticalLayout.addWidget(self.label_2)
        self.label_5 = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label_5.setObjectName("label_5")
        self.verticalLayout.addWidget(self.label_5)
        self.label_6 = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label_6.setObjectName("label_6")
        self.verticalLayout.addWidget(self.label_6)
        self.label_4 = QtWidgets.QLabel(self.verticalLayoutWidget)
        self.label_4.setObjectName("label_4")
        self.verticalLayout.addWidget(self.label_4)
        self.kayitEkle = QtWidgets.QPushButton(self.tab)
        self.kayitEkle.setGeometry(QtCore.QRect(310, 410, 89, 25))
        self.kayitEkle.setObjectName("kayitEkle")
        self.kayitEkle.clicked.connect(self.add)
        self.tabWidget.addTab(self.tab, "")
        self.tab_2 = QtWidgets.QWidget()
        self.tab_2.setObjectName("tab_2")
        self.verticalLayoutWidget_3 = QtWidgets.QWidget(self.tab_2)
        self.verticalLayoutWidget_3.setGeometry(QtCore.QRect(380, 100, 151, 321))
        self.verticalLayoutWidget_3.setObjectName("verticalLayoutWidget_3")
        self.verticalLayout_3 = QtWidgets.QVBoxLayout(self.verticalLayoutWidget_3)
        self.verticalLayout_3.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_3.setSpacing(0)
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.label_7 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_7.setObjectName("label_7")
        self.verticalLayout_3.addWidget(self.label_7)
        self.label_8 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_8.setObjectName("label_8")
        self.verticalLayout_3.addWidget(self.label_8)
        self.label_9 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_9.setObjectName("label_9")
        self.verticalLayout_3.addWidget(self.label_9)
        self.label_10 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_10.setObjectName("label_10")
        self.verticalLayout_3.addWidget(self.label_10)
        self.label_11 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_11.setObjectName("label_11")
        self.verticalLayout_3.addWidget(self.label_11)
        self.label_12 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_12.setObjectName("label_12")
        self.verticalLayout_3.addWidget(self.label_12)
        self.verticalLayoutWidget_4 = QtWidgets.QWidget(self.tab_2)
        self.verticalLayoutWidget_4.setGeometry(QtCore.QRect(540, 100, 171, 321))
        self.verticalLayoutWidget_4.setObjectName("verticalLayoutWidget_4")
        self.verticalLayout_4 = QtWidgets.QVBoxLayout(self.verticalLayoutWidget_4)
        self.verticalLayout_4.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_4.setSpacing(20)
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.tcKimlikNoDuzenle = QtWidgets.QLineEdit(self.verticalLayoutWidget_4)
        self.tcKimlikNoDuzenle.setObjectName("tcKimlikNoDuzenle")
        self.verticalLayout_4.addWidget(self.tcKimlikNoDuzenle)
        self.adDuzenle = QtWidgets.QLineEdit(self.verticalLayoutWidget_4)
        self.adDuzenle.setObjectName("adDuzenle")
        self.verticalLayout_4.addWidget(self.adDuzenle)
        self.soyadDuzenle = QtWidgets.QLineEdit(self.verticalLayoutWidget_4)
        self.soyadDuzenle.setObjectName("soyadDuzenle")
        self.verticalLayout_4.addWidget(self.soyadDuzenle)
        self.bolumDuzenle = QtWidgets.QComboBox(self.verticalLayoutWidget_4)
        self.bolumDuzenle.setObjectName("bolumDuzenle")
        self.bolumDuzenle.addItems([self.bolum.itemText(i) for i in range(self.bolum.count())])
        self.verticalLayout_4.addWidget(self.bolumDuzenle)
        self.cinsiyetDuzenle = QtWidgets.QComboBox(self.verticalLayoutWidget_4)
        self.cinsiyetDuzenle.setObjectName("cinsiyetDuzenle")
        self.cinsiyetDuzenle.addItems(["Kad??n","Erkek"])
        self.verticalLayout_4.addWidget(self.cinsiyetDuzenle)
        self.dogumTarihiDuzenle = QtWidgets.QDateEdit(self.verticalLayoutWidget_4)
        self.dogumTarihiDuzenle.setContextMenuPolicy(QtCore.Qt.ActionsContextMenu)
        self.dogumTarihiDuzenle.setObjectName("dogumTarihiDuzenle")
        self.verticalLayout_4.addWidget(self.dogumTarihiDuzenle)
        self.kayitDuzenle = QtWidgets.QPushButton(self.tab_2)
        self.kayitDuzenle.setGeometry(QtCore.QRect(380, 450, 151, 25))
        self.kayitDuzenle.setObjectName("kayitDuzenle")
        self.kayitDuzenle.clicked.connect(self.update)
        self.tcNoSorgula = QtWidgets.QLineEdit(self.tab_2)
        self.tcNoSorgula.setGeometry(QtCore.QRect(30, 40, 150, 25))
        self.tcNoSorgula.setObjectName("tcNoSorgula")
        self.tcNoSorgula.move(100,200)
        self.kayitGetir = QtWidgets.QPushButton(self.tab_2)
        self.kayitGetir.clicked.connect(self.read)
        self.kayitGetir.setGeometry(QtCore.QRect(180, 40, 151, 25))
        self.kayitGetir.move(100,250)
        self.kayitGetir.setObjectName("kayitGetir")
        self.kayitsil= QtWidgets.QPushButton(self.tab_2)
        self.kayitsil.setGeometry(QtCore.QRect(540, 450, 151, 25))
        self.kayitsil.setObjectName("kayitsil")
        self.kayitsil.clicked.connect(self.remove)
        self.tabWidget.addTab(self.tab_2, "")
        MainWindow.setCentralWidget(self.centralwidget)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "????renci Kay??t Sistemi"))
        self.label_3.setText(_translate("MainWindow", "Tc Kimlik Numaras??"))
        self.label.setText(_translate("MainWindow", "Ad"))
        self.label_2.setText(_translate("MainWindow", "Soyad"))
        self.label_5.setText(_translate("MainWindow", "B??l??m"))
        self.label_6.setText(_translate("MainWindow", "Cinsiyet"))
        self.label_4.setText(_translate("MainWindow", "Do??um Tarihi"))
        self.kayitEkle.setText(_translate("MainWindow", "Kay??t Ekle"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), _translate("MainWindow", "????renci Kay??t"))
        self.label_7.setText(_translate("MainWindow", "Tc Kimlik Numaras??"))
        self.label_8.setText(_translate("MainWindow", "Ad"))
        self.label_9.setText(_translate("MainWindow", "Soyad"))
        self.label_10.setText(_translate("MainWindow", "B??l??m"))
        self.label_11.setText(_translate("MainWindow", "Cinsiyet"))
        self.label_12.setText(_translate("MainWindow", "Do??um Tarihi"))
        self.kayitDuzenle.setText(_translate("MainWindow", "Kay??t G??ncelle"))
        self.tcNoSorgula.setPlaceholderText(_translate("MainWindow", "Tc Kimlik No"))
        self.kayitGetir.setText(_translate("MainWindow", "??lgili Kayd?? Getir"))
        self.kayitsil.setText(_translate("MainWindow", "Kay??t Sil"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_2), _translate("MainWindow", "????renci D??zenle"))

    def add(self):
        tc=self.tcKimlikNo.text()
        ad=self.ad.text()
        soyad=self.soyad.text()
        bolum=self.bolum.currentText()
        cinsiyet=self.cinsiyet.currentText()
        dogumTarihi=self.dogumTarihi.text()
        try:
            self.school.addStudent(tc,ad,soyad,bolum,cinsiyet,dogumTarihi)
            self.dialogBox.setText("Ba??ar??l??")
            self.showDialog()
        except mysql.connector.Error as err:
            self.dialogBox.setText("Ba??ar??s??z")
            self.showDialog()
    def remove(self):
        tc=self.tcKimlikNoDuzenle.text()
        try:
            self.school.removeStudent(tc)
            self.dialogBox.setText("Ba??ar??l??")
            self.showDialog()
        except mysql.connector.Error as err:
            self.dialogBox.setText("Ba??ar??s??z")
            self.showDialog()
    def update(self):
        tc=self.tcKimlikNoDuzenle.text()
        ad=self.adDuzenle.text()
        soyad=self.soyadDuzenle.text()
        bolum=self.bolumDuzenle.currentText()
        cinsiyet=self.cinsiyetDuzenle.currentText()
        dogumTarihi=self.dogumTarihiDuzenle.text()
        try:
            self.school.updateStudent(tc,ad,soyad,bolum,cinsiyet,dogumTarihi)
            self.dialogBox.setText("Ba??ar??l??")
            self.showDialog()
        except mysql.connector.Error as err:
            self.dialogBox.setText("Ba??ar??s??z")
            self.showDialog()
    def read(self):
        tc=self.tcNoSorgula.text()
        if tc is not None:
            result=self.school.getStudent(tc)
        if result is not None:
            self.tcKimlikNoDuzenle.setText(result[0])
            self.adDuzenle.setText(result[1])
            self.soyadDuzenle.setText(result[2])
            self.bolumDuzenle.setCurrentText(result[3])
            self.cinsiyetDuzenle.setCurrentText(result[4])
            gun,ay,yil=map(int,result[5].split("."))
            self.dogumTarihiDuzenle.setDate(QDate(gun,ay,yil))
        else:
            self.dialogBox.setText("Kay??t Bulunamad??")
            self.showDialog()
    def showDialog(self):
        self.dialogBox.setWindowTitle("Durum")
        self.dialogBox.exec_()
        
app=QApplication(sys.argv)
window=Ui_MainWindow()
window.setupUi(window)
window.show()
sys.exit(app.exec_())

