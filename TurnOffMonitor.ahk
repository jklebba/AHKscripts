;Press Ctrl + Escape to turn off the monitor.
;Works on most systems

^Esc:: 
sleep, 500 ;sleep for a bit to avoid any incidental input that might wake the monitor
SendMessage, 0x112, 0xF170, 2, , Program Manager
return