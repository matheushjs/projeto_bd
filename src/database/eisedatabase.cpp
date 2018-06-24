
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

ReportTextData EISEDatabase::getSelect2(){
    const static QString query = "SELECT * FROM festanoparque;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;
    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"CNPJ do Parque", rows.value(0).toString()} );
        vec.append( {"Data Início", rows.value(1).toString()} );
        vec.append( {"Data Fim", rows.value(2).toString()} );
        vec.append( {"# Convidados", rows.value(3).toString()} );
        vec.append( {"Nome", rows.value(4).toString()} );

        items.append(vec);
    }

    ReportTextData report;
    report.setHeader("Festas no Parque");
    report.setItems(items);

    return report;
}

ReportTextData EISEDatabase::getSelect3(){
    const static QString query = "SELECT * FROM festanocruzeiro;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;
    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"IMO", rows.value(0).toString()} );
        vec.append( {"Data Início", rows.value(1).toString()} );
        vec.append( {"Data Fim", rows.value(2).toString()} );
        vec.append( {"# Convidados", rows.value(3).toString()} );
        vec.append( {"Nome", rows.value(4).toString()} );

        items.append(vec);
    }

    ReportTextData report;
    report.setHeader("Festas no Cruzeiro");
    report.setItems(items);

    return report;
}

QString EISEDatabase::insertCruiseParty(CruiseParty party)
{
    const QString partyQuery = QString("INSERT INTO festaNoCruzeiro ( IMO, dataInicio, dataFim, numeroConvidados, nome ) "
     "VALUES (%1, to_date ('%2', 'YYYY-MM-DD'), to_date ('%3', 'YYYY-MM-DD'), %4, '%5');").arg(party.IMO(),party.initialDate(),
     party.endDate(), party.nOfGuest(),party.name());


    QSqlQuery partyRows = m_database.exec(partyQuery);
    QSqlError err1 = partyRows.lastError();

    const QString localQuery = QString("INSERT INTO locaisCruzeiro ( IMO, dataFesta, local ) "
    "VALUES (%1, to_date ('%2', 'YYYY-MM-DD'), '%3')").arg(party.local(),party.IMO(),party.initialDate());

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

StringPairVector EISEDatabase::selectFestaParque(QString cnpj, QString dataInicio){
    const QString query = QString(
            "SELECT * FROM festanoparque "
            "WHERE cnpjparque = '%1' AND datainicio = '%2'"
        ).arg(cnpj, dataInicio);

    QSqlQuery rows = m_database.exec(query);
    StringPairVector vec;
    while(rows.next()){
        vec.append( {"CNPJ do Parque", rows.value(0).toString()} );
        vec.append( {"Data Início", rows.value(1).toString()} );
        vec.append( {"Data Fim", rows.value(2).toString()} );
        vec.append( {"# Convidados", rows.value(3).toString()} );
        vec.append( {"Nome", rows.value(4).toString()} );
    }

    return vec;
}

StringPairVector EISEDatabase::selectFestaCruzeiro(QString imo, QString dataInicio){
    const QString query = QString(
            "SELECT * FROM festanocruzeiro "
            "WHERE imo = '%1' AND datainicio = '%2'"
        ).arg(imo, dataInicio);

    QSqlQuery rows = m_database.exec(query);
    StringPairVector vec;
    while(rows.next()){
        vec.append( {"IMO", rows.value(0).toString()} );
        vec.append( {"Data Início", rows.value(1).toString()} );
        vec.append( {"Data Fim", rows.value(2).toString()} );
        vec.append( {"# Convidados", rows.value(3).toString()} );
        vec.append( {"Nome", rows.value(4).toString()} );
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

QString EISEDatabase::updateFestaParque(QString cnpj, QString dataInicio, QString dataFim, QString nroConvidados, QString nome){
    const QString query = QString(
                "UPDATE festanoparque "
                "SET datafim = '%1', "
                "    numeroconvidados = '%2', "
                "    nome = '%3'"
                "WHERE cnpjparque = '%4' "
                "AND   datainicio = '%5'"
                ).arg(dataFim, nroConvidados, nome, cnpj, dataInicio);

    QSqlQuery rows = m_database.exec(query);
    QSqlError err = rows.lastError();

    return err.isValid() ?
        err.databaseText() + "\n" + err.driverText() :
        "";
}

QString EISEDatabase::updateFestaCruzeiro(QString imo, QString dataInicio, QString dataFim, QString nroConvidados, QString nome){
    const QString query = QString(
                "UPDATE festanocruzeiro "
                "SET datafim = '%1', "
                "    numeroconvidados = '%2', "
                "    nome = '%3'"
                "WHERE imo = '%4' "
                "AND   datainicio = '%5'"
                ).arg(dataFim, nroConvidados, nome, imo, dataInicio);

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

StringPairVectorList EISEDatabase::getEmployeesData(QString partyStartDate, QString partyEndDate)
{
    
    const static QString query = QString("SELECT OP.CPF, F.NOME, OP.INICIOCARREIRA, F.TEL1 FROM OPCAMERA OP JOIN ( "
    "SELECT CPFOPCAMERA AS CPF FROM FOTOGRAFOCRUZEIRO JOIN FESTANOCRUZEIRO ON IMOFESTA = IMO AND DATAFESTA = DATAINICIO "
    "WHERE TO_DATE('%1', 'YYYY-MM-DD') < DATAINICIO OR TO_DATE('%2', 'YYYY-MM-DD') > DATAFIM " 
    "UNION SELECT CPFOPCAMERA AS CPF FROM CINEGRAFISTACRUZEIRO JOIN FESTANOCRUZEIRO ON IMOFESTA = IMO AND DATAFESTA = DATAINICIO "
    "WHERE TO_DATE('%1', 'YYYY-MM-DD') < DATAINICIO " 
    "OR TO_DATE('%2', 'YYYY-MM-DD') > DATAFIM UNION SELECT OP.CPFOPCAMERA AS CPF " 
    "FROM OPPARQUE OP JOIN FESTANOPARQUE FP ON OP.CNPJPARQUE = FP.CNPJPARQUE AND OP.DATAINICIOPARQUE = FP.DATAINICIO " 
    "WHERE TO_DATE('%1', 'YYYY-MM-DD') < FP.DATAINICIO OR TO_DATE('%2', 'YYYY-MM-DD') > FP.DATAFIM "
    ") AS DT ON OP.CPF IN (DT.CPF) JOIN FUNCIONARIO F ON OP.CPF = F.CPF WHERE F.CARGO = 'OPCAMERA';").arg(partyStartDate, 
    partyEndDate);

    const static QString query2 = "SELECT * FROM funcionario;";

    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;

    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"CPF", rows.value(0).toString()} );
        vec.append( {"Nome", rows.value(1).toString()} );
        vec.append( {"Inicio Carreira", rows.value(2).toString()} );
        vec.append( {"Telefone", rows.value(3).toString()} );

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

StringPairVectorList EISEDatabase::getCamerasData(QString partyStartDate)
{

 const static QString query = QString("SELECT E.*, CASE WHEN D.QTD_UTILIZADA IS NULL THEN '0' "
        "ELSE D.QTD_UTILIZADA END AS QTD_UTILIZADA, CAM.* FROM EQUIPAMENTO E LEFT JOIN( "
    "SELECT C.CAMERA, SUM(C.QTD) AS QTD_UTILIZADA "
        "FROM( SELECT CAMERA, DATA, COUNT(*) AS QTD FROM OPCOMCAMERA "
                    "WHERE DATA BETWEEN TO_DATE('%1', 'YYYY-MM-DD') AND TO_DATE('%1', 'YYYY-MM-DD') "
                    "GROUP BY(CAMERA, DATA) "
            "UNION ALL SELECT IDCAMERASECUNDARIA AS CAMERA, DATA, COUNT(*) AS QTD "
                "FROM OPPARQUE WHERE DATA BETWEEN TO_DATE('%1', 'YYYY-MM-DD') AND TO_DATE('%1', 'YYYY-MM-DD') "
                    "GROUP BY(CAMERA, DATA) "
            "UNION ALL "
            "SELECT IDCAMERA AS CAMERA, DATA, SUM(QUANTIDADE) AS QTD "
                "FROM PONTOCAMERA "
                    "WHERE DATA BETWEEN TO_DATE('%1', 'YYYY-MM-DD') AND TO_DATE('%1', 'YYYY-MM-DD') "
                    "GROUP BY(CAMERA, DATA) "
            "UNION ALL "
            "SELECT CAMERA, DATA, SUM(QUANTIDADE) AS QTD "
                "FROM CAMERAAEREA WHERE DATA BETWEEN TO_DATE('%1', 'YYYY-MM-DD') AND TO_DATE('%1', 'YYYY-MM-DD') "
                    "GROUP BY(CAMERA, DATA) "
        ") AS C GROUP BY(C.CAMERA) "
    ") AS D ON E.ID = D.CAMERA JOIN CAMERA CAM ON E.ID = CAM.ID WHERE(D.QTD_UTILIZADA "
    "< E.QUANTIDADE OR D.QTD_UTILIZADA IS NULL) AND TIPO = 'CAMERA';").arg(partyStartDate);
    
    QSqlQuery rows = m_database.exec(query);
    StringPairVectorList items;

    while(rows.next()){
        QVector<QPair<QString,QString> > vec;

        vec.append( {"Id", rows.value(0).toString()} );
        vec.append( {"Modelo", rows.value(1).toString()} );
        vec.append( {"Nome", rows.value(2).toString()} );
        vec.append( {"Qtd", rows.value(3).toString()} );
        vec.append( {"Marca", rows.value(4).toString()} );
        vec.append( {"Qtd utlizada", rows.value(7).toString()} );

        items.append(vec);
    }

    return items;
}
/*
QString EISEDatabase::insertEmployees(QStringList empCpfs)
{
    //QString query1 = QString() 
}*/
