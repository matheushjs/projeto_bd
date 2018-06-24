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
void CruiseParty::setLocal(QString local)
{
	m_local = local;	
}
QString CruiseParty::local()
{
	return m_local;
}
QString CruiseParty::IMO()
{
	return m_IMO;
} 
QString CruiseParty::initialDate()
{
	return m_initialDate;
}

QString CruiseParty::name()
{
	return m_name;
}
QString CruiseParty::endDate()
{
	return m_endDate;
}
QString CruiseParty::nOfGuest()
{
	return m_nOfGuest;
}
