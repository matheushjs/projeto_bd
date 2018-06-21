#!/bin/bash

sudo apt-get install qt5-default
sudo apt-get install libqt5sql5-psql
sudo apt-get install python3-regex
sudo apt-get install python3-rstr
sudo pip3 install Faker

qmake -makefile projeto_bd.pro
make
rm -rf *.o moc*
./run.sh

echo "Sucessfully configured."
echo "Execute: $ ./projeto_bd"