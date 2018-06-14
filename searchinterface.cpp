#include <QPushButton>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QGroupBox>

#include "searchinterface.h"
#include "dataselectiondisplay.h"
#include "eisedatabase.h"

SearchInterface::SearchInterface(QWidget *parent)
  : QWidget(parent),
    m_buttons({
              new QPushButton("Parques"),
              new QPushButton("Festas no Parque"),
              new QPushButton("Festas no Cruzeiro"),
              }),
    m_dataDisplay(new DataSelectionDisplay),
    m_database("SearchConn")
{
    QVBoxLayout *mainLayout = new QVBoxLayout(this);

    // Create button box
    QGroupBox *buttonBox = new QGroupBox();
    // Rows of buttons will be placed vertically on the button box
    QVBoxLayout *mainButLayout = new QVBoxLayout(buttonBox);
    QHBoxLayout *butLayout1 = new QHBoxLayout(); // Row 1
    mainButLayout->addLayout(butLayout1);
    butLayout1->addWidget(m_buttons[0]);
    butLayout1->addWidget(m_buttons[1]);
    butLayout1->addWidget(m_buttons[2]);

    connect(m_buttons[0], &QPushButton::clicked, this, [this](){
        this->m_dataDisplay->setReport(this->m_database.getSelect1());
    });

    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_dataDisplay);
}

