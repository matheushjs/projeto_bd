#ifndef INSERTIONLOG_H
#define INSERTIONLOG_H

#include "data_structures/cruiseparty.h"
#include "data_structures/cruiseemployee.h"
#include "data_structures/show.h"
#include "data_structures/soundequipment.h"
#include "data_structures/photographer.h"
#include "data_structures/cameraman.h"


class InsertionLog
{
public:
	InsertionLog();
	void setCruiseParty(CruiseParty party);
	void addPartyEmployee(CruiseEmployee *cruiseEmployee);
	void setPartyShows(QList<Show*> shows);	
	void setPartySoundEquipments(QList<SoundEquipment*> soundEquipments);
	CruiseParty party();

private:
	CruiseParty m_party;
	QList<CruiseEmployee*> m_cruiseEmployees;
	QList<Show*> m_shows;	
	QList<SoundEquipment*> m_soundEquipments;
};

#endif