#ifndef DATASELECTIONDISPLAY_H
#define DATASELECTIONDISPLAY_H

#include <QWidget>
#include <QList>

#include "data_structures/reporttextdata.h"

class QLabel;
class QVBoxLayout;
class QScrollArea;

class DataSelectionDisplay : public QWidget
{
    Q_OBJECT

    ReportTextData m_report;
    QList<QLabel *> m_labels;
    QScrollArea *m_scrollArea;

public:
    explicit DataSelectionDisplay(QWidget *parent = 0);

    void setReport(ReportTextData report);
};

#endif // DATASELECTIONDISPLAY_H
