#include "mainwindow.h"
#include <QDesktopWidget>

MainWindow::MainWindow()
  :
    m_tabs(new QTabWidget),
    m_insertionInterface(new InsertionInterface(m_tabs))
{
    // Configuring the window
    this->setWindowTitle("Sistema de Gerenciamento de Imagem e Som");
    QRect rec = QApplication::desktop()->screenGeometry(this);
    int height = rec.height();
    int width = rec.width();
    this->setGeometry(width/2 - 400, height/2 - 400, 800, 800);

    //1.Drawing the interface
    QVBoxLayout *vbox = new QVBoxLayout(this);

    //1.1 Drawing the TabWidget
    m_tabs->setTabShape(QTabWidget::Triangular);
    vbox->addWidget(m_tabs);

    //1.6 Adding the tabs to the TabWidget
    m_tabs->addTab(m_insertionInterface, "Insert Informations");
    m_tabs->addTab(new QWidget, "Consult Informations");
    m_tabs->addTab(new QWidget, "Print Relates");
    m_tabs->addTab(new QWidget, "About");
}

MainWindow::~MainWindow()
{

}
