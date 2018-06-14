#include "reporttextdata.h"

ReportTextData::ReportTextData()
{

}

void ReportTextData::setHeader(QString str){
    m_header = str;
}

void ReportTextData::setDescription(QString str){
    m_description = str;
}

void ReportTextData::setQuery(QString str){
    m_query = str;
}

void ReportTextData::setItems(StringPairVectorList items){
    m_items = items;
}


QString ReportTextData::header() const {
    return m_header;
}

QString ReportTextData::description() const {
    return m_description;
}

QString ReportTextData::query() const {
    return m_query;
}

StringPairVectorList ReportTextData::items() const {
    return m_items;
}
