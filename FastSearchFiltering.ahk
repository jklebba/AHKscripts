; Hotstrings to make filtering search results by date much faster.
; Works in google, gmail, google drive, and likely many more search engines.

; EXAMPLE:
; Typing ';om' will send a string to filter search results to within the last month.

; 'od' is short in the last one day, 'sm' is short for in the last six months, 
; 'om' the last one month, and so on. 

sendFilterString(numDays)
{
	var := CurrentDateTime
	var += -numDays, days
	FormatTime, var, %var%, yyyy-MM-dd
	Sendinput after:%var%
}

::;oy::

sendFilterString(365)
return

::;sm::
sendFilterString(182)
return

::;om::
sendFilterString(30)
return

::;od::
sendFilterString(1)
return

::;td::
sendFilterString(2)
return

::;ow::
sendFilterString(7)
return

::;ty::
sendFilterString(730)
return

::;fy::
sendFilterString(1825)
return

::;tm::
sendFilterString(80)
return