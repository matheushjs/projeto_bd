#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QGroupBox>
#include <QPushButton>
#include <QTextEdit>
#include <QScrollBar>
#include "reportsinterface.h"
#include "eisedatabase.h"

ReportsInterface::ReportsInterface(QWidget *parent)
  : QWidget(parent),
    m_buttons({
        new QPushButton("Relatório 1"),
        new QPushButton("Relatório 2"),
        new QPushButton("Relatório 3"),
        new QPushButton("Relatório 4"),
        new QPushButton("Relatório 5"),
        new QPushButton("Relatório 6"),
      }),
    m_textEdit(new QTextEdit),
    m_database(),
    m_normalFontSize(12.0),
    m_headingFontSize(28.0)
{
    // Set layout
    QVBoxLayout *mainLayout = new QVBoxLayout(this);

    // Set buttons box
    QGroupBox *buttonBox = new QGroupBox();

    QVBoxLayout *mainButLayout = new QVBoxLayout(buttonBox);
    QHBoxLayout *butLayout1 = new QHBoxLayout();
    QHBoxLayout *butLayout2 = new QHBoxLayout();
    mainButLayout->addLayout(butLayout1);
    mainButLayout->addLayout(butLayout2);

    butLayout1->addWidget(m_buttons[0]);
    butLayout1->addWidget(m_buttons[1]);
    butLayout1->addWidget(m_buttons[2]);

    butLayout2->addWidget(m_buttons[3]);
    butLayout2->addWidget(m_buttons[4]);
    butLayout2->addWidget(m_buttons[5]);

    connect(m_buttons[0], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport1());
    });
    connect(m_buttons[1], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport2());
    });
    connect(m_buttons[2], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport3());
    });
    connect(m_buttons[3], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport4());
    });
    connect(m_buttons[4], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport5());
    });
    connect(m_buttons[5], &QPushButton::clicked, this, [this](){
        this->displayReport(m_database.getReport6());
    });

    m_textEdit->setFontPointSize(m_normalFontSize);
    m_textEdit->setReadOnly(true);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}

void ReportsInterface::scrollToTop(){
    QScrollBar *vScrollBar = m_textEdit->verticalScrollBar();
    vScrollBar->triggerAction(QScrollBar::SliderToMinimum);
}

void ReportsInterface::addHeading(QString heading){
    auto oldWeight = m_textEdit->fontWeight();
    auto oldAlign = m_textEdit->alignment();

    m_textEdit->setFontWeight(QFont::Bold);
    m_textEdit->setFontPointSize(m_headingFontSize);
    m_textEdit->setAlignment(Qt::AlignJustify);

    m_textEdit->setText(heading);

    /* Restore old values */
    m_textEdit->setFontWeight(oldWeight);
    m_textEdit->setFontPointSize(m_normalFontSize);
    m_textEdit->setAlignment(oldAlign);
}

void ReportsInterface::displayReport(ReportTextData report){
    this->addHeading(report.header());

    // Add table values
    m_textEdit->append(report.text());

    this->scrollToTop();
}
