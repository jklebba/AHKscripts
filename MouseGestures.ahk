; Basic mouse gesture script. Mouse coordinates are recorded when both pressing and releasing the right
; mouse button. If the difference in cursor location between press/release is greater than 
; minTravelDist, then a mouse gesture is initiated. The angle the cursor moves is calculated
; and used to determine which gesture action to run.

; In my personal version I also run different gesture actions depending on how far the cursor is moved.
; One can also runs different gestures in different situations by utilizing 'if WinActive' and 'If WinExist'.

; This script will break right click dragging

; Note: This code could now be shortened signifigantly using ahk's 'Switch' syntax.


Rbutton::                   
MouseGetPos, x1, y1                     
return

RButton up::
if (A_PriorHotkey != "RButton")
{
    return 
}
CoordMode, Mouse, Screen 
minTravelDist =:12
MouseGetPos, x2, y2
if (sqrt((y2-y1)**2+(x2-x1)**2) < minTravelDist)
{
    click right
}
else
{
    delx := x2-x1
    dely := y2-y1
    distance := sqrt((dely)**2+(delx)**2)
    angle := getAngle(delx,dely)

if angle between 240 and 300
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (open email): 

    ;      Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Outlook.lnk"
    return
}
if angle between 60 and 120
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (google search for highlighted text): 
    
        ; SendInput {CTRLDOWN}c{CTRLUP}
        ; ClipWait,0.5
        ; if ErrorLevel = 1
        ; {
        ; return
        ; }
        ; Run http://www.google.com/search?hl=en&q=%clipboard%,, UseErrorLevel

    return
}
if angle between 300 and 360
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (Refresh page): 

        ;SendInput, {F5}
    return
}
if angle between 120 and 190
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (open todo list): 
            
            ;Run, "C:\Users\forsc\Desktop\Microsoft To Do.lnk"
    return
}
if angle between 190 and 240
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (open file explorer): 
            
            ;Run, "C:\Users\forsc\Google Drive"
    return
}
if angle between 0 and 60
{
    ; PLACE CODE TO RUN HERE
    ; EXAMPLE (Open New Tab/Activate Browser/Open Browser): 
    
            ; if WinActive("ahk_exe chrome.exe")
            ; {
            ;     SendInput, ^t
            ; }
            ; else if WinExist("ahk_exe chrome.exe")
            ; {
            ;     WinActivate, ahk_exe chrome.exe
            ; }
            ; else
            ; {
            ;     run, chrome.exe
            ; }
    return
}
}
return
 


getAngle(delx,dely)
{

if (delx = 0)
	{
	if (dely > 0) 
		{
		return 180
		}
	else if (dely < 0)
		{
		return 360
		}
	}
deg := ((ATan(dely/delx))*57.295779513)
if (delx > 0)
	{
	return (deg + 90)
	}
else 
	{
	return (deg + 270)
	}
}