db DEX_DOOMSAY ; pokedex id
db 41 ; base hp
db 64 ; base attack
db 45 ; base defense
db 50 ; base speed
db 50 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 67 ; base exp yield
INCBIN "pic/bmon/doomsay.pic",0,1 ; 55, sprite dimensions
dw DoomsayPicFront
dw DoomsayPicBack
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
db Bank(DoomsayPicFront) ; padding
