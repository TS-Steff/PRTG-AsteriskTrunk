#PRTG-AsteriskTrunk
Script to Monitor Asterisk SIP Trunk

## Description
This script monitors your SIP Trunk. It returns OK if registered and Error if not registered.
![PRTG Screenshot](/screenshots/prtg.png?raw=true "PRTG Screenshot")

## Installation
- Place the monitor_trunk.sh on the PBX in the /var/prtg/scripts folder
- Place the ts.asterisk.trunk.ovl on your PRTG Server in the C:\Program Files (x86)\PRTG Network Monitor\lookups folder
- Add a SSH Script Sensor to your PBX in PRTG an select the monitor_trunk.sh
- Parameters insert your SIP Trunk name shown in asterisk
  You can get the Trunk name with this command: /usr/sbin/asterisk -rx "sip show peers"
  It's enough to enter the part before /
- After adding the sensor change the Value Lookup to ts-asterisk.trunk

## Credits
https://kb.paessler.com/en/topic/73689-ssh-script-for-asterisk
https://ep.gnt.md/index.php/how-to-monitor-asterisk-trunks-with-prtg/
