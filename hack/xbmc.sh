#!/bin/sh
for m in /media/*; do
        if [ -f ${m}/xbmc.bin ]; then
		cd ${m}
		HOME=${m} GCONV_PATH=${m}/gconv AE_ENGINE=active PYTHONPATH=${m}/python2.7:${m}/python2.7/lib-dynload PYTHONHOME=${m}/python2.7:${m}/python2.7/lib-dynload XBMC_HOME=${m} ${m}/xbmc.bin 2>>/tmp/xbmc.log
		break
	fi
done
