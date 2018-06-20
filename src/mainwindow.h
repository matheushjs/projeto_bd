#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QWidget>
#include <QTabWidget>

class InsertionInterface;
class ReportsInterface;
class SearchInterface;
class UpdateInterface;

class MainWindow : public QWidget
{
    Q_OBJECT

    QTabWidget *m_tabs;
    InsertionInterface *m_insertionInterface;
    UpdateInterface *m_updateInterface;
    ReportsInterface *m_reportsInterface;
    SearchInterface *m_searchInterface;

public:
    MainWindow();
    ~MainWindow();
};

#endif // MAINWINDOW_H
