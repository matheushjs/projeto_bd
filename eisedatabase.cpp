
#include <iostream>

#include "eisedatabase.h"

EISEDatabase::EISEDatabase()
  : m_database(QSqlDatabase::addDatabase("QPSQL"))
{
    // TODO: How to make this work in the professor's computer !?
    //m_database.setDatabaseName("eise");
    //m_database.setUserName("eise");
    //m_database.setPassword("");

    m_database.open();
}

QStringList EISEDatabase::getTableNames(){
    return m_database.tables();
}
