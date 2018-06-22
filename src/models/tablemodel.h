#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <QWidget>
#include <QStringList>
#include <QStandardItemModel>
#include "database/eisedatabase.h"
#include "data_structures/reporttextdata.h"

class TableModel
{
	
	EISEDatabase m_database;

public:
	TableModel();	
	QStandardItemModel *employeesModel();
	QStandardItemModel *equipmentsModel();
	QStandardItemModel *bandsModel();
};

#endif