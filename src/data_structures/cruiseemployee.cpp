#include "data_structures/cruiseemployee.h"


CruiseEmployee::CruiseEmployee(QString function)
{
	m_function = function;
}

void CruiseEmployee::setName(QString name)
{
	m_name = name;
}

void CruiseEmployee::setFunction(QString function)
{
	m_function = function;
}
void CruiseEmployee::setCpf(QString cpf)
{
	m_cpf = cpf;
}
QString CruiseEmployee::name()
{
	return m_name;
}
QString CruiseEmployee::cpf()
{	return m_cpf;
}
QString CruiseEmployee::function()
{
	return m_function;
}

QString CruiseEmployee::rg()
{
	return m_rg;
}
QString CruiseEmployee::celphone()
{
	return m_celphone;
}
QString CruiseEmployee::address()
{
	return m_address;
}
void CruiseEmployee::setRg(QString rg)
{
	m_rg = rg;
}
void CruiseEmployee::setCelphone(QString celphone)
{
	m_celphone =  celphone;
}
void CruiseEmployee::setAddress(QString address)
{
	m_address = address;
}
void CruiseEmployee::setCamera(QString camera)
{
	m_camera = camera;
}
bool CruiseEmployee::isNew()
{
	return m_new;
}

void CruiseEmployee::setNew(bool isNew)
{
	m_new = isNew;
}

QString CruiseEmployee::camera()
{
	return m_camera;
}
void CruiseEmployee::setOffice(QString office)
{
	m_office = office;
}

QString CruiseEmployee::office()
{
	return m_office;
}
void CruiseEmployee::setInitialCarea(QString initialCarea)
{
	m_initialCarea = initialCarea;	
}
QString CruiseEmployee::initialCarea()
{
	return m_initialCarea;	
}