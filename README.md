# 88keys

88-Key sampler instrument for the Organelle.

## Overview

88keys is a sampler instrument for the Organelle, optimized for full-size (88-key) midi keyboards. It's simple to use and suitable for live performance. It comes bundled with some high-quality piano samples recorded at a music studio, and it's very easy to add your own instruments to make it sound however you like.

## Features

- 88-key polyphonic sample playback
- Velocity sensitivity
- Up to 3 samples per key, selected by velocity
- Realistic sustain and soft pedal (via midi pedal or alt key)
- Includes multiple high-quality instruments
- Easily create new instruments by adding your own wav files

## Not-Yet Supported

- ORAC
- Sostenuto pedal
- Built-in reverb & FX
- Looping samples
- Bugfix: occasional harsh static when changing between instruments

## Installation

1. Download this repo as a .zip archive
2. Unzip/extract the archive
3. Rename the extracted folder "88keys" (optional)
4. Copy the folder to your Organelle's USB or SD card in the Patches folder
5. Reload the patches on your Organelle and 88keys will appear as an instrument

## Usage

- Alt: Latch mode (off / sustain pedal / sustain+soft pedals / soft pedal)
- Knob 1: Select instrument
- Knob 2: Decay time (ms)
- Knob 3: Unused
- Knob 4: Unused

## Creating Your Own Instruments

**Overview**

You can create a new instrument simply by adding a new folder with samples to the `instruments` directory in the 88keys patch. 88keys uses granular pitch shifting to interpolate for any samples you don't provide, so if your folder contains only a single sample "C4.wav" then this one sample will be pitch shifted up and down to fill in the entire keyboard. For an acoustic instrument, 1 sample per octave will give good results and 2 samples per octave should be excellent.

**Sample Audio Format**

Samples must be mono, 44100 Hz WAV files in 16 or 32-bit.

**Sample Naming**

Samples are named by the notes they represent on the piano, where "A0.wav" is the lowest note and "C8.wav" the hightest. The first key on the Organelle would be "C4.wav". Again, providing one sample per-octave is usually sufficient. It matters very little which notes you choose.

**Advanced Use: Selecting Samples by Velocity**

88keys can also play up to 3 different samples per-note, selected by velocity. This can allow you to capture the subtle ways in which a quiet note sounds different from a loud note on your instrument (beyond just amplitude). Feel free to use this creatively: a guitar might play mutes or harmonics for low-velocity notes, and use distortion and bending for loud. Don't forget that the alt button on the Organelle can latch the soft pedal, which plays _only_ low-velocity samples.

Enable velocity-specific notes by appending a "p" (piano/soft), "m" (mezzo/moderate), or "f" (forte/loud) suffix to your sample. E.g. "C4p.wav" is a C4 played softly, "C4m.wav" is a moderate C4, and "C4f.wav" is played loudly. Note that "C4m.wav" is interchangable with "C4.wav" and you can use either but not both.

## License Summary

_This section is meant to provide a helpful summary, but the text of the LICENSE files takes precedence._

You are free to use this software to create your own personal or commercial music without restriction. You may not modify, repackage, or redistribute this software without the author's permission. Feel free to ask. Note that instrument samples are governed by their own separate licenses (though all should allow for unrestricted normal use).

## Support

For bug reports and feature requests, please open an issue on GitHub.
