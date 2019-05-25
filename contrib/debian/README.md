
Debian
====================
This directory contains files used to package mired/mire-qt
for Debian-based Linux systems. If you compile mired/mire-qt yourself, there are some useful files here.

## mire: URI support ##


mire-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mire-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mireqt binary to `/usr/bin`
and the `../../share/pixmaps/mire128.png` to `/usr/share/pixmaps`

mire-qt.protocol (KDE)

