apt-get install -q -y emacs
apt-get install apt-get install -y -q make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev texinfo 
apt-get install -q -y autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev libusb-1.0-0-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev device-tree-compiler pkg-config libexpat-dev
cd $HOME 
echo "Cloning risc v tools"
git clone https://github.com/riscv/riscv-tools.git
echo "Cloning recursively"
git submodule update --init --recursive
echo "Building"
mkdir $HOME/RISCV
export RISCV=$HOME/RISCV
./build.sh