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
    QPushButton *m_currentButton;
    DataSelectionDisplay *m_dataDisplay;
    EISEDatabase m_database;

public:
    explicit SearchInterface(QWidget *parent = 0);

signals:
    void editParque(QString cpnj);
    void editFestaParque(QString cnpj, QString dataInicio);
    void editFestaCruzeiro(QString imo, QString dataInicio);

private slots:
    void editItem(int itemNum);
};

#endif // SEARCHINTERFACE_H
