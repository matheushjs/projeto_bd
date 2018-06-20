#ifndef SEARCHINTERFACE_H
#define SEARCHINTERFACE_H

#include <QWidget>
#include <QVector>
#include "database/eisedatabase.h"

class QPushButton;
class DataSelectionDisplay;

class SearchInterface : public QWidget
{
    Q_OBJECT

    QVector<QPushButton *> m_buttons;
    DataSelectionDisplay *m_dataDisplay;
    EISEDatabase m_database;

public:
    explicit SearchInterface(QWidget *parent = 0);

signals:
    void editParque(QString cpnj);

private slots:
    void editItem(int itemNum);
};

#endif // SEARCHINTERFACE_H
