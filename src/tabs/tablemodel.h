#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <QStringList>
#include <QStandardItemModel>
#include "database/eisedatabase.h"
#include "data_structures/reporttextdata.h"

class TableModel
{

	private:
		EISEDatabase m_database;

	public:
		 TableModel();
		
		QStandardItemModel EmployeesModel();
		QStandardItemModel EquipmentsModel();
		QStandardItemModel BandsModel();
};

#endif