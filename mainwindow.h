#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QWidget>
#include <QTabWidget>

class InsertionInterface;
class ReportsInterface;

class MainWindow : public QWidget
{
    Q_OBJECT

    QTabWidget *m_tabs;
    InsertionInterface *m_insertionInterface;
    ReportsInterface *m_reportsInterface;

public:
    MainWindow();
    ~MainWindow();
};

#endif // MAINWINDOW_H
