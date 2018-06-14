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
    m_database("ReportsConn")
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

    m_textEdit->setReadOnly(true);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}

void ReportsInterface::scrollToTop(){
    QScrollBar *vScrollBar = m_textEdit->verticalScrollBar();
    vScrollBar->triggerAction(QScrollBar::SliderToMinimum);
}

void ReportsInterface::displayReport(ReportTextData report){
    static const struct {
        double fontSize;
        int fontWeight;
        Qt::Alignment alignment;
    } HEADER_FONT = {
        28,
        QFont::Bold,
        Qt::AlignCenter
    }, NORMAL_FONT = {
        10,
        QFont::Normal,
        Qt::AlignLeft
    }, QUERY_FONT = {
        12,
        QFont::Bold,
        Qt::AlignLeft
    }, DESC_FONT = {
        12,
        QFont::Bold,
        Qt::AlignJustify
    };


    m_textEdit->setFontWeight(HEADER_FONT.fontWeight);
    m_textEdit->setFontPointSize(HEADER_FONT.fontSize);
    m_textEdit->setAlignment(HEADER_FONT.alignment);
    m_textEdit->setText(report.header());

    m_textEdit->setFontWeight(DESC_FONT.fontWeight);
    m_textEdit->setFontPointSize(DESC_FONT.fontSize);
    m_textEdit->setAlignment(DESC_FONT.alignment);
    m_textEdit->append("\n");
    m_textEdit->append(report.description());

    m_textEdit->setFontWeight(QUERY_FONT.fontWeight);
    m_textEdit->setFontPointSize(QUERY_FONT.fontSize);
    m_textEdit->setAlignment(QUERY_FONT.alignment);
    m_textEdit->append("\n");
    m_textEdit->append(report.query());

    m_textEdit->setFontWeight(NORMAL_FONT.fontWeight);
    m_textEdit->setFontPointSize(NORMAL_FONT.fontSize);
    m_textEdit->setAlignment(NORMAL_FONT.alignment);
    m_textEdit->append("\n");

    StringPairVectorList list = report.items();
    for(auto &vector: list){
        QString str("{\n");
        for(auto pair: vector){
            str += "  " + pair.first + ": " + pair.second + "\n";
        }
        str += "}\n";
        m_textEdit->append(str);
    }

    this->scrollToTop();
}
