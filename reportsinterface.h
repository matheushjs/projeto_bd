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
    double m_normalFontSize;
    double m_headingFontSize;

    /* Scrolls the TextEdit to the top portion. */
    void scrollToTop();

    /* Adds text to the TextEdit, with heading stylization */
    void addHeading(QString heading);

public:
    explicit ReportsInterface(QWidget *parent = 0);

private slots:
    void displayReport(ReportTextData report);
};

#endif // REPORTSINTERFACE_H
