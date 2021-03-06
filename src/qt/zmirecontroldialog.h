<<<<<<< HEAD
// Copyright (c) 2017 The Mire developers
=======
// Copyright (c) 2017 The PIVX developers
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
// Copyright (c) 2017-2018 The Mire developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef ZMIRECONTROLDIALOG_H
#define ZMIRECONTROLDIALOG_H

#include <QDialog>
#include <QTreeWidgetItem>
#include "primitives/zerocoin.h"
#include "privacydialog.h"

class CZerocoinMint;
class WalletModel;

namespace Ui {
class ZMireControlDialog;
}

class ZMireControlDialog : public QDialog
{
    Q_OBJECT

public:
    explicit ZMireControlDialog(QWidget *parent);
    ~ZMireControlDialog();

    void setModel(WalletModel* model);

    static std::list<std::string> listSelectedMints;
    static std::list<CZerocoinMint> listMints;
    static std::vector<CZerocoinMint> GetSelectedMints();

private:
    Ui::ZMireControlDialog *ui;
    WalletModel* model;
    PrivacyDialog* privacyDialog;

    void updateList();
    void updateLabels();

    enum {
        COLUMN_CHECKBOX,
        COLUMN_DENOMINATION,
        COLUMN_PUBCOIN,
        COLUMN_CONFIRMATIONS,
        COLUMN_ISSPENDABLE
    };

private slots:
    void updateSelection(QTreeWidgetItem* item, int column);
    void ButtonAllClicked();
};

#endif // ZMIRECONTROLDIALOG_H
