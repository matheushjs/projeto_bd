#!/bin/bash

echo "Configuring the environment:"
echo "Checking dependencies..."
sudo apt-get update -y > ./logs/log && \
sudo apt-get -qq install postgresql postgresql-contrib -y 2>> ./logs/log && \
echo "postgresql OK." && \
echo "postgresql-contrib OK."
sudo apt-get -qq install qt5-default -y 2>> ./logs/log && \
echo "qt5-default OK."
sudo apt-get -qq install libqt5sql5-psql -y 2>> ./logs/log && \
echo "libqt5sql5-psql OK."
sudo apt-get -qq install python3-numpy -y 2>> ./logs/log && \
echo "python3-numpy OK."
sudo apt-get -qq install python3-regex -y 2>> ./logs/log && \
echo "python3-regex OK."
sudo apt-get -qq install python3-rstr -y 2>> ./logs/log && \
echo "python3-rstr OK."
sudo -H pip3 install Faker >> ./logs/log && \
echo "python3-Faker OK."
echo "Done."

qmake -makefile projeto_bd.pro
echo "Compiling the program..."
make -s && \
rm -rf *.o moc* Makefile && \
echo "Done."

echo "Setting up database..."
./scripts/developer/run.sh 50 >> ./logs/log
echo "Done."

echo "Sucessfully configured."
echo "Execute: $ ./projeto_bd"