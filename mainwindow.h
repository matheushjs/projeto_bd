#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QApplication>
#include <QTabWidget>
#include <QLabel>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QGroupBox>
#include <QHBoxLayout>
#include <QFormLayout>
#include <QPushButton>
#include <QComboBox>
#include <QLineEdit>
#include <QDateEdit>
#include <QSpinBox>
#include <QRadioButton>

class MainWindow : public QWidget
{
    Q_OBJECT

public:
    MainWindow();
    ~MainWindow();

private slots:
    void CruiseChecked();
    void ParkChecked();

private:
    void drawTab1(QWidget *parent);
    void drawTab2(QWidget *parent);
    void drawTab3(QWidget *parent);
    void drawTab4(QWidget *parent);

    //Employees atributes
    QPushButton *m_insertButton;
    QPushButton *m_cancelButton;
    QComboBox *m_employeeFunction;
    QLineEdit *m_employeeName;
    QLineEdit *m_employeeCpf;
    QLineEdit *m_employeeRg;
    QLineEdit *m_employeeTelefone;
    QLineEdit *m_employeeAddress;
    QLineEdit *m_employeeTeam;

    //Party atributes
    QComboBox *m_partyType;
    QDateEdit *m_startDate;
    QDateEdit *m_endDate;
    QSpinBox *m_nOfGuest;
    QLineEdit *m_partyName;
    QSpinBox *m_imoNumber;
    QLineEdit *m_location;
    QRadioButton *m_pCruise;
    QRadioButton *m_pPark;
    QFormLayout *m_partyInCruise;
    QFormLayout *m_partyInPark;
    QGroupBox *m_partyInfos;

};

#endif // MAINWINDOW_H
