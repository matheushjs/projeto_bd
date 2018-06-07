#ifndef INSERTIONINTERFACE_H
#define INSERTIONINTERFACE_H

#include <QWidget>
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

class InsertionInterface : public QWidget
{
    Q_OBJECT

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


public:
    explicit InsertionInterface(QWidget *parent = 0);

private slots:
    void CruiseChecked();
    void ParkChecked();

signals:

public slots:
};

#endif // INSERTIONINTERFACE_H
