#include <QPushButton>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QGroupBox>
#include <QScrollArea>

#include "tabs/searchinterface.h"
#include "widgets/dataselectiondisplay.h"
#include "database/eisedatabase.h"
#include "data_structures/reporttextdata.h"

#include <iostream>

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

    mainLayout->addWidget(buttonBox);

    QScrollArea *scroll = new QScrollArea(this);
    QVBoxLayout *vbox = new QVBoxLayout(scroll);
    scroll->setWidget(vbox->widget());
    vbox->addWidget(m_dataDisplay);

    mainLayout->addWidget(scroll);

    // Connect signals
    connect(m_buttons[0], &QPushButton::clicked, this, [this](){
        this->m_dataDisplay->setReport(this->m_database.getSelect1());
    });

    connect(m_dataDisplay, SIGNAL(itemClicked(int)), this, SLOT(editItem(int)));
}

void SearchInterface::editItem(int itemNum){
    StringPairVector vec = m_dataDisplay->getItem(itemNum);
    emit editParque(vec[0].second);
}
