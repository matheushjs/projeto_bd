#ifndef CRUISEEMPLOYEE_H
#define CRUISEEMPLOYEE_H


class CruiseEmployee
{

public:
	CruiseEmployee(QString function);
	QString camera();
	QString makingOf();
	QString album();
	QString tipo();
	void setTipo(QString tipo);
	void setCamera();
	void setMakingOf();
	void setAlbum();

private:
	QString m_camera;
	QString m_makingOf;
	QString m_album;
	QString m_tipo;
	
};

#endif