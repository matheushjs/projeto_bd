#include "widgets/dataselectiondisplay.h"
#include "data_structures/reporttextdata.h"
#include "widgets/clickablelabel.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QScrollArea>
#include <QSizePolicy>

DataSelectionDisplay::DataSelectionDisplay(QWidget *parent)
  : QWidget(parent),
    m_scrollArea(new QScrollArea)
{
    QVBoxLayout *outerLayout = new QVBoxLayout;
    this->setLayout(outerLayout);
    outerLayout->addWidget(m_scrollArea);
}

void DataSelectionDisplay::setReport(ReportTextData report){
    m_report = report;
    m_labels.clear();

    /* Add header label */
    QString header = report.header();
    ClickableLabel *headerLabel = new ClickableLabel(header);
    headerLabel->setFont(QFont("", 18, 50));
    m_labels.append(headerLabel);

    /* Add item labels */
    StringPairVectorList list = report.items();
    for(auto &vec: list){
        QString str;
        for(auto &pair: vec){
            str += pair.first + ": " + pair.second + "\n";
        }
        ClickableLabel *lab = new ClickableLabel(str);

        m_labels.append(lab);
    }

    /* Create widget that will be placed in the scroll area */
    QWidget *holdWidget = new QWidget;
    QVBoxLayout *holdLayout = new QVBoxLayout;
    holdWidget->setLayout(holdLayout);

    /* Add labels to the widget */
    for(ClickableLabel *w: m_labels){
        holdLayout->addWidget(w);
    }

    /* Connect signals on the widget. Item 0 is the header that we don't care about. */
    for(int item = 1; item < m_labels.size(); item++){
        ClickableLabel *lab = m_labels.at(item);
        connect(lab, &ClickableLabel::clicked, this, [this, item](){
            emit itemClicked(item - 1);
        });
    }

    QWidget *old = m_scrollArea->takeWidget();
    if(old) delete old;

    /* In my honest opinion, the line below is the famous gambiarra */
    m_scrollArea->setWidget(holdWidget);
}

StringPairVector DataSelectionDisplay::getItem(int itemNumber){
    return m_report.items().at(itemNumber);
}
