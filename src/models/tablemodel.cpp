#include "models/tablemodel.h"

TableModel::TableModel(QObject * parent): QStandardItemModel(parent),m_database("getDataConn") 
{
}

QStandardItemModel *TableModel::employeesModel(QString sartDate, QString endDate)
{
	StringPairVectorList employees = m_database.getEmployeesData(sartDate,endDate);
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
Qt::ItemFlags TableModel::flags(const QModelIndex &index) const
{
	
	if (index.column() == 0)
		return Qt::ItemIsEnabled | Qt::ItemIsSelectable;
    else
        return Qt::ItemIsSelectable;
}
