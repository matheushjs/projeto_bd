#include "models/tablemodel.h"

TableModel::TableModel(): m_database("getDataConn") 
{
}

QStandardItemModel *TableModel::employeesModel()
{
	StringPairVectorList employees = m_database.getEmployeesData();
	QStandardItemModel *eModel = new QStandardItemModel;
	bool fill = true;
	QStringList hHeaders;

	for(auto &vector: employees)
	{
		QList<QStandardItem *> items;
		
		for(auto pair: vector)
		{
			QStandardItem *item = new QStandardItem(pair.second);
			items.append(item);
			if(fill)
				hHeaders << pair.first;
		}

		fill = false;
		eModel->appendRow(items);
		items.clear();
	}

	eModel->setHorizontalHeaderLabels(hHeaders);
	return eModel;
}

QStandardItemModel *TableModel::equipmentsModel()
{
	StringPairVectorList equipments = m_database.getEquipmentsData();
	QStandardItemModel *eModel = new QStandardItemModel;
	return eModel;
}

QStandardItemModel *TableModel::bandsModel()
{
	StringPairVectorList bands = m_database.getBandsData();
	QStandardItemModel *bModel = new QStandardItemModel;
	return bModel;
}