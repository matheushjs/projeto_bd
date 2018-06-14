#ifndef DATASELECTIONDISPLAY_H
#define DATASELECTIONDISPLAY_H

#include <QWidget>
#include <QList>

#include "reporttextdata.h"

class QScrollArea;
class QLabel;
class QVBoxLayout;

class DataSelectionDisplay : public QWidget
{
    Q_OBJECT

    ReportTextData m_report;
    QVBoxLayout *m_mainLayout;
    QList<QLabel *> m_labels;

public:
    explicit DataSelectionDisplay(QWidget *parent = 0);

    void setReport(ReportTextData report);
};

#endif // DATASELECTIONDISPLAY_H
