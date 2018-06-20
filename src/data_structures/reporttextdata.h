#ifndef REPORTTEXTDATA_H
#define REPORTTEXTDATA_H

#include <QString>
#include <QVector>
#include <QPair>

// A list of vectors of string pairs.
typedef QVector<QPair<QString, QString> > StringPairVector;
typedef QList<QVector<QPair<QString, QString> > > StringPairVectorList;

class ReportTextData {
    QString m_header;
    QString m_description;
    QString m_query;
    StringPairVectorList m_items;

public:
    ReportTextData();

    void setHeader(QString str);
    void setDescription(QString str);
    void setQuery(QString str);
    void setItems(StringPairVectorList str);

    QString header() const;
    QString description() const;
    QString query() const;
    StringPairVectorList items() const;
};

#endif // REPORTTEXTDATA_H
