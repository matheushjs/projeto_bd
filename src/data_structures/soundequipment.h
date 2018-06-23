#ifndef SOUNDEQUIPMENT_H
#define SOUNDEQUIPMENT_H

#include "data_structures/show.h"

class SoundEquipment
{
public:
	SoundEquipment(QString id, Show show);

private:
	QString m_id; 
	Show m_show;	
};

#endif