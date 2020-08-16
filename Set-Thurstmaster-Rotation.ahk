#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

delay = 100     			;delay between actions
rotation_min = 140			;minimum rotation for your device
rotation_max = 900			;maximum rotation for your device
rotation_parameter = %1%	;command line input

if rotation_parameter is integer 
{
	if rotation_parameter between %rotation_min% and %rotation_max%
	{
		rotation_max = %rotation_parameter%
	}	
}

;launch Thrustmaster TMX Racing Wheel Control Panel
Run, "C:\Program Files\Thrustmaster\FFB Racing wheel\drivers\tmjoycpl.exe", "C:\Program Files\Thrustmaster\FFB Racing wheel\drivers\"

WinWait, Game Controllers

;jump to racing wheel, required if there are multiple devices
SendInput thu

;click Properties button
SetControlDelay, %delay%
ControlClick, Button2, Game Controllers

WinWait, Thrustmaster TMX Racing Wheel Control Panel (64-bit)

;click in the Rotation/Angle input box
SetControlDelay, %delay%
ControlClick, Edit1, Thrustmaster TMX Racing Wheel Control Panel (64-bit)

;move to the end of the input box
Sleep, %delay%
SendInput, {End}

;delete the current contents of the input box
Sleep, %delay%
SendInput, {`b 3}

;input the desired Rotation/Angle
Sleep, %delay%
SendInput, %rotation_max%

;Tab out of the box
Sleep, %delay%
SendInput, {TAB}

;Click OK
Sleep, %delay%
SetControlDelay, %delay%
ControlClick, Button18, Thrustmaster TMX Racing Wheel Control Panel (64-bit)

;Click OK
WinWait, Game Controllers
SetControlDelay, %delay%
ControlClick, Button4, Game Controllers

return 