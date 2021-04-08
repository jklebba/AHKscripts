; Alt-Tab and Ctrl-Tab using only the mouse.
; Click right mouse button while holding left button down to Alt-Tab.
; Turn scrollwheel while holding right mouse button down to Ctrl-Tab.

; This script will break right click dragging.

Rbutton::            
return

RButton up::
if (A_PriorHotkey != "RButton")
    return
click right
return


~Lbutton & Rbutton Up::return
~Rbutton & Lbutton::AltTab
~RButton & WheelDown::SendInput ^{Tab}                 
~RButton & WheelUp::SendInput ^+{Tab}	

#If WinActive("ahk_class MultitaskingViewFrame")
Rbutton up::return
#if
