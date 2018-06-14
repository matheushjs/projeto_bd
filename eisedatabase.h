#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>

#include "reporttextdata.h"

class EISEDatabase
{
    QSqlDatabase m_database;

public:
    /* connName should be a unique identified for your connection */
    EISEDatabase(QString connName);

    QStringList getTableNames();

    ReportTextData getReport1();
    ReportTextData getReport2();
    ReportTextData getReport3();
    ReportTextData getReport4();
    ReportTextData getReport5();
    ReportTextData getReport6();

    ReportTextData getSelect1();
};

#endif // EISEDATABASE_H
