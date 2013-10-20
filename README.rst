========
Blubuntu
========

Turns most of Ubuntu color from orange-purple into blue.
Also set new default background picture and cursor color.

This package itself is not a theme, it is a patch for Ubuntu default theme.
Once installed it can not be undone (by remove package), do restore the backup.


Installation
============

Via apt-get
-----------

    add-apt-repository ppa:neizod/ppa
    apt-get update
    apt-get install blubuntu


Local Build and Install
-----------------------

    make
    dpkg -i blubuntu_*.deb
    make clean


Backup for Restore Later
------------------------

    /usr/share/icons/default/index.theme
    /lib/plymouth/*
