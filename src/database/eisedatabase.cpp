
#include <iostream>

#include "database/eisedatabase.h"

EISEDatabase::EISEDatabase(QString connName)
  : m_database(QSqlDatabase::addDatabase("QPSQL", connName))
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

    QSqlQuery rows = m_database.exec(query);
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

ReportTextData EISEDatabase::getSelect1(){
    const static QString query = "SELECT * FROM parque;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;
    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"CNPJ", rows.value(0).toString()} );
        vec.append( {"Nome", rows.value(1).toString()} );
        vec.append( {"Arquivo do Mapa", rows.value(2).toString()} );
        vec.append( {"Endereço", rows.value(3).toString()} );

        items.append(vec);
    }

    ReportTextData report;
    report.setHeader("Parques");
    report.setItems(items);

    return report;
}

QString EISEDatabase::insertCruiseParty(QVector<QString> insertData)
{
    const QString partyQuery = QString("INSERT INTO festaNoCruzeiro ( IMO, dataInicio, dataFim, numeroConvidados, nome ) "
     "VALUES (%1, to_date ('%2', 'YYYY-MM-DD'), to_date ('%3', 'YYYY-MM-DD'), %4, '%5');").arg(insertData[0],insertData[1],insertData[2], insertData[3],insertData[4]);


    QSqlQuery partyRows = m_database.exec(partyQuery);
    QSqlError err1 = partyRows.lastError();

    const QString localQuery = QString("INSERT INTO locaisCruzeiro ( IMO, dataFesta, local ) "
    "VALUES (%1, to_date ('%2', 'YYYY-MM-DD'), '%3')").arg(insertData[0],insertData[1],insertData[5]);

    QSqlQuery localRows = m_database.exec(localQuery);
    QSqlError err2 = localRows.lastError();    

    return err1.isValid() ? 
        err1.databaseText() + "\n" + err1.driverText() + "\n\n" + err2.databaseText() + "\n" + err2.driverText(): "";

}

StringPairVector EISEDatabase::selectParque(QString cnpj){
    const QString query = "SELECT * FROM parque WHERE cnpj = '" + cnpj + "';";

    QSqlQuery rows = m_database.exec(query);
    StringPairVector vec;
    while(rows.next()){
        vec.append( {"CNPJ", rows.value(0).toString()} );
        vec.append( {"Nome", rows.value(1).toString()} );
        vec.append( {"Arquivo do Mapa", rows.value(2).toString()} );
        vec.append( {"Endereço", rows.value(3).toString()} );
    }

    return vec;
}

QString EISEDatabase::updateParque(QString cnpj, QString nome,
                                QString mapa, QString endereco)
{
    const QString query = QString(
                "UPDATE parque "
                "SET nome = '%1', "
                "    mapafilepath = '%2', "
                "    endereco = '%3' "
                "WHERE cnpj = '%4' "
                ).arg(nome, mapa, endereco, cnpj);

    QSqlQuery rows = m_database.exec(query);
    QSqlError err = rows.lastError();

    return err.isValid() ?
        err.databaseText() + "\n" + err.driverText() :
        "";
}

void EISEDatabase::commitTransaction()
{
    const QString query("COMMIT;");
}

void EISEDatabase::rollbackTransaction()
{
    const QString query("ROLLBACK;");
}

StringPairVectorList EISEDatabase::getEmployeesData()
{
    const static QString query = "SELECT * FROM funcionario;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;

    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"CPF", rows.value(0).toString()} );
        vec.append( {"Nome", rows.value(1).toString()} );
        vec.append( {"RG", rows.value(2).toString()} );
        vec.append( {"Endereço", rows.value(3).toString()} );
        vec.append( {"Cargo", rows.value(4).toString()} );
        vec.append( {"Equipe", rows.value(5).toString()} );
        vec.append( {"Telefone", rows.value(6).toString()} );

        items.append(vec);
    }

    return items;
}

StringPairVectorList EISEDatabase::getBandsData()
{
    const static QString query = "SELECT b.nome, b.estiloMusical, b.tipo FROM banda b;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;

    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"Nome", rows.value(0).toString()} );
        vec.append( {"Estilo Musical", rows.value(1).toString()} );
        vec.append( {"Tipo", rows.value(2).toString()} );

        items.append(vec);
    }

    return items;
}

StringPairVectorList EISEDatabase::getEquipmentsData()
{
    const static QString query = "SELECT  e.tipo, e.nome, e.marca, e.modelo, e.quantidade FROM equipamento e WHERE e.tipo = 'CAMERA';";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;

    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"Tipo", rows.value(0).toString()} );
        vec.append( {"Nome", rows.value(1).toString()} );
        vec.append( {"Marca", rows.value(2).toString()} );
        vec.append( {"Modelo", rows.value(3).toString()} );
        vec.append( {"Quantidade", rows.value(4).toString()} );

        items.append(vec);
    }

    return items;
}

QString EISEDatabase::insertEmployees(QStringList empCpfs)
{
    //QString query1 = QString() 
}