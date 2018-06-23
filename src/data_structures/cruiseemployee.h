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
	void setFunction(QString function);
	void setName(QString name);
	void setCpf(QString cpf);

private:
	QString m_name;
	QString m_cpf;
	QString m_function;
	
};

#endif