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

    connect(m_buttons[0], SIGNAL(clicked(bool)), this, SLOT(displayReport1()));
    connect(m_buttons[1], SIGNAL(clicked(bool)), this, SLOT(displayReport2()));
    connect(m_buttons[2], SIGNAL(clicked(bool)), this, SLOT(displayReport3()));
    connect(m_buttons[3], SIGNAL(clicked(bool)), this, SLOT(displayReport4()));
    connect(m_buttons[4], SIGNAL(clicked(bool)), this, SLOT(displayReport5()));
    connect(m_buttons[5], SIGNAL(clicked(bool)), this, SLOT(displayReport6()));

    m_textEdit->setFontPointSize(m_normalFontSize);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}

void ReportsInterface::scrollToTop(){
    QScrollBar *vScrollBar = m_textEdit->verticalScrollBar();
    vScrollBar->triggerAction(QScrollBar::SliderToMinimum);
}

void ReportsInterface::addHeading(QString &heading){
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

void ReportsInterface::displayReport1(){
    // Add heading
    QString header = "Para todos os músicos: seu cpf, bandas onde já trabalhou, "
                     "o contrato dos shows que essas bandas já realizaram, e o nome "
                     "da festa no cruzeiro associada.\n";

    this->addHeading(header);

    // Add table values
    QString str = m_database.getReport1();
    m_textEdit->append(str);
    m_textEdit->setReadOnly(true);

    this->scrollToTop();
}

void ReportsInterface::displayReport2(){
    QString str = m_database.getReport2();
    m_textEdit->setText(str);

    this->scrollToTop();
}

void ReportsInterface::displayReport3(){
    QString str = m_database.getReport2();
    m_textEdit->setText(str);

    this->scrollToTop();
}

void ReportsInterface::displayReport4(){
    QString str = m_database.getReport2();
    m_textEdit->setText(str);

    this->scrollToTop();
}

void ReportsInterface::displayReport5(){
    QString str = m_database.getReport2();
    m_textEdit->setText(str);

    this->scrollToTop();
}

void ReportsInterface::displayReport6(){
    QString str = m_database.getReport2();
    m_textEdit->setText(str);

    this->scrollToTop();
}
