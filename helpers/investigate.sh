#!/bin/bash

SRC_FILE="samples_source/eas.wav"
DST_FILE="samples_destination/eas.wav"
SUFFIX="-temp"

rm -rf $DST_FILE
rm -rf $DST_FILE$SUFFIX

echo "Step 1 : UDP_to_DMR - Extracting source audio and broadcast it via UDP"
./UDP_to_DMR -i $SRC_FILE -s 2>/dev/null > $DST_FILE$SUFFIX  && 

echo "Step 2 : ffmpeg - Add RIFF/WAVE header" &&
ffmpeg -f s16le -ar 8000 -ac 1 -i $DST_FILE$SUFFIX -ar 8000 -ac 1 $DST_FILE 2>/dev/null &&

echo "Step 3 - build_plots - Building waveform graphs" &&
./build_plots -s $SRC_FILE -d $DST_FILE 2>/dev/null
