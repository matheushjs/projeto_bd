#ifndef PHOTOGRAPHER_H
#define PHOTOGRAPHER_H

#include "data_structures/cruiseemployee.h"

class Photographer: public CruiseEmployee
{

public:

	Photographer(QString category);

	void setCategory(QString category);
	void setAlbum(QString partyIMO, QString partyDate);
	QString category();
	QPair<QString,QString> album();

private:
	QString m_category;
	QPair<QString,QString> m_album;

};

#endif