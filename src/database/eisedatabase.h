#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>

#include "data_structures/reporttextdata.h"

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

    // Returns information of a single parque
    // If parque is not found, returns an empty vector
    StringPairVector selectParque(QString cnpj);
};

#endif // EISEDATABASE_H
