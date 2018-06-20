#include "tabs/insertioninterface.h"

InsertionInterface::InsertionInterface(QWidget *parent)
  : QWidget(parent)
{
    // Set layout

    QVBoxLayout *vbox = new QVBoxLayout(this);

    // Set up Radio Buttons box
    m_pCruise = new QRadioButton("Festa no Cruzeiro");
    m_pPark = new QRadioButton("Festa no parque");
    QVBoxLayout *radioButtonsLayout = new QVBoxLayout;
    radioButtonsLayout->addWidget(m_pCruise);
    radioButtonsLayout->addWidget(m_pPark);

    // Set up the first insert button box
    QPushButton *insertParty = new QPushButton("Insert");
    QVBoxLayout *buttonLayout1 = new QVBoxLayout;
    buttonLayout1->addWidget(insertParty, 0, Qt::AlignLeft);

    QFormLayout *flayout;

    // Create party information group box
    m_partyInfos = new QGroupBox("Festa no Parque");
    flayout = new QFormLayout;
    m_partyName = new QLineEdit();
    flayout->addRow("&Nome da festa:",m_partyName);
    m_partyInfos->setLayout(flayout);

    // Create cruiser information group box
    m_cruiserInfos = new QGroupBox("Festa no Cruzeiro");
    flayout = new QFormLayout;
    m_startDate = new QDateEdit(QDate::currentDate());
    m_endDate = new QDateEdit(QDate::currentDate());
    m_nOfGuest = new QSpinBox;
    m_partyName = new QLineEdit;
    m_imoNumber = new QSpinBox;
    m_location = new QLineEdit;
    flayout->addRow("&Nome", m_partyName);
    flayout->addRow("&IMO:", m_imoNumber);
    flayout->addRow("&Data Inicio:", m_startDate);
    flayout->addRow("&Data Fim:", m_endDate);
    flayout->addRow("&No Convidados:", m_nOfGuest);
    flayout->addRow("&Local", m_location);
    m_cruiserInfos->setLayout(flayout);

    // Add Party and Cruiser information into a layout
    // They should initially be invisible
    QHBoxLayout *partyEltsLayout = new QHBoxLayout;
    partyEltsLayout->addWidget(m_partyInfos);
    partyEltsLayout->addWidget(m_cruiserInfos);
    m_partyInfos->setVisible(false);
    m_cruiserInfos->setVisible(false);

    //2.2 Groupbox about the Employees informations
    QGroupBox *employees = new QGroupBox("Employees Informations");
    employees->setEnabled(false);
    QFormLayout *employeeFormLayout = new QFormLayout(employees);

    m_employeeName = new QLineEdit;
    m_employeeCpf = new QLineEdit;
    m_employeeRg = new QLineEdit;
    m_employeeTelefone = new QLineEdit;
    m_employeeAddress = new QLineEdit;
    m_employeeTeam = new QLineEdit;
    m_employeeFunction = new QComboBox;
    QStringList functions = {"Operador de Câmera", "Assistente", "Técnico", "Piloto", "Co-Piloto"};
    m_employeeFunction->addItems(functions);

    employeeFormLayout->addRow("&Function:", m_employeeFunction);
    employeeFormLayout->addRow("&Name:", m_employeeName);
    employeeFormLayout->addRow("&CPF:", m_employeeCpf);
    employeeFormLayout->addRow("&RG:", m_employeeRg);
    employeeFormLayout->addRow("&Telefone", m_employeeTelefone);
    employeeFormLayout->addRow("&Address:", m_employeeAddress);
    employeeFormLayout->addRow("&Team:", m_employeeTeam);

    //2.3 GroupBox about the equipments informations
    QGroupBox *equipments = new QGroupBox("Equipments Informations");
    equipments->setEnabled(false);
    m_insertButton = new QPushButton("Insert");
    m_cancelButton = new QPushButton("Cancel");
    QHBoxLayout *hbox = new QHBoxLayout;

    hbox->addWidget(m_insertButton,0,Qt::AlignRight);
    hbox->addWidget(m_cancelButton,0,Qt::AlignLeft);

    vbox->addLayout(radioButtonsLayout);
    vbox->addLayout(buttonLayout1);
    vbox->addLayout(partyEltsLayout);
    vbox->addWidget(employees);
    vbox->addWidget(equipments);
    vbox->addLayout(hbox);

    this->setLayout(vbox);
    QObject::connect(m_pCruise,SIGNAL(pressed()),this,SLOT(CruiseChecked()));
    QObject::connect(m_pPark,SIGNAL(pressed()),this,SLOT(ParkChecked()));
}

void InsertionInterface::CruiseChecked()
{
    m_partyInfos->setVisible(false);
    m_cruiserInfos->setVisible(true);
}

void InsertionInterface::ParkChecked()
{
    m_partyInfos->setVisible(true);
    m_cruiserInfos->setVisible(false);
}
