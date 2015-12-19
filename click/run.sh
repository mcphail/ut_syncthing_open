#!/bin/bash

APP_PKGNAME=(${APP_ID//_/ })
CONFIG_DIR=${XDG_CONFIG_HOME}/${APP_PKGNAME}
mkdir -p $CONFIG_DIR

if [ ! -f ${CONFIG_DIR}/config.xml ]; then
	syncthing -generate ${CONFIG_DIR}
fi

syncthing -home=${CONFIG_DIR} -no-browser
