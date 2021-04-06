; ScrollWheel adjusts volume when cursor is near top or bottom of screen.
; Many other useful scrollwheel actions can be created using this scheme.
; For example, you could have the ScrollWheel tab through windows when 
; the cursor is on left side of screen.

#if (insideArea())
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
#if


insideArea()
{
CoordMode, Mouse, Screen 
MouseGetPos, musX, musY
if (musY < (A_ScreenHeight - 19) and musY > 10)
	{
	  return false
	}
else
	{
		return true
	}
}

