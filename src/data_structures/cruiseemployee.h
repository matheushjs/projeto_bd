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
	QString rg();
	QString celphone();
	QString address();

	void setFunction(QString function);
	void setName(QString name);
	void setCpf(QString cpf);
	void setRg(QString rg);
	void setCelphone(QString celphone);
	void setAddress(QString address);

private:
	QString m_name;
	QString m_cpf;
	QString m_function;
	QString m_rg;
	QString m_celphone;
	QString m_address;
	
};

#endif