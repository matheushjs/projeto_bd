#include <QVBoxLayout>
#include <QGroupBox>
#include <QPushButton>
#include <QTextEdit>

#include "reportsinterface.h"
#include "eisedatabase.h"

ReportsInterface::ReportsInterface(QWidget *parent)
  : QWidget(parent),
    m_buttons({
        new QPushButton("Botão 1"),
        new QPushButton("Botão 2"),
        new QPushButton("Botao 3"),
        new QPushButton("Botao 4")
      }),
    m_textEdit(new QTextEdit)
{
    // Set layout
    QVBoxLayout *mainLayout = new QVBoxLayout(this);

    // Set buttons box
    QGroupBox *buttonBox = new QGroupBox();
    QHBoxLayout *butLayout = new QHBoxLayout(buttonBox);
    for(QPushButton *but: m_buttons)
        butLayout->addWidget(but);

    // Build html
    QString html = "<h2>Lista de Tabelas no Banco</h2>";
    QStringList list = EISEDatabase().getTableNames();
    for(QString &str: list){
        html += "<p>" + str + "</p>";
    }

    // Set text edit
    m_textEdit->setHtml(html);
    m_textEdit->setReadOnly(true);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}

