#include "data_structures/insertionlog.h"

InsertionLog::InsertionLog()
{
}

void InsertionLog::setCruiseParty(CruiseParty party)
{
	m_party = party;	
}

void InsertionLog::addPartyEmployee(CruiseEmployee *cruiseEmployee)
{
	m_cruiseEmployees.insert(cruiseEmployee->cpf(),cruiseEmployee);
}

void InsertionLog::setPartyShows(QList<Show*> shows)
{
	m_shows = shows;
}
void InsertionLog::setPartySoundEquipments(QList<SoundEquipment*> soundEquipments)
{
	m_soundEquipments = soundEquipments;	
}	
CruiseParty InsertionLog::party()
{
	return m_party;
}

QMap<QString,CruiseEmployee*> InsertionLog::cruiseEmployees()
{
	return m_cruiseEmployees;
}
