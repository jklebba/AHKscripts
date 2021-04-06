; Faster Browser navigation with the keyboard. 
; Includes forward/back, tab switching tabs, and scrolling.
; Right alt is the trigger key for all the hotkeys.

; Browser back/forward control
>!,::
SendInput, {Browser_Back}
return
>!.::
Sendinput {Browser_Forward}
return

; Tab switching
>!j:: Sendinput, ^+{Tab}
>!l:: Sendinput, ^{Tab}

; PgDn/PgUp for scrolling
>!k::Sendinput, {PgDn}
>!i::Sendinput, {PgUp}

