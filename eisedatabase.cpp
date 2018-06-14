
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

ReportTextData EISEDatabase::getReport1(){
    /*
    Dado um músico de nome M, quero saber as banda onde ele já trabalhou, seu cpf, o contrato dos shows que essas bandas já realizaram, e o nome da festa no cruzeiro associada.
    Se o músico está cadastrado, mas não realizou nenhum show, isso deve também ser mostrado.
    */

    const static QString query =
"SELECT M.nome AS nome_musico,\n\
    M.cpf AS cpf_musico,\n\
    C.nomeBanda AS nome_banda,\n\
    S.contrato AS show_contrato,\n\
    FC.nome AS festa_nome\n\
FROM musico M\n\
LEFT JOIN compoe C\n\
    ON M.cpf = C.cpfmusico\n\
LEFT JOIN show S\n\
    ON (S.nomebanda, S.dataCriacaoBanda) = (C.nomeBanda, C.dataCriacaoBanda)\n\
LEFT JOIN festaNoCruzeiro FC\n\
ON (S.imo, S.datafesta) = (FC.imo, FC.datainicio)\n\
ORDER BY M.nome;";

    QSqlQuery rows = this->m_database.exec(query);
    StringPairVectorList items;
    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"Nome do Músico", rows.value(0).toString()} );
        vec.append( {"CPF do Músico", rows.value(1).toString()} );
        vec.append( {"Nome da Banda", rows.value(2).toString()} );
        vec.append( {"Contrato do Show", rows.value(3).toString()} );
        vec.append( {"Nome da Festa", rows.value(4).toString()} );

        items.append(vec);
    }

    const static QString header = "Informações sobre Músicos\n";

    const static QString description = "Para todos os músicos: seu cpf, bandas onde já trabalhou, "
                     "o contrato dos shows que essas bandas já realizaram, e o nome "
                     "da festa no cruzeiro associada.\n";

    ReportTextData ret;
    ret.setItems(items);
    ret.setHeader(header);
    ret.setQuery(query);
    ret.setDescription(description);
    return ret;
}

ReportTextData EISEDatabase::getReport2(){
    ReportTextData ret;
    ret.setDescription("Nothing yet!");
    return ret;
}

ReportTextData EISEDatabase::getReport3(){
    ReportTextData ret;
    ret.setDescription("Nothing yet!");
    return ret;
}

ReportTextData EISEDatabase::getReport4(){
    ReportTextData ret;
    ret.setDescription("Nothing yet!");
    return ret;
}

ReportTextData EISEDatabase::getReport5(){
    ReportTextData ret;
    ret.setDescription("Nothing yet!");
    return ret;
}

ReportTextData EISEDatabase::getReport6(){
    ReportTextData ret;
    ret.setDescription("Nothing yet!");
    return ret;
}
