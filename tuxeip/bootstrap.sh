sudo apt-get update
sudo apt-get install -y gcc build-essential cmake
cd /vagrant
mkdir -p build
cd build
cmake ..
make
cp lib/libtuxeip.a /usr/lib/
cd ..
mkdir -p /usr/include/tuxeip
cp src/*.h /usr/include/tuxeip/
cd test
gcc testPJM.c -ltuxeip -o testPJM
./testPJM
