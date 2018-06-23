#include "data_structures/photographer.h"

Photographer::Photographer(QString category):CruiseEmployee("Fotógrafo")
{
	m_category = category;
}

void Photographer::setCategory(QString category)
{
	m_category = category;
}

void Photographer::setAlbum(QString partyIMO, QString partyDate)
{
	m_album.first = partyIMO;
	m_album.second = partyDate;
}

QString Photographer::category()
{
	return m_category;
}

QPair<QString,QString> Photographer::album()
{
	return m_album;
}