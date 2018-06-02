#include "mainwindow.h"

MainWindow::MainWindow()
{
    //1.Drawing the interface

    //1.1 Drawing the TabWidget
    QTabWidget *tabs = new QTabWidget(this);
    this->setWindowTitle("Sistema de Gerenciamento de Imagem e Som");
    this->setFixedSize(800,800);
    tabs->setGeometry(0, 0, 800, 800);
    tabs->setTabShape(QTabWidget::Triangular);

    //1.2 Creating and drawing the tab1
    QWidget *data = new QWidget;
    this->drawTab1(data);

    //1.3 Creating and drawing the tab2
    QWidget *queries = new QWidget;
    this->drawTab2(queries);

    //1.4 Creating and drawing the tab3
    QWidget *relates = new QWidget;
    this->drawTab3(relates);

    //1.5 Creating and drwaing the tab4
    QWidget *about = new QWidget;
    this->drawTab4(about);


    //1.6 Adding the tabs to the TabWidget
    tabs->addTab(data, "Insert Informations");
    tabs->addTab(queries, "Consult Informations");
    tabs->addTab(relates, "Print Relates");
    tabs->addTab(about, "About");

}

void MainWindow::drawTab1(QWidget *parent)
{
    //Drawing the tab1

    //1. Especify the layout
    QVBoxLayout *vbox = new QVBoxLayout(parent);

    //2. Creating and drawing the GroupBox

    //2.1 GroupBox about the party informations
    QVBoxLayout *partyLayout = new QVBoxLayout;
    QGroupBox *location = new QGroupBox("Party Informations");
    QFormLayout *partyFormLayout = new QFormLayout(location);

    QStringList partyType = {"Festa no cruzeiro", "Festa no parque"};
    m_partyType = new QComboBox;
    m_partyType->addItems(partyType);
    partyFormLayout->addRow("&Party Type:",m_partyType);


    QPushButton *insertParty = new QPushButton("Insert",location);
    partyLayout->addWidget(location);
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
}
void MainWindow::drawTab2(QWidget *parent)
{

}
void MainWindow::drawTab3(QWidget *parent)
{}
void MainWindow::drawTab4(QWidget *parent)
{}

MainWindow::~MainWindow()
{

}
