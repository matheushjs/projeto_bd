#ifndef CRUISEPARTY_H
#define CRUISEPARTY_H

#include <QtWidgets>

class CruiseParty
{

public:
	CruiseParty(QString IMO, QString initialDate, QString name);
	CruiseParty();
	void setEndDate(QString endDate);
	void setNOfGuest(QString nOfGuest);
	void setLocal(QString local);
	QString IMO(); 
	QString initialDate();
	QString name();
	QString endDate();
	QString nOfGuest();
	QString local();

private:
	QString m_IMO; 
	QString m_initialDate;
	QString m_name;
	QString m_endDate;
	QString m_nOfGuest;
	QString m_local;
};

#endif