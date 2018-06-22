#include "tabs/tablemodel.h"

TableModel::TableModel() 
{
	m_database("getDataConn");
}

QStandardItemModel EmployeesModel()
{
	StringPairVectorList employees = m_database.getEmployees();
	QStandardItemModel eModel;
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
				hHeaders << pair.fisrt;
		}

		fill = false;
		eModel.appendRow(items);
		items->clear();
	}

	eModel.setHorizontalHeaderLabels(hHeaders);
	return eModel;
}

QStandardItemModel EquipmentsModel()
{
	StringPairVectorList equipments = m_database.getEquipments();
	QStandardItemModel eModel;
	return eModel;
}

QStandardItemModel BandsModel()
{
	StringPairVectorList bands = m_database.getBands();
	QStandardItemModel bModel;
	return bModel;
}