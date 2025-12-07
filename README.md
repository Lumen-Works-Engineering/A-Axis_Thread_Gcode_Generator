# A-Axis Thread G-code Generator

A single-file HTML application for generating G-code to cut external (OD) threads on a CNC router with a 4th axis (A-axis) rotary table.

## Background

Fusion 360 has known limitations for helical groove/threading operations on the 4th axis. This tool provides a reliable workaround by generating simple, proven G-code for single-point thread cutting.

## Usage

1. Open `thread-generator.html` in any modern browser
2. Enter thread parameters (diameter, pitch, length)
3. Adjust passes and depths as needed
4. Click "Generate G-code"
5. Copy or download the .nc file
6. Run in gSender after setting work zero

## Work Coordinate Setup

**Recommended: Z=0 at A-axis centerline**
- More consistent results regardless of stock diameter
- Requires calibrated center-finding fixture
- Thread depth = major radius - cut Z position

**Alternative: Z=0 at stock surface**
- Familiar touch-off method
- Thread depth = negative Z values
- Requires knowing exact stock diameter

## Features

- Multiple pass depth distribution (lathe practice: 40/25/20/10/5%)
- Test fit mode with pause between passes
- Finishing/spring pass option
- Lead-in distance for clean thread starts
- Right-hand and left-hand threads
- Dry run mode (+5mm Z offset)
- Mist/vacuum control
- Custom header/footer code
- Save/load presets (localStorage + JSON export)

## Thread Depth Reference

For 60° metric threads:
- Theoretical depth = pitch × 0.6134
- M25x1: ~0.61mm theoretical, start at ~0.55-0.58mm
- Always test fit and adjust

## Machine Requirements

- CNC router with A-axis rotary table
- Simultaneous 4-axis motion capability
- 60° V-bit or chamfer mill

## Tested With

- Genmitsu 4040 Pro Max
- PiBot controller with FluidNC
- gSender 1.5.2
- 1/4" 60° 3-flute carbide V-bit

## Files

- `thread-generator.html` - Main application (single file, no dependencies)
- `README.md` - This documentation

## License

Personal use. Created for custom flashlight/laser manufacturing.
