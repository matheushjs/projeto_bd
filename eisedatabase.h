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
};

#endif // EISEDATABASE_H
