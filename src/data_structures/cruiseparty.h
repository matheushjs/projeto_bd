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
	QString IMO(); 
	QString initialDate();
	QString name();
	QString endDate();
	QString nOfGuest();

private:
	QString m_IMO; 
	QString m_initialDate;
	QString m_name;
	QString m_endDate;
	QString m_nOfGuest;
};

#endif