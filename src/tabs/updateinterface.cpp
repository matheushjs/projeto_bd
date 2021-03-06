#include <QGroupBox>
#include <QPushButton>
#include <QVBoxLayout>
#include <QFormLayout>
#include <QLineEdit>
#include <QLabel>
#include <QDialog>

#include "updateinterface.h"

UpdateInterface::UpdateInterface(QWidget *parent)
  : QWidget(parent),
    m_buttons({
              // Do not change buttons' text
              new QPushButton("Parques"),
              new QPushButton("Festas no Parque"),
              new QPushButton("Festas no Cruzeiro")
              }),
    m_checkedButton(-1),
    m_keyLineEdit1(new QLineEdit),
    m_keyLineEdit2(new QLineEdit),
    m_keyLabel1(new QLabel("CNPJ")),
    m_keyLabel2(new QLabel("Data Início")),
    m_updateBox(new QGroupBox),
    m_database("UpdateConn")
{
    QVBoxLayout *mainLayout = new QVBoxLayout(this);

    // Make buttons toggleable
    for(QPushButton *but: m_buttons){
        but->setCheckable(true);
    }

    // Toggle first button as default
    m_checkedButton = 0;
    m_buttons[m_checkedButton]->setChecked(true);

    // Create button box
    QGroupBox *buttonBox = new QGroupBox;
    // Rows of buttons will be placed vertically on the button box
    QVBoxLayout *mainButLayout = new QVBoxLayout(buttonBox);
    QHBoxLayout *butLayout1 = new QHBoxLayout(); // Row 1
    mainButLayout->addLayout(butLayout1);
    butLayout1->addWidget(m_buttons[0]);
    butLayout1->addWidget(m_buttons[1]);
    butLayout1->addWidget(m_buttons[2]);

    // Create the box for the LineEdit for writing the 'key' by which we will search on the database
    QFormLayout *keyInputLayout = new QFormLayout;
    keyInputLayout->addRow(m_keyLabel1, m_keyLineEdit1);
    keyInputLayout->addRow(m_keyLabel2, m_keyLineEdit2);
    m_keyLineEdit2->setDisabled(true);

    // Create Group Box where the updating will happen
    m_updateBox->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    m_updateBox->setLayout(new QFormLayout);

    mainLayout->addWidget(buttonBox);
    mainLayout->addLayout(keyInputLayout);
    mainLayout->addWidget(m_updateBox);


    // Connect signals

    // Connect signals for allowing only 1 pressed button at a time
    for(QPushButton *but: m_buttons){
        connect(but, &QPushButton::clicked, this, [this, but](void){
            handleGroupButtonsPressed(but);
        });
    }

    // Connect signal on the line edit for when the user presses enter
    connect(m_keyLineEdit1, SIGNAL(returnPressed()), this, SLOT(handleReturnPressed()));
    connect(m_keyLineEdit2, SIGNAL(returnPressed()), this, SLOT(handleReturnPressed()));
}

void UpdateInterface::cleanUpdateBox(){
    delete m_updateBox->layout();

    auto children = m_updateBox->children();
    for(auto &child: children){
        delete child;
    }

    m_updateBox->setLayout(new QFormLayout);
}

void UpdateInterface::beginUpdateParque(QString cnpj){
    // Clean update box
    cleanUpdateBox();

    // Get information of the searched parque
    StringPairVector vec = m_database.selectParque(cnpj);

    if(vec.empty()){
        handleWrongKey();
    } else {
        // Fills the QFormBox with LineEdits
        QVector<QLineEdit *> leVec = setUpdateBox(vec, {"CNPJ"});

        QFormLayout *layout = (QFormLayout *) m_updateBox->layout();

        // Add a button and connect signals for performing the UPDATE
        QPushButton *button = new QPushButton("Modificar");
        connect(button, &QPushButton::clicked, this, [this, leVec](){
            // Insert on database
            QString error = m_database.updateParque(leVec[0]->text(), leVec[1]->text(),
                                                    leVec[2]->text(), leVec[3]->text());
            if(error != ""){
                launchDialog(error);
            } else {
                launchDialog("Modificado com sucesso.");
            }
        });
        layout->addWidget(button);
    }
}

void UpdateInterface::beginUpdateFestaParque(QString cnpj, QString dataInicio){
    // Clean update box
    cleanUpdateBox();

    // Get information of the searched festa
    StringPairVector vec = m_database.selectFestaParque(cnpj, dataInicio);

    if(vec.empty()){
        handleWrongKey();
    } else {
        // Fills the QFormBox with LineEdits
        QVector<QLineEdit *> leVec = setUpdateBox(vec, {"CNPJ do Parque", "Data Início"});

        QFormLayout *layout = (QFormLayout *) m_updateBox->layout();

        // Add a button and connect signals for performing the UPDATE
        QPushButton *button = new QPushButton("Modificar");
        connect(button, &QPushButton::clicked, this, [this, leVec](){
            // Insert on database
            QString error = m_database.updateFestaParque(
                    leVec[0]->text(), leVec[1]->text(), leVec[2]->text(),
                    leVec[3]->text(), leVec[4]->text()
                );

            if(error != ""){
                launchDialog(error);
            } else {
                launchDialog("Modificado com sucesso.");
            }
        });
        layout->addWidget(button);
    }
}

void UpdateInterface::beginUpdateFestaCruzeiro(QString imo, QString dataInicio){
    // Clean update box
    cleanUpdateBox();

    // Get information of the searched festa
    StringPairVector vec = m_database.selectFestaCruzeiro(imo, dataInicio);

    if(vec.empty()){
        handleWrongKey();
    } else {
        // Fills the QFormBox with LineEdits
        QVector<QLineEdit *> leVec = setUpdateBox(vec, {"IMO", "Data Início"});

        QFormLayout *layout = (QFormLayout *) m_updateBox->layout();

        // Add a button and connect signals for performing the UPDATE
        QPushButton *button = new QPushButton("Modificar");
        connect(button, &QPushButton::clicked, this, [this, leVec](){
            // Insert on database
            QString error = m_database.updateFestaCruzeiro(
                    leVec[0]->text(), leVec[1]->text(), leVec[2]->text(),
                    leVec[3]->text(), leVec[4]->text()
                );

            if(error != ""){
                launchDialog(error);
            } else {
                launchDialog("Modificado com sucesso.");
            }
        });
        layout->addWidget(button);
    }
}

void UpdateInterface::handleWrongKey(){
    // Clean update box first
    cleanUpdateBox();

    m_updateBox->layout()->addWidget(new QLabel("Chave não encontrada."));
}

void UpdateInterface::handleReturnPressed(){
    QString line1 = m_keyLineEdit1->text();
    QString line2 = m_keyLineEdit2->text();

    if(m_checkedButton == 0){
        beginUpdateParque(line1);
    } else if(m_checkedButton == 1){
        beginUpdateFestaParque(line1, line2);
    } else if(m_checkedButton == 2){
        beginUpdateFestaCruzeiro(line1, line2);
    }
}

void UpdateInterface::handleGroupButtonsPressed(QPushButton *clickedButton){
    // Empty the delete box
    this->cleanUpdateBox();

    // Disable all buttons
    for(QPushButton *b: m_buttons)
        b->setChecked(false);

    // Enable current button
    clickedButton->setChecked(true);

    // Change lineEdits accordingly
    QString butText = clickedButton->text();
    if(butText == "Parques"){
        m_keyLabel1->setText("CNPJ");

        m_keyLineEdit1->setDisabled(false);
        m_keyLineEdit2->setDisabled(true);
    } else if(butText == "Festas no Parque") {
        m_keyLabel1->setText("CNPJ");
        m_keyLabel2->setText("Data Início");

        m_keyLineEdit1->setDisabled(false);
        m_keyLineEdit2->setDisabled(false);
    } else if(butText == "Festas no Cruzeiro") {
        m_keyLabel1->setText("IMO");
        m_keyLabel2->setText("Data Início");

        m_keyLineEdit1->setDisabled(false);
        m_keyLineEdit2->setDisabled(false);
    }

    // Update m_checkedButton to reflect which button is pressed
    m_checkedButton = m_buttons.indexOf(clickedButton);
}

void UpdateInterface::launchDialog(QString message){
    QDialog *diag = new QDialog(this);
    QVBoxLayout *diagLayout = new QVBoxLayout;
    QLabel *lab = new QLabel(message);
    diag->setLayout(diagLayout);
    diagLayout->addWidget(lab);
    diag->setWindowModality(Qt::ApplicationModal);

    diag->exec();
}

QVector<QLineEdit *> UpdateInterface::setUpdateBox(StringPairVector data, QVector<QString> keys){
    QFormLayout *layout = (QFormLayout *) m_updateBox->layout();

    // Add editable information on the box
    QVector<QLineEdit *> leVec;
    for(QPair<QString, QString> &pair: data){
        QLineEdit *le = new QLineEdit(pair.second);
        layout->addRow(pair.first, le);

        if(keys.indexOf(pair.first) >= 0){
            le->setEnabled(false);
            le->setReadOnly(true);
        }

        leVec.append(le);
    }

    return leVec;
}
