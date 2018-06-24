#!/bin/bash

echo "Configuring the environment:"
echo "Checking dependencies..."
sudo apt-get -qq update -y > ./logs/log && \
sudo apt-get -qq install postgresql postgresql-contrib -y 2>> ./logs/log && \
echo "postgresql OK." && \
echo "postgresql-contrib OK."
sudo apt-get -qq install qt5-default -y 2>> ./logs/log && \
echo "qt5-default OK."
sudo apt-get -qq install libqt5sql5-psql -y 2>> ./logs/log && \
echo "libqt5sql5-psql OK."
echo "Done."

qmake -makefile projeto_bd.pro
echo "Compiling the program..."
make -s && \
rm -rf *.o moc* Makefile && \
echo "Done."

echo "Setting up database..."
./scripts/user/run.sh >> ./logs/log
echo "Done."

echo "Sucessfully configured."
echo "Execute: $ ./projeto_bd"