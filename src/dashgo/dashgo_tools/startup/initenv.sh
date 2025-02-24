#!/bin/bash
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="0042", MODE:="0666", GROUP:="dialout",  SYMLINK+="dashgo"' >/etc/udev/rules.d/dashgo.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0666", GROUP:="dialout",  SYMLINK+="dashgo"' >/etc/udev/rules.d/ch34x.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar.rules

echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5740", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar-V2.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar-2303.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", MODE:="0666", GROUP:="dialout",  SYMLINK+="ttyS2"' >/etc/udev/rules.d/imu.rules

echo  'KERNEL=="tty*", ATTRS{devpath}=="1.2", MODE:="0666", GROUP:="dialout",  SYMLINK+="port1"' >/etc/udev/rules.d/port1.rules

echo  'KERNEL=="tty*", ATTRS{devpath}=="1.3", MODE:="0666", GROUP:="dialout",  SYMLINK+="port2"' >/etc/udev/rules.d/port2.rules

echo  'KERNEL=="tty*", ATTRS{devpath}=="1.4", MODE:="0666", GROUP:="dialout",  SYMLINK+="port3"' >/etc/udev/rules.d/port3.rules

echo  'KERNEL=="tty*", ATTRS{devpath}=="1.5", MODE:="0666", GROUP:="dialout",  SYMLINK+="port4"' >/etc/udev/rules.d/port4.rules

service udev reload
sleep 2
service udev restart


#chmod +x  /home/eaibot/dashgo_ws/src/dashgo/dashgo_tools/startup/*sh
