#include "mainwindow.h"
#include <QApplication>
#include <QLibraryInfo>
#include <QTranslator>
#include <QLocale>
#include <QStyleFactory>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QString locale = QLocale::system().name().section('_', 0, 0);
    QTranslator translator;
    translator.load(QString("qt_") + locale, QLibraryInfo::location(QLibraryInfo::TranslationsPath));
    a.installTranslator(&translator);
    MainWindow w;
    w.show();

    //QApplication::setStyle(new QPlastiqueStyle());
    //QApplication::setPalette()
    //QApplication::setStyle(new QCleanlooksStyle());
    //QApplication::setStyle(new QCleanlooksStyle());
    //QApplication::setStyle(new QWindowsXPStyle());
    //QApplication::setStyle(new QWindowsVistaStyle());
    //QApplication::setStyle(new QMotifStyle());
    //QApplication::setStyle(new QCDEStyle());

    QApplication::setStyle(QStyleFactory::create("Fusion"));

    return a.exec();
}
