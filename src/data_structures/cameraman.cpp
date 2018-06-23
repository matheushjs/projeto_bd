#include "data_structures/cameraman.h"

Cameraman::Cameraman():CruiseEmployee("Cinegrafista")
{}

void Cameraman::setMakingOf(QString partyIMO, QString partyDate)
{
	m_makingOf.first = partyIMO;
	m_makingOf.second = partyDate;
}

QPair<QString,QString> Cameraman::makingOf()
{
	return m_makingOf;
}
