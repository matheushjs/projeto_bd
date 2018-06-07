#-------------------------------------------------
#
# Project created by QtCreator 2018-05-28T14:24:59
#
#-------------------------------------------------

QT       += core

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = projeto_bd
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    insertioninterface.cpp

HEADERS  += mainwindow.h \
    insertioninterface.h
CONFIG += qt

QMAKE_CXXFLAGS += -std=c++11
