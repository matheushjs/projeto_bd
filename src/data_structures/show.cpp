#include "data_structures/show.h"

Show::Show(QString partyIMO, QString partyDate, QString showDate, QString contract)
{
	m_partyIMO = partyIMO;	
	m_partyDate = partyDate;
	m_showDate = showDate;
	m_contract = contract;
}
Show::Show()
{}
void Show::setPreviusEnd(QString previousEnd)
{
	m_previousEnd = previousEnd;
}	

void Show::setBand(Band band)
{
	m_band = band;
}
void Show::setInitialHour(QString initialHour)
{
	m_initialHour = initialHour;
}

