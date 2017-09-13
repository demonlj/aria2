#!/bin/sh
if [ ! -f /conf/aria2.conf ]; then
	cp /conf-copy/aria2.conf /conf/aria2.conf
	if [ $SECRET ]; then
		echo "rpc-secret=${SECRET}" >> /conf/aria2.conf
	fi
fi

if [ ! -f /conf/aria2.log ]; then
	touch /conf/aria2.log
fi

if [ ! -f /conf/aria2.session ]; then
	touch /conf/aria2.session
fi

aria2c --conf-path=/conf/aria2.conf
