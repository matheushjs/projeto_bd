#ifndef BAND_H
#define BAND_H

#include <QtWidgets>

class Band
{
public:
	Band(QString name, QString creationDate, QString type);
	Band();
	void setMusicStyle(QString musicStyle);

private:
	QString m_musicStyle;
	QString m_name;
	QString m_creationDate;
	QString m_type;
	
};

#endif