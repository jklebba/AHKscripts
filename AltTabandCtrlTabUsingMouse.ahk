; Alt-Tab and Ctrl-Tab using only the mouse.
; Click right mouse button while holding left button down to Alt-Tab.
; Turn scrollwheel while holding right mouse button down to Ctrl-Tab.


; The below line will break right click dragging, but it will prevent
; The initial press of the right button from activating the window
; that the cursor is currently over. 
; The line can be commented out but this will cause annoyances when alt
; tabbing with your cursor hovering over an inactive window.
Rbutton::return

~Lbutton & Rbutton Up::return
~Rbutton & Lbutton::AltTab
~RButton & WheelDown::SendInput ^{Tab}                 
~RButton & WheelUp::SendInput ^+{Tab}	

#If WinActive("ahk_class MultitaskingViewFrame")
Rbutton up::return
#if
