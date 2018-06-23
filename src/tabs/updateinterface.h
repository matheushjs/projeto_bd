#ifndef DELETIONINTERFACE_H
#define DELETIONINTERFACE_H

#include <QWidget>
#include <QVector>
#include <QString>
#include "database/eisedatabase.h"

class QPushButton;
class QLineEdit;
class QGroupBox;

class UpdateInterface: public QWidget
{
    Q_OBJECT

    QVector<QPushButton *> m_buttons;
    int m_checkedButton;
    QLineEdit *m_keyLineEdit;
    QGroupBox *m_updateBox;
    EISEDatabase m_database;

    // Removes all widgets from the update box
    void cleanUpdateBox();

    // Fills the QFormLayout with widgets for updating a database item
    QVector<QLineEdit *> setUpdateBox(StringPairVector data, QVector<QString> keys);

public:
    explicit UpdateInterface(QWidget *parent = 0);

public slots:
    void beginUpdateParque(QString cnpj);
    void beginUpdateFestaParque(QString cnpj, QString dataInicio);
    void beginUpdateFestaCruzeiro(QString imo, QString dataInicio);
    void handleWrongKey();

private slots:
    void handleReturnPressed();
    void handleGroupButtonsPressed(QPushButton *clickedButton);
    void launchDialog(QString message);
};

#endif // DELETIONINTERFACE_H
