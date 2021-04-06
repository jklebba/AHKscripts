; Instantly use the arrow keys from the home row anytime, anywhere. 
; There's no need to waste time moving fingers from home row to arrow keys and then back again.
; Just hold down Right Alt and use the 'esdf' keys.
; Supports Home/End, highlighting text, moving word to word, fast scrolling/highlighting, etc.

; I use the layout 'esdf', similar to a 'wasd' layout but this can be easily remapped 
; to be similar to vim or any other key layout.


; The below line is optional. It will disable the right alt key. This can help prevent 
; annoying alt menus that occur when you press right alt, but then change your mind and 
; release right alt without triggering a hotkey.
Ralt:: return

; Standard arrow keys and Home/End keys
>!d:: Sendinput, {Down}
>!f:: Sendinput, {Right}
>!s:: Sendinput, {Left}
>!e:: Sendinput, {Up}
>!r:: Sendinput, {End}
>!w:: Sendinput, {Home}

; Hold Shift to select text
>!+d:: Sendinput, +{Down}
>!+f:: Sendinput, +{Right}
>!+s:: Sendinput, +{Left}
>!+e:: Sendinput, +{Up}
>!+r:: Sendinput, +{End}
>!+w:: Sendinput, +{Home}

; Hold Ctrl to move one word at the time or to use Ctrl-End/Ctrl-Home.
; Holding Ctrl also lets you move the cursor up/down 5 lines at a time.
>!^d:: Sendinput, {Down 5}
>!^f:: Sendinput, ^{Right}
>!^s:: Sendinput, ^{Left}
>!^e:: Sendinput, {Up 5}
>!^r:: Sendinput, ^{End}
>!^w:: Sendinput, ^{Home}
;Remap 'Ralt-a' to ctrl to make holding Ctrl easier when using arrow keys.
>!a::Ctrl


; Use Shift and Ctrl modifiers at the same time.
>!^+d:: Sendinput, +{Down 5}
>!^+f:: Sendinput, ^+{Right}
>!^+s:: Sendinput, ^+{Left}
>!^+e:: Sendinput, +{Up 5}
>!^+r:: Sendinput, ^+{End}
>!^+w:: Sendinput, ^+{Home}

; Optional page up page down keys
;>!3::Sendinput, {PgUp}
;>!x::Sendinput, {PgDn}