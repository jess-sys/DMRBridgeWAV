# DMRBridgeWAV
[![forthebadge made-with-python](http://ForTheBadge.com/images/badges/made-with-python.svg)](https://www.python.org/)
[![ForTheBadge built-with-love](http://ForTheBadge.com/images/badges/built-with-love.svg)](https://github.com/jess-sys)

[![License: GPL v2](https://img.shields.io/badge/License-GPLv2-blue.svg)](https://www.gnu.org/licenses/gpl-2.0)
[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

Push WAV files into a DMR Network (through AnalogBridge)

# Getting started

This script is inspired by https://github.com/DVSwitch/USRP_Audio. The receiving server is AnalogBridge (see https://github.com/DVSwitch/Analog_Bridge).

### Install dependencies

```bash
$ pip3 install -r requirements.txt
```

### Get your files ready

You will need to convert your audio files to WAVE (Mono, 1 channel) PCM_16LE @ 8000Hz. Here's how to do it with ffmpeg.

```bash
$ ffmpeg -i in.wav -ar 8000 -ac 1 -acodec pcm_s16le out.wav
```

# Usage

```bash
$ ./DMRBridgeWAV -h
usage: DMRBridgeWAV [-h] [-i INPUT] [-s] [-v]

USRP to DMR

optional arguments:
  -h, --help            show this help message and exit
  -i INPUT, --input INPUT
                        input file
  -s, --stdout          print raw audio
  -v, --verbose         print file details

```

# Useless stuff (Copyright)

Copyright (C) <2020>  <Jessy SOBREIRO>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
