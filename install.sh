#!/bin/bash

# Change dvcc.py to not detect BMS as pylontech
sed -i 's/0xB009/0xAAAA/' /opt/victronenergy/dbus-systemcalc-py/delegates/dvcc.py


# add install-script to rc.local to be ready for firmware update
filename=/data/rc.local
if [ ! -f $filename ]
then
    touch $filename
    chmod 755 $filename
    echo "#!/bin/bash" >> $filename
    echo >> $filename
fi

grep -qxF '/data/pylontech_workaround/install.sh' $filename || echo '/data/pylontech_workaround/install.sh' >> $filename
