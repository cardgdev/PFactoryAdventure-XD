db DEX_DOOMSDAY ; pokedex id
db 100 ; base hp
db 134 ; base attack
db 95 ; base defense
db 91 ; base speed
db 80 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 3 ; catch rate
db 218 ; base exp yield
INCBIN "pic/bmon/doomsday.pic",0,1 ; 77, sprite dimensions
dw DoomsdayPicFront
dw DoomsdayPicBack
; attacks known at lvl 0
db SCRATCH
db NIGHT_SHADE
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(DoomsdayPicFront) ; padding
