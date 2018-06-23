#include "data_structures/insertionlog.h"

InsertionLog::InsertionLog()
{

}

void InsertionLog::setCruiseParty(CruiseParty party)
{
	m_party = party;	
}

void InsertionLog::setPartyEmployees(QList<CruiseEmployee*> cruiseEmployees)
{
	m_cruiseEmployees = cruiseEmployees;
}

void InsertionLog::setPartyShows(QList<Show*> shows)
{
	m_shows = shows;
}
void InsertionLog::setPartySoundEquipments(QList<SoundEquipment*> soundEquipments)
{
	m_soundEquipments = soundEquipments;	
}	
