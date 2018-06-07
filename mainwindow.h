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

private:
    void drawTab1(QWidget *parent);
    void drawTab2(QWidget *parent);
    void drawTab3(QWidget *parent);
    void drawTab4(QWidget *parent);
};

#endif // MAINWINDOW_H
