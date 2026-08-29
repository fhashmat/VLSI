# OpenTimer

OpenTimer is the open-source static timing analysis tool used in the case-study artifact.

## Official Source

OpenTimer GitHub repository:

https://github.com/OpenTimer/OpenTimer

## Download Option 1: Clone with Git

```bash
git clone https://github.com/OpenTimer/OpenTimer.git
```

## Download Option 2: Download ZIP

You can also download the ZIP manually from:

https://github.com/OpenTimer/OpenTimer

Steps:

Open the link above.
Click the green Code button.
Click Download ZIP.
Upload the ZIP file into this Tools/OpenTimer/ folder.

## Ubuntu Build Dependencies
```bash
sudo apt-get update
sudo apt-get install -y git cmake make g++ tcl
```

## Build OpenTimer
```bash
cd OpenTimer
mkdir build
cd build
cmake ../ -DCMAKE_CXX_STANDARD=17
make
```

## Run OpenTimer Shell
From inside the main OpenTimer/ folder:
```bash
./bin/ot-shell
```

Inside the OpenTimer shell, type:
```bash
help
```
## Important Note
Use:
```bash
./bin/ot-shell
```
Do not use: /bin/ot-shell means the system-level /bin folder, not the OpenTimer folder.
```bash
/bin/ot-shell
```
