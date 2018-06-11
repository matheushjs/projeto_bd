#ifndef REPORTSINTERFACE_H
#define REPORTSINTERFACE_H

#include <QWidget>
#include <QVector>

#include "eisedatabase.h"

class QPushButton;
class QTextEdit;

class ReportsInterface : public QWidget
{
    Q_OBJECT

    QVector<QPushButton *> m_buttons;
    QTextEdit *m_textEdit;
    EISEDatabase m_database;

public:
    explicit ReportsInterface(QWidget *parent = 0);

};

#endif // REPORTSINTERFACE_H
