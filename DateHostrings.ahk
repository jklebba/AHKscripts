; Hotstrings for typing today's date quickly. Just type ';d' or ';dd' to expand the hotstring.
; Two different formats supported, but it's possible to add any format you like.

::;d::
FormatTime, CurrentDate,, M/d/yyyy
SendInput %CurrentDate%
return

::;dd::
FormatTime, CurrentDate,, d MMMM yyyy
SendInput %CurrentDate%
return