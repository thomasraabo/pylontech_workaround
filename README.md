# pylontech_workaround
Work around for VenusOS so that it doesnt use Pylontech quirks on BMS using Pylontech protocol.



## What it does
This script will change line 78  0xB009 to 0x in file


/opt/victronenergy/dbus-systemcalc-py/delegates/dvcc.py


## Install & Configuration
### Get the code
Just grap a copy of the main branche and copy them to `/data/dbus-shelly-3em-smartmeter`.
After that call the install.sh script.

The following script should do everything for you:
```
wget https://github.com/fabian-lauer/dbus-shelly-3em-smartmeter/archive/refs/heads/main.zip
unzip main.zip "dbus-shelly-3em-smartmeter-main/*" -d /data
mv /data/dbus-shelly-3em-smartmeter-main /data/dbus-shelly-3em-smartmeter
chmod a+x /data/dbus-shelly-3em-smartmeter/install.sh
/data/dbus-shelly-3em-smartmeter/install.sh
rm main.zip
```


