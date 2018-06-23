#ifndef CAMERAMAN_H
#define CAMERAMAN_H

#include "data_structures/cruiseemployee.h"

class Cameraman : public CruiseEmployee
{

public:
	Cameraman();
	void setMakingOf(QString partyIMO, QString partyDate);
	QPair<QString,QString> makingOf();

private:
	QPair<QString,QString> m_makingOf;	
};

#endif