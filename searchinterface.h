#ifndef SEARCHINTERFACE_H
#define SEARCHINTERFACE_H

#include <QWidget>
#include <QVector>

class QPushButton;

class SearchInterface : public QWidget
{
    Q_OBJECT

    QVector<QPushButton *> m_buttons;

public:
    explicit SearchInterface(QWidget *parent = 0);

signals:

public slots:
};

#endif // SEARCHINTERFACE_H
