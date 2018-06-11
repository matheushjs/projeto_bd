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
    m_textEdit(new QTextEdit),
    m_database()
{
    // Set layout
    QVBoxLayout *mainLayout = new QVBoxLayout(this);

    // Set buttons box
    QGroupBox *buttonBox = new QGroupBox();
    QHBoxLayout *butLayout = new QHBoxLayout(buttonBox);
    for(QPushButton *but: m_buttons)
        butLayout->addWidget(but);

    // Add heading
    QString header =
"Para todos os músicos: seu cpf, bandas onde já trabalhou, \
o contrato dos shows que essas bandas já realizaram, e o nome \
da festa no cruzeiro associada.\n\n";
    m_textEdit->setFontWeight(QFont::Bold);
    m_textEdit->setText(header);


    // Add table values
    QString str = m_database.getReport1();
    m_textEdit->setFontWeight(QFont::Normal);
    m_textEdit->setAlignment(Qt::AlignLeft);
    m_textEdit->append(str);
    m_textEdit->setReadOnly(true);

    // Add widgets to main layout
    mainLayout->addWidget(buttonBox);
    mainLayout->addWidget(m_textEdit);
}
