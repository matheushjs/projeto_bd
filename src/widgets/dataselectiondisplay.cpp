#include "widgets/dataselectiondisplay.h"

#include <QLabel>
#include <QVBoxLayout>

DataSelectionDisplay::DataSelectionDisplay(QWidget *parent)
  : QWidget(parent),
    m_mainLayout(new QVBoxLayout)
{
    this->setLayout(m_mainLayout);
}

void DataSelectionDisplay::setReport(ReportTextData report){
    for(QLabel *l: m_labels){
        m_mainLayout->removeWidget(l);
        delete l;
    }
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
        m_labels.append(new QLabel(str));
    }

    for(QLabel *w: m_labels){
        m_mainLayout->addWidget(w);
    }
}
