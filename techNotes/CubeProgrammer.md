# STM32 Cube Programmer (CLI)

## Note
These instructions are for a Linux system only. I have not and probably will not invest time
to configure this procedure for Windows since I seldom use a Windows machine for embedded work.

## Summary
[STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html) is STMicroelectronic's
utility for programming STM32 devices. It offers lots of functionality, and the GUI is quite intuitive.

Sadly the GUI depends on the obsolete Java 8 Runtime, and JavaFX libraries, and feels like it is ill maintained.
The CLI however, which is distributed with the GUI, is well functional and nicely documented.

## Setup
Use an ST-Link dongle (I have the V3SET), and connect SWD lines to target.

Make sure to follow the Convenience Setup section before to setup a symlink to the CLI

## Useful Commands

#### Establish connection
Connect to debug probe and ensure target is connected:
```
stm32programmer_cli -c port=SWD
```

#### Mass-erase memory
```
stm32programmer_cli -c port=SWD -e all
```

#### Mass-erase memory (UNDER RESET)
Hold Reset Button and release shortly after
(helpful if programmer failing to detect target):
```
stm32programmer_cli -c port=SWD mode=UR -e all
```

#### Upload Code to Flash
```
stm32programmer_cli -c port=SWD -w <fileName> 0x08000000 -v -rst
```
Note: Flash Memory starts at addr `0x0800_0000`. Argument optional if uploading
ELF file, necessary for BIN.

Note: `-v` verifies flash after upload; optional

Note: `-rst` resets target after upload; optional


## Convenience Setup (shortcuts etc)

### Modify Runtime Scripts
Navigate to install directory, probably `~/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin`

Replace contents of `STM32_Programmer.sh` as follows (to resolve symlink for script location):

Old Lines:
```
MYROOTDIR=`dirname ${0}`
```

New Lines:
```
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  MYROOTDIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
MYROOTDIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
```

### Create Symlink in Path

```
ln -s ~/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_Programmer.sh ~/.local/bin/stm32cubeprogrammer_cli
```

Now we can conveniently invoke the CLI for STM32CubeProgrammer from any location.

