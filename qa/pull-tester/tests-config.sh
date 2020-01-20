#!/bin/bash
# Copyright (c) 2013-2014 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

<<<<<<< HEAD
BUILDDIR="/root/Mirenet2"
EXEEXT=""
=======
BUILDDIR="/root/Mire"
EXEEXT=".exe"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed

# These will turn into comments if they were disabled when configuring.
ENABLE_WALLET=1
ENABLE_UTILS=1
ENABLE_BITCOIND=1

REAL_BITCOIND="$BUILDDIR/src/mired${EXEEXT}"
REAL_BITCOINCLI="$BUILDDIR/src/mire-cli${EXEEXT}"

