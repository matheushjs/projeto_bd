#include "tabs/insertioninterface.h"

InsertionInterface::InsertionInterface(QWidget *parent)
  : QWidget(parent),
  m_viewModel(),
  m_database("insertConn")
{
    //Set the principal layout
    m_vbox = new QVBoxLayout(this);
    
    //Drawing the insertion party interface
    this->drawPartyBox();

    //Drawing the insertion employee interface
    this->drawEmployeeBox();

    //Drawing the insertion equipements interface
    this->drawEquipmentBox();

    //Adding the trnasactions butttons
    m_insertButton = new QPushButton("Confirmar");
    m_cancelButton = new QPushButton("Cancelar");
    QHBoxLayout *hbox = new QHBoxLayout;

    hbox->addWidget(m_insertButton,0,Qt::AlignRight);
    hbox->addWidget(m_cancelButton,0,Qt::AlignLeft);

    m_vbox->addLayout(hbox);

    this->setLayout(m_vbox);

    QObject::connect(m_pCruise,SIGNAL(pressed()),this,SLOT(CruiseChecked()));
    QObject::connect(m_pPark,SIGNAL(pressed()),this,SLOT(ParkChecked()));
    QObject::connect(m_newEmployee,SIGNAL(pressed()),this,SLOT(newEChecked()));
    QObject::connect(m_existEmployee,SIGNAL(pressed()),this,SLOT(existEChecked()));
 	QObject::connect(m_insertParty, SIGNAL(pressed()),this,SLOT(insertCruiseParty()));
    QObject::connect(m_insertButton,SIGNAL(pressed()),this,SLOT(commitInsertion()));
    QObject::connect(m_cancelButton,SIGNAL(pressed()),this,SLOT(rollbackInsertion()));
}
void InsertionInterface::drawPartyBox()
{
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
    m_parkPartyName = new QLineEdit();
    QFormLayout *parkLayout = new QFormLayout;
    
    parkLayout->addRow("&Nome da festa:",m_parkPartyName);
    m_parkPartyInfos->setLayout(parkLayout);
    
    // 1.4 Set up the cruiser party box
    m_cruiserInfos = new QGroupBox("Festa no Cruzeiro");
    m_startDate = new QDateEdit(QDate::currentDate());
    m_endDate = new QDateEdit(QDate::currentDate());
    m_nOfGuest = new QSpinBox;
    m_cruisePartyName = new QLineEdit;
    m_imoNumber = new QSpinBox;
    m_location = new QLineEdit;
    QFormLayout *cruiseLayout = new QFormLayout;
    
    m_nOfGuest->setRange(0,5000);
    m_imoNumber->setRange(0,9000000);
    
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

    m_vbox->addLayout(radioButtonsLayout);
    m_vbox->addLayout(buttonLayout1);
    m_vbox->addLayout(partyEltsLayout);
}
void InsertionInterface::drawEmployeeBox()
{
    //2 Create employees informations box
    
    //2.1 Set up the radio buttons and push button
    QVBoxLayout *erbLayout = new QVBoxLayout;
    m_newEmployee = new QRadioButton("Alocar um novo funcionário");
    m_existEmployee = new QRadioButton("Alocar um funcionário existente");
    m_insertEmpButton = new QPushButton("Alocar funcionário");
    
    m_newEmployee->setEnabled(false);
    m_existEmployee->setEnabled(false);
    m_insertEmpButton->setEnabled(false);
    
    erbLayout->addWidget(m_newEmployee);
    erbLayout->addWidget(m_existEmployee);
    erbLayout->addWidget(m_insertEmpButton,0, Qt::AlignLeft);

    //2.2 Set up the boxes of new and exist employees
    QHBoxLayout *employeeEltsLayout = new QHBoxLayout;
    m_existEmployees = new QGroupBox("Funcionários existentes");
    m_newEmployees = new QGroupBox("Funcionário novo");
    
    m_existEmployees->setEnabled(false);
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

    newEmployeeFormLayout->addRow("&Cargo:", m_employeeFunction);
    newEmployeeFormLayout->addRow("&Nome:", m_employeeName);
    newEmployeeFormLayout->addRow("&CPF:", m_employeeCpf);
    newEmployeeFormLayout->addRow("&RG:", m_employeeRg);
    newEmployeeFormLayout->addRow("&Telefone", m_employeeTelefone);
    newEmployeeFormLayout->addRow("&Endereço:", m_employeeAddress);
    newEmployeeFormLayout->addRow("&Equipe:", m_employeeTeam);


    //2.4 Set up the form layout of exist employee
    m_eTableView = new QTableView;
    QHBoxLayout *tbvLayout = new QHBoxLayout;
    
    tbvLayout->addWidget(m_eTableView);
    
    m_newEmployees->setLayout(newEmployeeFormLayout);
    m_existEmployees->setLayout(tbvLayout);

    m_vbox->addLayout(erbLayout);
    m_vbox->addLayout(employeeEltsLayout);
}
void InsertionInterface::drawEquipmentBox()
{
    //3 GroupBox about the equipments informations
    m_equipments = new QGroupBox("Dados sobre equipamentos");
    m_equipments->setEnabled(false);

    m_vbox->addWidget(m_equipments);

}
void InsertionInterface::drawBandBox()
{
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
    m_eTableView->setModel(m_viewModel.employeesModel());
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
    m_parkPartyInfos->setVisible(false);
    m_pCruise->setEnabled(false);
    m_pPark->setEnabled(false);
    m_insertParty->setEnabled(false);
    m_newEmployee->setEnabled(true);
    m_existEmployee->setEnabled(true);
    m_insertEmpButton->setEnabled(true);
    m_existEmployees->setEnabled(true);


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
    //
}
