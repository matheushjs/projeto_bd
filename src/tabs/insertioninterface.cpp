#include "tabs/insertioninterface.h"

InsertionInterface::InsertionInterface(QWidget *parent)
  : QWidget(parent),
  m_viewModel(),
  m_database("insertConn")
{
    //Set the principal layout
    m_vbox = new QVBoxLayout(this);
    m_log = new InsertionLog();
    
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
    QObject::connect(m_camera,SIGNAL(pressed()),this,SLOT(camerasChecked()));
 	QObject::connect(m_insertParty, SIGNAL(pressed()),this,SLOT(insertCruiseParty()));
    QObject::connect(m_insertButton,SIGNAL(pressed()),this,SLOT(commitInsertion()));
    QObject::connect(m_cancelButton,SIGNAL(pressed()),this,SLOT(rollbackInsertion()));
    QObject::connect(m_insertEmpButton,SIGNAL(pressed()),this,SLOT(insertEmployee()));
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
    m_camera = new QRadioButton("Alocar cameras");
    m_insertEmpButton = new QPushButton("Alocar funcionário");
    
    m_newEmployee->setEnabled(false);
    m_existEmployee->setEnabled(false);
    m_insertEmpButton->setEnabled(false);
    m_camera->setEnabled(false);
    
    erbLayout->addWidget(m_newEmployee);
    erbLayout->addWidget(m_existEmployee);
    erbLayout->addWidget(m_camera);
    erbLayout->addWidget(m_insertEmpButton,0, Qt::AlignLeft);

    //2.2 Set up the boxes of new and exist employees
    QHBoxLayout *employeeEltsLayout = new QHBoxLayout;
    m_existEmployees = new QGroupBox("Funcionários existentes");
    m_newEmployees = new QGroupBox("Funcionário novo");
    m_cameras = new QGroupBox("Cameras disponíveis");

    m_existEmployees->setEnabled(false);
    m_newEmployees->setVisible(false);
    m_cameras->setVisible(false);
    
    employeeEltsLayout->addWidget(m_existEmployees);
    employeeEltsLayout->addWidget(m_newEmployees);
    employeeEltsLayout->addWidget(m_cameras);
    
    //2.3 Set up the form layout of new employee
    QFormLayout *newEmployeeFormLayout = new QFormLayout;
    m_employeeName = new QLineEdit;
    m_employeeCpf = new QLineEdit;
    m_employeeRg = new QLineEdit;
    m_employeeTelefone = new QLineEdit;
    m_employeeAddress = new QLineEdit;
    m_employeeTeam = new QComboBox;
    m_employeeFunction = new QComboBox;
    
    QStringList functions = {"Fotógrafo", "Cinegrafista"};
    QStringList categories = {"ESPECIALISTA","TECNICO","JUNIOR"};

    m_employeeFunction->addItems(functions);
    m_employeeTeam->addItems(categories);

    newEmployeeFormLayout->addRow("&Cargo:", m_employeeFunction);
    newEmployeeFormLayout->addRow("&Nome:", m_employeeName);
    newEmployeeFormLayout->addRow("&CPF:", m_employeeCpf);
    newEmployeeFormLayout->addRow("&RG:", m_employeeRg);
    newEmployeeFormLayout->addRow("&Telefone", m_employeeTelefone);
    newEmployeeFormLayout->addRow("&Endereço:", m_employeeAddress);
    newEmployeeFormLayout->addRow("&Categoria:", m_employeeTeam);

    //2.4 Set up the form layout of exist employee
    m_eTableView = new QTableView;
    m_cTableView = new QTableView;
    QHBoxLayout *tbveLayout = new QHBoxLayout;
    QHBoxLayout *tbvcLayout = new QHBoxLayout;
    
    tbveLayout->addWidget(m_eTableView);
    tbvcLayout->addWidget(m_cTableView);
    
    m_newEmployees->setLayout(newEmployeeFormLayout);
    m_existEmployees->setLayout(tbveLayout);
    m_cameras->setLayout(tbvcLayout);

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
    m_cameras->setVisible(false);
    m_newEmployees->setVisible(true);
    m_funcType = false;
}

void InsertionInterface::existEChecked()
{
    m_newEmployees->setVisible(false);
    m_cameras->setVisible(false);
    m_existEmployees->setVisible(true);
    m_funcType = true;
    m_eTableView->setModel(m_viewModel.employeesModel(m_log->party().initialDate(),m_log->party().endDate()));
}
void InsertionInterface::camerasChecked()
{
    m_newEmployees->setVisible(false);
    m_existEmployees->setVisible(false);
    m_cameras->setVisible(true);
    m_cTableView->setModel(m_viewModel.camerasModel(m_log->party().initialDate()));
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
    else if(m_startDate->date() < (QDate::currentDate()))
    {
        QMessageBox::critical(this,"Erro","A data início não pode ser inferior a data atual.");
        return;
    }

    QString day;
    QString month;
    
    aux = m_startDate->date();
    if(aux.day() < 10)
        day = QString("0%1").arg(QString::number(aux.day()));
    else 
        day = QString::number(aux.day());

    if(aux.month() < 10)
        month = QString("0%1").arg(QString::number(aux.month()));
    else
       month = QString::number(aux.month());

    CruiseParty cparty(QString::number(m_imoNumber->value()),
        QString("%1-%2-%3").arg(QString::number(aux.year()),month,day),
        m_cruisePartyName->text());

    aux = m_endDate->date();
    if(aux.day() < 10)
        day = QString("0%1").arg(QString::number(aux.day()));
    else 
        day = QString::number(aux.day());

    if(aux.month() < 10)
        month = QString("0%1").arg(QString::number(aux.month()));
    else
       month = QString::number(aux.month());

    cparty.setEndDate(QString("%1-%2-%3").arg(QString::number(aux.year()),month,day));
    cparty.setNOfGuest(QString("%1").arg(m_nOfGuest->value()));
    cparty.setLocal(m_location->text());
    m_log->setCruiseParty(cparty);

    QString feedback = m_database.insertCruiseParty(m_log->party());
    
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
    m_camera->setEnabled(true);
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
void InsertionInterface::insertEmployee()
{
    
    if(!m_funcType)
    {
        if(m_employeeFunction->currentText() == "Fotógrafo")
        {
            Photographer *nph = new Photographer(m_employeeTeam->currentText());
            nph->setAlbum(m_log->party().IMO(),m_log->party().initialDate());
            nph->setName(m_employeeName->text());
            nph->setCpf(m_employeeCpf->text());
            nph->setRg(m_employeeRg->text());
            nph->setCelphone(m_employeeTelefone->text());
            nph->setAddress(m_employeeAddress->text());
            m_log->addPartyEmployee(nph);
        }
        else 
        {
            Cameraman *nca = new Cameraman;
            nca->setMakingOf(m_log->party().IMO(),m_log->party().initialDate());
            nca->setName(m_employeeName->text());
            nca->setCpf(m_employeeCpf->text());
            nca->setRg(m_employeeRg->text());
            nca->setCelphone(m_employeeTelefone->text());
            nca->setAddress(m_employeeAddress->text());
            m_log->addPartyEmployee(nca);
        }
    }

    else if(m_funcType)
    {
        QItemSelectionModel *selectedEmp = m_eTableView->selectionModel();
        QModelIndexList sEList = selectedEmp->selectedIndexes();
        QStringList functions = {"Fotógrafo", "Cinegrafista"};
        QStringList categories = {"ESPECIALISTA","TECNICO","JUNIOR"};
        int nOfPh = 0;
        QInputDialog diag;
        diag.setOkButtonText("Confirmar");
        diag.setCancelButtonText("");
        
        for(int i = 0; i < sEList.size(); i++)
        {
            
            QVariant empCpf = m_eTableView->model()->data(sEList[i],Qt::DisplayRole);
            QVariant empName = m_eTableView->model()->data(sEList[i].sibling(sEList[i].row(),1),Qt::DisplayRole);
            m_eTableView->model()->removeRow(sEList[i].row());

            QString function = diag.getItem(this,
                "Cargo do funcionário","Especifique o cargo do " + empName.toString() + " :", functions,0,false);

            if(function == "Fotógrafo")
            {
                QString category = diag.getItem(this, 
                    "Categoria do fotógrafo", "Especifique a caetgoria do fotógrafo " + empName.toString() + " :", categories,0,false);
                
                Photographer *ph = new Photographer(category);
                ph->setAlbum(m_log->party().IMO(),m_log->party().initialDate());
                ph->setCpf(empCpf.toString());
                m_log->addPartyEmployee(ph);
                
                if(++nOfPh == 6)
                {
                    QMessageBox::information(this,"Aviso","Limite de 5 fotógrafos atigindos.");
                    functions.removeFirst();
                }

            }
            else if (function == "Cinegrafista")
            {
                Cameraman *ca = new Cameraman;
                ca->setMakingOf(m_log->party().IMO(),m_log->party().initialDate());
                ca->setCpf(empCpf.toString());
                m_log->addPartyEmployee(ca);
            }
        }
    }
}

void InsertionInterface::insertParkParty()
{
}
