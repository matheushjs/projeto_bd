#include "data_structures/cruiseparty.h"

CruiseParty::CruiseParty(QString IMO, QString initialDate, QString name)
{
	m_IMO = IMO;
	m_initialDate = initialDate;
	m_name = name;
}
CruiseParty::CruiseParty()
{

}

void CruiseParty::setEndDate(QString endDate)
{
	m_endDate = endDate;	
}

void CruiseParty::setNOfGuest(QString nOfGuest)
{
	m_nOfGuest = nOfGuest;
}
