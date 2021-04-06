; For keyboards with no numpad keys - creates a makeshift numpad on the left side
; of the keyboard. Also remaps some math keys on the right side. Alt-n toggles the numpad.

numpadmode := 0

!n:: 
numpadmode := !numpadmode
return


#If numpadmode = 1
x::Send 1
c::Send 2
v::Send 3
s::Send 4 
d::Send 5 
f::Send 6
w::Send 7
e::Send 8
r::Send 9 
a::Send 0
z::Send 0
p::Sendraw +
m::Send {=}
j::Sendraw + 
k::Send -
l::Send *
h::Send {=}
#if