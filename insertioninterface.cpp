#include "insertioninterface.h"

InsertionInterface::InsertionInterface(QWidget *parent) : QWidget(parent)
{
    //1. Especify the layout
    QVBoxLayout *vbox = new QVBoxLayout(parent);

    //2. Creating and drawing the GroupBox

    //2.1 GroupBox about the party informations

    //2.1.1 Defining the layouts
    QVBoxLayout *partyLayout = new QVBoxLayout;
    QHBoxLayout *partyEltsLayout = new QHBoxLayout;
    QVBoxLayout *radioButtonsLayout = new QVBoxLayout;

    m_partyInfos = new QGroupBox;

    //2.1.2 Defining the elements
    m_pCruise = new QRadioButton("Festa no Cruzeiro");
    m_pPark = new QRadioButton("Festa no parque");
    QPushButton *insertParty = new QPushButton("Insert",m_partyInfos);

    radioButtonsLayout->addWidget(m_pCruise);
    radioButtonsLayout->addWidget(m_pPark);
    partyEltsLayout->addLayout(radioButtonsLayout);
    partyEltsLayout->addWidget(m_partyInfos);

    partyLayout->addLayout(partyEltsLayout);
    partyLayout->addWidget(insertParty,0,Qt::AlignLeft);

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

    vbox->addLayout(partyLayout);
    vbox->addWidget(employees);
    vbox->addWidget(equipments);
    vbox->addLayout(hbox);

    parent->setLayout(vbox);
    QObject::connect(m_pCruise,SIGNAL(pressed()),this,SLOT(CruiseChecked()));
    QObject::connect(m_pPark,SIGNAL(pressed()),this,SLOT(ParkChecked()));
}

void InsertionInterface::CruiseChecked()
{
    //m_partyInCruise->setParent(m_partyInfos);
    m_partyInfos->setTitle("Festa no Cruzeiro");
    delete m_partyInfos->layout();
    m_partyInCruise = new QFormLayout;
    QStringList partyType = {"Festa no cruzeiro", "Festa no parque"};
    QComboBox *m_partyType = new QComboBox;
    m_partyType->addItems(partyType);
    m_partyInCruise->addRow("&Party Type:",m_partyType);
    m_partyInfos->setLayout(m_partyInCruise);
}

void InsertionInterface::ParkChecked()
{
    //m_partyInPark->setParent(m_partyInfos);
    m_partyInfos->setTitle("Festa no Park");
    delete m_partyInfos->layout();
    m_partyInPark = new QFormLayout;
    m_partyName = new QLineEdit();

    m_partyInPark->addRow("&Nome da festa:",m_partyName);
    m_partyInfos->setLayout(m_partyInPark);
}
