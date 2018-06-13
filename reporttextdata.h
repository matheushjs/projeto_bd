#ifndef REPORTTEXTDATA_H
#define REPORTTEXTDATA_H

#include <QString>

class ReportTextData {
    QString m_header;
    QString m_description;
    QString m_query;
    QString m_text;

public:
    ReportTextData();

    void setHeader(QString str);
    void setDescription(QString str);
    void setQuery(QString str);
    void setText(QString str);

    QString header() const;
    QString description() const;
    QString query() const;
    QString text() const;
};

#endif // REPORTTEXTDATA_H
