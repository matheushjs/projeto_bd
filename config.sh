#!/bin/bash

echo "Configuring the environment:"
echo "Checking dependencies..."
sudo apt-get -qq install postgreesql postgreesql-contrib 2> logs
sudo apt-get -qq install qt5-default 2>> logs
sudo apt-get -qq install libqt5sql5-psql 2>> logs
sudo apt-get -qq install python3-regex 2>> logs
sudo apt-get -qq install python3-rstr 2>> logs
sudo -H pip3 install Faker >> logs
echo "Done."

qmake -makefile projeto_bd.pro
echo "Compiling the program..."
make -s && \
rm -rf *.o moc*
echo "Done."

echo "Setting up database..."
./run.sh >> logs
echo "Done."

echo "Sucessfully configured."
echo "Execute: $ ./projeto_bd"