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

    /* Scrolls the TextEdit to the top portion. */
    void scrollToTop();

public:
    explicit ReportsInterface(QWidget *parent = 0);

private slots:
    void displayReport(ReportTextData report);
};

#endif // REPORTSINTERFACE_H
