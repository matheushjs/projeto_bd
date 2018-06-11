
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

QStringList EISEDatabase::getReport1(){
    /*
    Dado um músico de nome M, quero saber as banda onde ele já trabalhou, seu cpf, o contrato dos shows que essas bandas já realizaram, e o nome da festa no cruzeiro associada.
    Se o músico está cadastrado, mas não realizou nenhum show, isso deve também ser mostrado.


    */
    const static QString query = "\
        SELECT M.nome AS nome_musico,\
            M.cpf AS cpf_musico,\
            C.nomeBanda AS nome_banda,\
            S.contrato AS show_contrato,\
            FC.nome AS festa_nome\
        FROM musico M\
        LEFT JOIN compoe C\
            ON M.cpf = C.cpfmusico\
        LEFT JOIN show S\
            ON (S.nomebanda, S.dataCriacaoBanda) = (C.nomeBanda, C.dataCriacaoBanda)\
        LEFT JOIN festaNoCruzeiro FC ON (S.imo, S.datafesta) = (FC.imo, FC.datainicio);";

    QSqlQuery rows = this->m_database.exec(query);
    QStringList retval;
    while(rows.next()){
        QString value;
        for(int i = 0; i < 5; i++){
            value += rows.value(i).toString();
        }
        retval.append(value);
    }

    return retval;
}
