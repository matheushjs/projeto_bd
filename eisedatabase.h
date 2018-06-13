#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>

#include "reporttextdata.h"

class EISEDatabase
{
    QSqlDatabase m_database;

public:
    EISEDatabase();

    QStringList getTableNames();
    ReportTextData getReport1();
    ReportTextData getReport2();
    ReportTextData getReport3();
    ReportTextData getReport4();
    ReportTextData getReport5();
    ReportTextData getReport6();
};

#endif // EISEDATABASE_H
