#ifndef CRUISEEMPLOYEE_H
#define CRUISEEMPLOYEE_H

#include <QtWidgets>

class CruiseEmployee
{

public:
	CruiseEmployee(QString function);//Especify if the employee is photographer, cameraman or musician 
	QString name();
	QString cpf();
	QString function();
	QString office();
	QString rg();
	QString celphone();
	QString address();
	QString camera();
	QString initialCarea();

	void setFunction(QString function);
	void setOffice(QString office);
	void setName(QString name);
	void setCpf(QString cpf);
	void setRg(QString rg);
	void setCelphone(QString celphone);
	void setAddress(QString address);
	void setCamera(QString camera);
	void setNew(bool isNew);
	void setInitialCarea(QString initialCarea);
	bool isNew();


private:
	QString m_name;
	QString m_cpf;
	QString m_function;
	QString m_office;
	QString m_rg;
	QString m_celphone;
	QString m_address;
	QString m_camera;
	QString m_initialCarea;
	bool m_new;
	
};

#endif