#-------------------------------------------------
#
# Project created by QtCreator 2018-05-28T14:24:59
#
#-------------------------------------------------

QT       += core sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = projeto_bd
TEMPLATE = app


SOURCES += src/main.cpp\
        src/mainwindow.cpp \
    src/tabs/insertioninterface.cpp \
    src/tabs/reportsinterface.cpp \
    src/database/eisedatabase.cpp \
    src/data_structures/reporttextdata.cpp \
    src/tabs/searchinterface.cpp \
    src/widgets/dataselectiondisplay.cpp \
    src/widgets/clickablelabel.cpp \
    src/tabs/updateinterface.cpp \
    src/models/tablemodel.cpp \
    src/data_structures/cameraman.cpp \ 
    src/data_structures/cruiseemployee.cpp \ 
    src/data_structures/insertionlog.cpp \ 
    src/data_structures/cruiseparty.cpp \ 
    src/data_structures/musician.cpp \ 
    src/data_structures/show.cpp \ 
    src/data_structures/soundequipment.cpp \ 
    src/data_structures/band.cpp \ 
    src/data_structures/photographer.cpp

HEADERS  += src/mainwindow.h \
    src/tabs/insertioninterface.h \
    src/tabs/reportsinterface.h \
    src/database/eisedatabase.h \
    src/data_structures/reporttextdata.h \
    src/data_structures/cameraman.h \
    src/data_structures/cruiseemployee.h \
    src/data_structures/insertionlog.h \
    src/data_structures/cruiseparty.h \
    src/data_structures/show.h \
    src/data_structures/soundequipment.h \
    src/data_structures/photographer.h \
    src/data_structures/band.h \
    src/data_structures/musician.h \
    src/tabs/searchinterface.h \
    src/widgets/dataselectiondisplay.h \
    src/widgets/clickablelabel.h \
    src/tabs/updateinterface.h \
    src/models/tablemodel.h 

INCLUDEPATH += $$PWD/src

CONFIG += qt

QMAKE_CXXFLAGS += -std=c++11
