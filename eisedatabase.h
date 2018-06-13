#ifndef EISEDATABASE_H
#define EISEDATABASE_H

#include <QtSql/QtSql>
#include <QStringList>

class EISEDatabase
{
    QSqlDatabase m_database;

public:
    EISEDatabase();

    QStringList getTableNames();
    QString getReport1();
    QString getReport2();
    QString getReport3();
    QString getReport4();
    QString getReport5();
    QString getReport6();
};

#endif // EISEDATABASE_H
