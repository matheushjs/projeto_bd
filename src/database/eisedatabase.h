#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>
#include <iostream>


#include "data_structures/reporttextdata.h"
#include "data_structures/cruiseparty.h"
#include "data_structures/cruiseemployee.h"
#include "data_structures/cameraman.h"

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
    ReportTextData getSelect1(); // parque
    ReportTextData getSelect2(); // festa no parque
    ReportTextData getSelect3(); // festa no cruzeiro
    // Returns information of a single parque/festaNoParque/festaNoCruzeiro
    // If not found, returns an empty vector
    StringPairVector selectParque(QString cnpj);
    StringPairVector selectFestaParque(QString cnpj, QString dataInicio);
    StringPairVector selectFestaCruzeiro(QString imo, QString dataInicio);

    /* UPDATES */
    // Updates parque that has the given cnpj with the given information.
    // Returns an error string, or empty string if successful.
    QString updateParque(QString cnpj, QString nome, QString mapa, QString endereco);
    QString updateFestaParque(QString cnpj, QString dataInicio, QString dataFim,
                              QString nroConvidados, QString nome);
    QString updateFestaCruzeiro(QString imo, QString dataInicio, QString dataFim,
                                QString nroConvidados, QString nome);

    QString insertCruiseParty(CruiseParty party);
    void commitTransaction();
    void rollbackTransaction();
    StringPairVectorList getEmployeesData(QString partyStartDate, QString partyEndDate);
    StringPairVectorList getCamerasData(QString partyStartDate);
    StringPairVectorList getEquipmentsData();
    StringPairVectorList getBandsData();
};

#endif // EISEDATABASE_H
