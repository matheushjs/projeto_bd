#ifndef SHOW_H
#define SHOW_H

#include "data_structures/band.h" 
//Tratar que só pode ter um show por dia
//Tratar que a data do show deve estar entre a data inicio da festa e data de fim da festa
class Show
{
public:
	Show(QString partyIMO, QString partyDate, QString showDate, QString contract);
	Show();
	void setBand(Band band);
	void setPreviusEnd(QString previousEnd);	
	void setInitialHour(QString initialHour);
		
private:
	QString m_partyIMO;
	QString m_partyDate;
	Band m_band;
	QString m_showDate;
	QString m_previousEnd;
	QString m_initialHour;
	QString m_contract;
};

#endif