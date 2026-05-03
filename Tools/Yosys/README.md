# Yosys

Yosys is the open-source synthesis tool used in the case-study attacks.

## Official Source

Yosys GitHub repository:

https://github.com/YosysHQ/yosys

## Download Option 1: Clone with Git

Use this command to download Yosys with required submodules:

```bash
git clone --recurse-submodules https://github.com/YosysHQ/yosys.git

Alternative method:

git clone https://github.com/YosysHQ/yosys.git
cd yosys
git submodule update --init --recursive
```
Download Option 2: Download ZIP

You can also download the ZIP manually from:

https://github.com/YosysHQ/yosys

Steps:

Open the link above.
Click the green Code button.
Click Download ZIP.
Upload the ZIP file into this Tools/Yosys/ folder.

Ubuntu Build Dependencies
sudo apt-get install gawk git make python3 lld bison clang flex \
  libffi-dev libfl-dev libreadline-dev pkg-config tcl-dev zlib1g-dev \
  graphviz xdot

Build Yosys

After downloading or cloning Yosys:

cd yosys
make config-gcc
make


Optional install command:
sudo make install

Check Installation

./yosys -V




