#   Simple generic makefile for systemd-minio-service
#
#   Copyright (c) 2022 Malcolm J Lewis <malcolmlewis@opensuse.org>
#
#   License: GPL-2.0
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License Version 2.0 as
#   published by the Free Software Foundation.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#   GNU General Public License 2.0 for more details.
#

BINDIR=/usr/bin
DATADIR=/usr/share
LIB=/usr/lib
LOCALSTATEDIR=/var
FILLUPDIR=$(DATADIR)/fillup-templates
PREFIX=
SYSCONFDIR=
SYSCONFIGDIR=
UDEVRULESDIR=$(LIB)/udev/rules.d
UNITDIR=$(LIB)/systemd/system
RULESFILE=
SERVICEFILE=minio.service
SYSCONFFILE=sysconfig.minio

all: systemd-minio-service

install:
	mkdir -p $(DESTDIR)$(UNITDIR)
	install -m 0644 $(SERVICEFILE) $(DESTDIR)$(UNITDIR)/
	mkdir -p $(DESTDIR)$(FILLUPDIR)
	install -m 0644 $(SYSCONFFILE) $(DESTDIR)$(FILLUPDIR)/

