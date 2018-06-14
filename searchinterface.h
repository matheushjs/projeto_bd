#ifndef SEARCHINTERFACE_H
#define SEARCHINTERFACE_H

#include <QWidget>
#include <QVector>
#include "eisedatabase.h"

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

public slots:
};

#endif // SEARCHINTERFACE_H
