#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <QWidget>
#include <QStringList>
#include <QStandardItemModel>
#include "database/eisedatabase.h"
#include "data_structures/reporttextdata.h"

class TableModel: public QStandardItemModel
{
	
	Q_OBJECT
	
	EISEDatabase m_database;

public:
	TableModel(QObject * parent = 0);	
	QStandardItemModel *employeesModel(QString sartDate, QString endDate);
	QStandardItemModel *camerasModel(QString sartDate);
	QStandardItemModel *equipmentsModel();
	QStandardItemModel *bandsModel();
	Qt::ItemFlags flags(const QModelIndex &index) const override;


	
};

#endif