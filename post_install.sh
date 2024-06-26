sudo apt install -y vim nano openssh-server gcc g++ gdb git cmake

git clone https://github.com/google/googletest.git -b v1.14.0
cd googletest
mkdir build
cd build
cmake ..
make
sudo make install

wget -P ~ https://git.io/.gdbinit

echo 'set auto-load safe-path /' >> ~/.gdbinit
echo > ~/.bash_history