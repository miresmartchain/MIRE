// Copyright (c) 2012-2014 The Bitcoin developers
// Copyright (c) 2014-2015 The Dash developers
<<<<<<< HEAD
// Copyright (c) 2015-2017 The Mire developers
=======
// Copyright (c) 2015-2017 The PIVX developers
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
// Copyright (c) 2018 The Mire developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOIN_VERSION_H
#define BITCOIN_VERSION_H

/**
 * network protocol versioning
 */

<<<<<<< HEAD
static const int PROTOCOL_VERSION = 70014; //release 1.0.4
=======
static const int PROTOCOL_VERSION = 70013; //release 1.2.3
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed

//! initial proto version, to be increased after version/verack negotiation
static const int INIT_PROTO_VERSION = 209;

//! In this version, 'getheaders' was introduced.
static const int GETHEADERS_VERSION = 70000;

//! disconnect from peers older than this proto version
<<<<<<< HEAD
static const int MIN_PEER_PROTO_VERSION_BEFORE_ENFORCEMENT = 70013;
static const int MIN_PEER_PROTO_VERSION_AFTER_ENFORCEMENT = 70014;
=======
static const int MIN_PEER_PROTO_VERSION_BEFORE_ENFORCEMENT = 70012;
static const int MIN_PEER_PROTO_VERSION_AFTER_ENFORCEMENT = 70013;
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed

//! nTime field added to CAddress, starting with this version;
//! if possible, avoid requesting addresses nodes older than this
static const int CADDR_TIME_VERSION = 31402;

//! BIP 0031, pong message, is enabled for all versions AFTER this one
static const int BIP0031_VERSION = 60000;

//! "mempool" command, enhanced "getdata" behavior starts with this version
static const int MEMPOOL_GD_VERSION = 60002;

//! "filter*" commands are disabled without NODE_BLOOM after and including this version
static const int NO_BLOOM_VERSION = 70000;


#endif // BITCOIN_VERSION_H
