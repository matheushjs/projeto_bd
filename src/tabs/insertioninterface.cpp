#include "tabs/insertioninterface.h"

InsertionInterface::InsertionInterface(QWidget *parent)
  : QWidget(parent),
  m_database("insertConn")
{
    // Set the principal layout
    QVBoxLayout *vbox = new QVBoxLayout(this);

    //Drawing the insertion interface
    // 1. Create party information group boxes
    
    // 1.1 Set up the radio buttons
    m_pCruise = new QRadioButton("Festa no Cruzeiro");
    m_pPark = new QRadioButton("Festa no parque");
    QVBoxLayout *radioButtonsLayout = new QVBoxLayout;
    radioButtonsLayout->addWidget(m_pCruise);
    radioButtonsLayout->addWidget(m_pPark);

    // 1.2 Set up the party insert button
    m_insertParty = new QPushButton("Inserir festa");
    QVBoxLayout *buttonLayout1 = new QVBoxLayout;
    buttonLayout1->addWidget(m_insertParty, 0, Qt::AlignLeft);
    
    // 1.3 Set up the park party box
    m_parkPartyInfos = new QGroupBox("Festa no Parque");
    QFormLayout *parkLayout = new QFormLayout;
    m_parkPartyName = new QLineEdit();
    parkLayout->addRow("&Nome da festa:",m_parkPartyName);
    m_parkPartyInfos->setLayout(parkLayout);
    
    // 1.4 Set up the cruiser party box
    m_cruiserInfos = new QGroupBox("Festa no Cruzeiro");
    QFormLayout *cruiseLayout = new QFormLayout;
    m_startDate = new QDateEdit(QDate::currentDate());
    m_endDate = new QDateEdit(QDate::currentDate());
    m_nOfGuest = new QSpinBox;
    m_nOfGuest->setRange(0,5000);
    m_cruisePartyName = new QLineEdit;
    m_imoNumber = new QSpinBox;
    m_imoNumber->setRange(0,9000000);
    m_location = new QLineEdit;
    cruiseLayout->addRow("&Nome", m_cruisePartyName);
    cruiseLayout->addRow("&IMO:", m_imoNumber);
    cruiseLayout->addRow("&Data Inicio:", m_startDate);
    cruiseLayout->addRow("&Data Fim:", m_endDate);
    cruiseLayout->addRow("&No Convidados:", m_nOfGuest);
    cruiseLayout->addRow("&Local", m_location);
    m_cruiserInfos->setLayout(cruiseLayout);

    // 1.5 Add park party and cruiser party boxes into a layout
    // They should initially be invisible
    QHBoxLayout *partyEltsLayout = new QHBoxLayout;
    partyEltsLayout->addWidget(m_parkPartyInfos);
    partyEltsLayout->addWidget(m_cruiserInfos);
    m_parkPartyInfos->setVisible(false);
    m_cruiserInfos->setVisible(false);

    // 2. Create employees informations box
    
    //2.1 Set up the radio buttons
    QVBoxLayout *erbLayout = new QVBoxLayout;
    m_newEmployee = new QRadioButton("Allocar um novo funcionário");
    m_newEmployee->setChecked(true);
    m_existEmployee = new QRadioButton("Allocar um funcionário existente");
    erbLayout->addWidget(m_newEmployee);
    erbLayout->addWidget(m_existEmployee);

    //2.2 Set up the boxes of new and exist employees
    QHBoxLayout *employeeEltsLayout = new QHBoxLayout;
    m_existEmployees = new QGroupBox("Funcionários existentes");
    m_newEmployees = new QGroupBox("Funcionário novo");
    m_existEmployees->setVisible(false);
    m_newEmployees->setVisible(false);
    employeeEltsLayout->addWidget(m_existEmployees);
    employeeEltsLayout->addWidget(m_newEmployees);
    
    //2.3 Set up the form layout of new employee
    QFormLayout *newEmployeeFormLayout = new QFormLayout;
    m_employeeName = new QLineEdit;
    m_employeeCpf = new QLineEdit;
    m_employeeRg = new QLineEdit;
    m_employeeTelefone = new QLineEdit;
    m_employeeAddress = new QLineEdit;
    m_employeeTeam = new QLineEdit;
    m_employeeFunction = new QComboBox;
    QStringList functions = {"Operador de Câmera", "Assistente", "Técnico", "Piloto", "Co-Piloto"};
    m_employeeFunction->addItems(functions);

    newEmployeeFormLayout->addRow("&Function:", m_employeeFunction);
    newEmployeeFormLayout->addRow("&Name:", m_employeeName);
    newEmployeeFormLayout->addRow("&CPF:", m_employeeCpf);
    newEmployeeFormLayout->addRow("&RG:", m_employeeRg);
    newEmployeeFormLayout->addRow("&Telefone", m_employeeTelefone);
    newEmployeeFormLayout->addRow("&Address:", m_employeeAddress);
    newEmployeeFormLayout->addRow("&Team:", m_employeeTeam);

    m_newEmployees->setLayout(newEmployeeFormLayout);

    //2.4 Set up the form layout of exist employee
     m_eTableView = new QTableView;
     m_viewModel = new TableModel();
     QHBoxLayout *tbvLayout = new QHBoxLayout;
     tbvLayout->addWidget(m_eTableView);

     m_existEmployees->setLayout(tbvLayout);

    //2.3 GroupBox about the equipments informations
    QGroupBox *equipments = new QGroupBox("Dados sobre equipamentos");
    equipments->setEnabled(false);

    //3 Add the last butttons
    m_insertButton = new QPushButton("Confirmar");
    m_cancelButton = new QPushButton("Cancelar");
    QHBoxLayout *hbox = new QHBoxLayout;

    hbox->addWidget(m_insertButton,0,Qt::AlignRight);
    hbox->addWidget(m_cancelButton,0,Qt::AlignLeft);

    vbox->addLayout(radioButtonsLayout);
    vbox->addLayout(buttonLayout1);
    vbox->addLayout(partyEltsLayout);
    vbox->addLayout(erbLayout);
    vbox->addLayout(employeeEltsLayout);
    vbox->addWidget(equipments);
    vbox->addLayout(hbox);

    this->setLayout(vbox);

    QObject::connect(m_pCruise,SIGNAL(pressed()),this,SLOT(CruiseChecked()));
    QObject::connect(m_pPark,SIGNAL(pressed()),this,SLOT(ParkChecked()));
    QObject::connect(m_newEmployee,SIGNAL(pressed()),this,SLOT(newEChecked()));
    QObject::connect(m_existEmployee,SIGNAL(pressed()),this,SLOT(existEChecked()));
 	QObject::connect(m_insertParty, SIGNAL(pressed()),this,SLOT(insertCruiseParty()));
    QObject::connect(m_insertButton,SIGNAL(pressed()),this,SLOT(commitInsertion()));
    QObject::connect(m_cancelButton,SIGNAL(pressed()),this,SLOT(rollbackInsertion()));
}

void InsertionInterface::CruiseChecked()
{
    m_parkPartyInfos->setVisible(false);
    m_cruiserInfos->setVisible(true);
}

void InsertionInterface::ParkChecked()
{
    m_parkPartyInfos->setVisible(true);
    m_cruiserInfos->setVisible(false);
}
void InsertionInterface::newEChecked()
{
    m_existEmployees->setVisible(false);
    m_newEmployees->setVisible(true);
}

void InsertionInterface::existEChecked()
{
    m_newEmployees->setVisible(false);
    m_existEmployees->setVisible(true);
}

void InsertionInterface::insertCruiseParty()
{

	/*TODO
	
		* The location format
		* Verify the IMO number
	*/
	

	QVector<QString> partyData;
	QDate aux;

    //Doing verifications
    if(m_cruisePartyName->text().isEmpty())
    {
        QMessageBox::critical(this,"Erro","O nome da festa não pode ser nullo");
        return;
    }
    else if(m_endDate->date() <(m_startDate->date()))
    {
        QMessageBox::critical(this,"Erro","A data de fim não pode ser inferior a data de início.");
        return;
    }


	partyData.append(QString("%1").arg(m_imoNumber->value()));
    aux = m_startDate->date();
	partyData.append(QString("%1-%2-%3").arg(QString::number(aux.year()),QString::number(aux.month()),QString::number(aux.day())));
    aux = m_endDate->date();
	
    partyData.append(QString("%1-%2-%3").arg(QString::number(aux.year()),QString::number(aux.month()),QString::number(aux.day())));
	partyData.append(QString("%1").arg(m_nOfGuest->value()));
	partyData.append(m_cruisePartyName->text());
    partyData.append(m_location->text());


    QString feedback = m_database.insertCruiseParty(partyData);

	if(feedback == "")
		QMessageBox::information(this,"Resultado da inserção", "Festa inserida com sucesso!");
	else
		QMessageBox::critical(this,"Erro na hora de inserir.", feedback);

    m_cruiserInfos->setVisible(false);
    //m_newEmployees->setVisible(false);
    //m_existEmployees->setVisible(false);

}
void InsertionInterface::commitInsertion()
{
    m_database.commitTransaction();
}

void InsertionInterface::rollbackInsertion()
{
    m_database.rollbackTransaction();
}

void InsertionInterface::insertParkParty()
{

}
