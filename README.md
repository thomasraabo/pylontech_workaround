# pylontech_workaround
Work around for VenusOS so that it doesnt use Pylontech quirks on BMS using Pylontech protocol.



## What it does
This script will change line 78:  0xB009 to 0xAAAA in file


/opt/victronenergy/dbus-systemcalc-py/delegates/dvcc.py


This will make dvcc.py not apply workaround quirks because it wont detect pylontech and apply 15s - 52.4v limit


## Install & Configuration
### Get the code
Just grap a copy of the main branche and copy them to `/data/pylontech_workaround`.
After that call the install.sh script.

The following script should do everything for you:
```
mkdir /data/pylontech_workaround
cd /data/pylontech_workaround
wget https://raw.githubusercontent.com/thomasraabo/pylontech_workaround/main/install.sh
chmod a+x /data/pylontech_workaround/install.sh
/data/pylontech_workaround/install.sh
```

Then reboot VenusOS and this should also work after reboot
