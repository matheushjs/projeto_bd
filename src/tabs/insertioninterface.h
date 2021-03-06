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
#include <QMessageBox>
#include <QTableView>
#include <QInputDialog>


#include "models/tablemodel.h"
#include "database/eisedatabase.h"
#include "data_structures/insertionlog.h"

class InsertionInterface : public QWidget
{
    Q_OBJECT

private :

    //Interface layout
    QVBoxLayout *m_vbox;

    //Employees atributes
    QPushButton *m_insertButton;
    QPushButton *m_cancelButton;
    QPushButton *m_insertEmpButton;
    QPushButton *m_alocateCamButton;
    QPushButton *m_finishEmpButton;
    QComboBox *m_employeeFunction;
    QLineEdit *m_employeeName;
    QLineEdit *m_employeeCpf;
    QLineEdit *m_employeeRg;
    QLineEdit *m_employeeTelefone;
    QLineEdit *m_employeeAddress;
    QComboBox *m_employeeTeam;
    QGroupBox *m_newEmployees;
    QGroupBox *m_existEmployees;
    QGroupBox *m_cameras;
    QRadioButton *m_newEmployee;
    QRadioButton *m_existEmployee;
    QRadioButton *m_camera;
    QTableView *m_eTableView;
    QTableView *m_cTableView;
    TableModel m_viewModel;

    bool m_funcType;

    //Party atributes
    QComboBox *m_partyType;
    QDateEdit *m_startDate;
    QDateEdit *m_endDate;
    QSpinBox *m_nOfGuest;
    QLineEdit *m_parkPartyName;
    QLineEdit *m_cruisePartyName;
    QSpinBox *m_imoNumber;
    QLineEdit *m_location;
    QRadioButton *m_pCruise;
    QRadioButton *m_pPark;
    QPushButton *m_insertParty;
    QGroupBox *m_parkPartyInfos;
    QGroupBox *m_cruiserInfos;

    //Equipments Atributes
    QGroupBox *m_equipments; 

    //Database atributes
    EISEDatabase m_database;

    //Data atributes
    InsertionLog *m_log;

    void drawPartyBox();
    void drawEmployeeBox();
    void drawEquipmentBox();
    void drawBandBox();

public:
    explicit InsertionInterface(QWidget *parent = 0);

private slots:
    void CruiseChecked();
    void ParkChecked();
    void insertCruiseParty();
    void insertParkParty();
    void commitInsertion();
    void rollbackInsertion();
    void newEChecked();
    void existEChecked();
    void camerasChecked();
    void insertEmployee();
    void insertCams();
    void notFotografoEmp();

};

#endif // INSERTIONINTERFACE_H
