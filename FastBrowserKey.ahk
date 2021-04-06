;Makes it faster to do a quick search in the browser, activate your browser, and run your browser.

;Feel free to edit the code and change 'chrome' with your internet browser program of choice.

;GUIDE
;Press RAlt + c
;If chrome is active then a new tab will be opened with the cursor in the search bar
;If chrome is minimized then it will be activated
;If chrome is not running then it will be started


>!c:: 
if WinActive("ahk_exe chrome.exe")
{
SendInput, ^t
}
else if WinExist("ahk_exe chrome.exe")
{
WinActivate, ahk_exe chrome.exe
}
else
{
run, chrome.exe
}
return
