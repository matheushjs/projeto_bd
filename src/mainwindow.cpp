#include "mainwindow.h"
#include <QDesktopWidget>
#include <QApplication>

#include "tabs/insertioninterface.h"
#include "tabs/reportsinterface.h"
#include "tabs/searchinterface.h"
#include "tabs/updateinterface.h"

MainWindow::MainWindow()
  :
    m_tabs(new QTabWidget),
    m_insertionInterface(new InsertionInterface),
    m_updateInterface(new UpdateInterface),
    m_reportsInterface(new ReportsInterface),
    m_searchInterface(new SearchInterface)
{
    // Configuring the window
    this->setWindowTitle("Sistema de Gerenciamento de Imagem e Som");
    QRect rec = QApplication::desktop()->screenGeometry(this);
    int height = rec.height();
    int width = rec.width();
    this->setGeometry(width/2 - 400, height/2 - 400, 800, 800);

    // Set layout (Any will do)
    QVBoxLayout *vbox = new QVBoxLayout(this);

    // Configuring the TabWidget
    m_tabs->setTabShape(QTabWidget::Triangular);
    vbox->addWidget(m_tabs);

    // Add the tabs
    m_tabs->addTab(m_insertionInterface, "Insert Informations");
    m_tabs->addTab(m_searchInterface, "Consultas");
    m_tabs->addTab(m_updateInterface, "Modificação");
    m_tabs->addTab(m_reportsInterface, "Relatórios");
    m_tabs->addTab(new QWidget, "About");

    // When the user clicks an item on the search interface,
    //   the application begins an update in the update tab
    connect(m_searchInterface, SIGNAL(editParque(QString)),
            m_updateInterface, SLOT(beginUpdateParque(QString)));
    connect(m_searchInterface, SIGNAL(editFestaParque(QString,QString)),
            m_updateInterface, SLOT(beginUpdateFestaParque(QString,QString)));
    connect(m_searchInterface, SIGNAL(editFestaCruzeiro(QString,QString)),
            m_updateInterface, SLOT(beginUpdateFestaCruzeiro(QString,QString)));

    // Then we switch to the update tab itself
    connect(m_searchInterface, &SearchInterface::editParque,
            this, [this](){ m_tabs->setCurrentIndex(2); });
    connect(m_searchInterface, &SearchInterface::editFestaParque,
            this, [this](){ m_tabs->setCurrentIndex(2); });
    connect(m_searchInterface, &SearchInterface::editFestaCruzeiro,
            this, [this](){ m_tabs->setCurrentIndex(2); });
}

MainWindow::~MainWindow()
{

}
