#include <QVBoxLayout>
#include <QGroupBox>
#include <QPushButton>
#include <QTextEdit>

#include "reportsinterface.h"

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

    // Set text edit
    m_textEdit->setHtml("<h2><b>Olá! Esse é o querido lugar onde serão dispostos os relatórios.</b></h2>");
    m_textEdit->setReadOnly(true);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}

