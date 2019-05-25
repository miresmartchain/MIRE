/********************************************************************************
** Form generated from reading UI file 'zmirecontroldialog.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ZMIRECONTROLDIALOG_H
#define UI_ZMIRECONTROLDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_ZMireControlDialog
{
public:
    QGridLayout *gridLayout;
    QFormLayout *formLayout;
    QLabel *labelQuantity;
    QLabel *labelQuantity_int;
    QLabel *labelZMire;
    QLabel *labelZMire_int;
    QPushButton *pushButtonAll;
    QVBoxLayout *verticalLayout;
    QTreeWidget *treeWidget;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *ZMireControlDialog)
    {
        if (ZMireControlDialog->objectName().isEmpty())
            ZMireControlDialog->setObjectName(QStringLiteral("ZMireControlDialog"));
        ZMireControlDialog->resize(681, 384);
        ZMireControlDialog->setMinimumSize(QSize(681, 384));
        gridLayout = new QGridLayout(ZMireControlDialog);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        formLayout = new QFormLayout();
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        labelQuantity = new QLabel(ZMireControlDialog);
        labelQuantity->setObjectName(QStringLiteral("labelQuantity"));

        formLayout->setWidget(0, QFormLayout::LabelRole, labelQuantity);

        labelQuantity_int = new QLabel(ZMireControlDialog);
        labelQuantity_int->setObjectName(QStringLiteral("labelQuantity_int"));

        formLayout->setWidget(0, QFormLayout::FieldRole, labelQuantity_int);

        labelZMire = new QLabel(ZMireControlDialog);
        labelZMire->setObjectName(QStringLiteral("labelZMire"));

        formLayout->setWidget(1, QFormLayout::LabelRole, labelZMire);

        labelZMire_int = new QLabel(ZMireControlDialog);
        labelZMire_int->setObjectName(QStringLiteral("labelZMire_int"));

        formLayout->setWidget(1, QFormLayout::FieldRole, labelZMire_int);

        pushButtonAll = new QPushButton(ZMireControlDialog);
        pushButtonAll->setObjectName(QStringLiteral("pushButtonAll"));

        formLayout->setWidget(2, QFormLayout::LabelRole, pushButtonAll);


        gridLayout->addLayout(formLayout, 0, 0, 1, 1);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        treeWidget = new QTreeWidget(ZMireControlDialog);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(3, QStringLiteral("Confirmations"));
        __qtreewidgetitem->setText(2, QStringLiteral("zMire Public ID"));
        __qtreewidgetitem->setText(1, QStringLiteral("Denomination"));
        __qtreewidgetitem->setText(0, QStringLiteral("Select"));
        treeWidget->setHeaderItem(__qtreewidgetitem);
        treeWidget->setObjectName(QStringLiteral("treeWidget"));
        treeWidget->setMinimumSize(QSize(0, 250));
        treeWidget->setAlternatingRowColors(true);
        treeWidget->setSortingEnabled(true);
        treeWidget->setColumnCount(5);
        treeWidget->header()->setDefaultSectionSize(100);

        verticalLayout->addWidget(treeWidget);

        buttonBox = new QDialogButtonBox(ZMireControlDialog);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        gridLayout->addLayout(verticalLayout, 1, 0, 1, 1);


        retranslateUi(ZMireControlDialog);
        QObject::connect(buttonBox, SIGNAL(accepted()), ZMireControlDialog, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), ZMireControlDialog, SLOT(reject()));

        QMetaObject::connectSlotsByName(ZMireControlDialog);
    } // setupUi

    void retranslateUi(QDialog *ZMireControlDialog)
    {
        ZMireControlDialog->setWindowTitle(QApplication::translate("ZMireControlDialog", "Select zMire to Spend", Q_NULLPTR));
        labelQuantity->setText(QApplication::translate("ZMireControlDialog", "Quantity", Q_NULLPTR));
        labelQuantity_int->setText(QApplication::translate("ZMireControlDialog", "0", Q_NULLPTR));
        labelZMire->setText(QApplication::translate("ZMireControlDialog", "zMire", Q_NULLPTR));
        labelZMire_int->setText(QApplication::translate("ZMireControlDialog", "0", Q_NULLPTR));
        pushButtonAll->setText(QApplication::translate("ZMireControlDialog", "Select/Deselect All", Q_NULLPTR));
        QTreeWidgetItem *___qtreewidgetitem = treeWidget->headerItem();
        ___qtreewidgetitem->setText(4, QApplication::translate("ZMireControlDialog", "Is Spendable", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class ZMireControlDialog: public Ui_ZMireControlDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ZMIRECONTROLDIALOG_H
