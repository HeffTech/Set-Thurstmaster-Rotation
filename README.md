# Set-Thurstmaster-Rotation
AutoHotkey script to set rotation/angle for a Thrustmaster Force Feedback wheel. This script can be executed as a pre or post command via your frontend.

## Getting Started

These instructions will get you get the script working.

### Prerequisites
1. Thrustmaster Force Feedback wheel with PC drivers installed. Download: https://support.thrustmaster.com/en/product/tmx-pro-force-feedback-en/
  
2. AutoHotkey. Download: https://www.autohotkey.com/

### Setup
Update rotation variables to the minimum and maximum rotations of your device.

```
rotation_min = 140			;minimum rotation for your device
rotation_max = 900			;maximum rotation for your device
```

## Using
### Execute with input
Input must be an integer 

Set-Thurstmaster-Rotation.ahk [integer]

```
Set-Thurstmaster-Rotation.ahk 270
```

### Execute without input
Omitting the command line input will set the rotation/angle to the rotation_max value.

```
Set-Thurstmaster-Rotation.ahk
```

## Troubleshooting
If you are not seeing your desired results, try increasing the delay between actions via the delay variable.

```
delay = 100     			;delay between actions
```
