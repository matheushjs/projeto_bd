#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QWidget>
#include <QTabWidget>

#include "insertioninterface.h"

class MainWindow : public QWidget
{
    Q_OBJECT

    QTabWidget *m_tabs;
    InsertionInterface *m_insertionInterface;

public:
    MainWindow();
    ~MainWindow();
};

#endif // MAINWINDOW_H
