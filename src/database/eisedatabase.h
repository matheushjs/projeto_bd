#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>
#include <iostream>


#include "data_structures/reporttextdata.h"

class EISEDatabase
{
    QSqlDatabase m_database;

public:
    /* connName should be a unique identified for your connection */
    EISEDatabase(QString connName);

    QStringList getTableNames();

    /* REPORTS */
    ReportTextData getReport1();
    ReportTextData getReport2();
    ReportTextData getReport3();
    ReportTextData getReport4();
    ReportTextData getReport5();
    ReportTextData getReport6();

    /* SELECTS */
    ReportTextData getSelect1();
    // Returns information of a single parque
    // If parque is not found, returns an empty vector
    StringPairVector selectParque(QString cnpj);

    /* UPDATES */
    // Updates parque that has the given cnpj with the given information.
    // Returns an error string, or empty string if successful.
    QString updateParque(QString cnpj, QString nome, QString mapa, QString endereco);

    QString insertCruiseParty(QVector<QString> insertData);
    void commitTransaction();
    void rollbackTransaction();
    StringPairVectorList getEmployeesData();
    StringPairVectorList getEquipmentsData();
    StringPairVectorList getBandsData();
};

#endif // EISEDATABASE_H
