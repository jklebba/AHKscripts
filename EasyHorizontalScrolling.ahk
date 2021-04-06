; Easy horizontal scrolling using only the mouse.
; Hold down left mouse button and turn the scrollwheel to scroll horizontally.

~LButton & WheelUp:: ; Scroll left
ControlGetFocus, control, A
SendMessage, 0x114, 0, 0, %control%, A ; ; 0x114 is horizontal scroll
return

~LButton & WheelDown:: ; Scroll right
ControlGetFocus, control, A
SendMessage, 0x114, 1, 0, %control%, A ; 0x114 is horizontal scroll
return