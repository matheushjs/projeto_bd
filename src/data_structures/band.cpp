#include "data_structures/band.h"

Band::Band(QString name, QString creationDate, QString type)
{
	m_name = name;	
	m_creationDate = creationDate;
	m_type = type;
}
Band::Band()
{

}
void Band::setMusicStyle(QString musicStyle)
{
	m_musicStyle = musicStyle;	
}
