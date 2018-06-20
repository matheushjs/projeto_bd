#include "widgets/dataselectiondisplay.h"
#include "data_structures/reporttextdata.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QScrollArea>
#include <QSizePolicy>

#include <iostream>

DataSelectionDisplay::DataSelectionDisplay(QWidget *parent)
  : QWidget(parent),
    m_scrollArea(new QScrollArea)
{
    QVBoxLayout *outerLayout = new QVBoxLayout;
    this->setLayout(outerLayout);
    outerLayout->addWidget(m_scrollArea);
}

void DataSelectionDisplay::setReport(ReportTextData report){
    m_labels.clear();

    /* Add header label */
    QString header = report.header();
    QLabel *headerLabel = new QLabel(header);
    headerLabel->setFont(QFont("", 18, 50));
    m_labels.append(headerLabel);

    StringPairVectorList list = report.items();
    for(auto &vec: list){
        QString str;
        for(auto &pair: vec){
            str += pair.first + ": " + pair.second + "\n";
        }
        QLabel *lab = new QLabel(str);
        // lab->setSizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        // lab->setMinimumSize(lab->sizeHint().width(), lab->sizeHint().height());

        m_labels.append(lab);
    }

    QWidget *holdWidget = new QWidget;
    QVBoxLayout *holdLayout = new QVBoxLayout;
    holdWidget->setLayout(holdLayout);

    for(QLabel *w: m_labels){
        holdLayout->addWidget(w);
    }

    QWidget *old = m_scrollArea->takeWidget();
    delete old;

    /* In my honest opinion, the line below is the famous gambiarra */
    m_scrollArea->setWidget(holdWidget);
}
