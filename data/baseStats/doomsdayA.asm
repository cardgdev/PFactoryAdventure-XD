db DEX_DOOMSDAY_A ; pokedex id
db 80 ; base hp
db 95 ; base attack
db 91 ; base defense
db 134 ; base speed
db 100 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/doomsdayA.pic",0,1 ; 55, sprite dimensions
dw DoomsdayAPicFront
dw DoomsdayAPicBack
; attacks known at lvl 0
db NIGHT_SHADE
db HYPNOSIS
db SHADOW
db CONFUSE_RAY
db 5 ; growth rate
; learnset
	tmlearn 4,6,7
	tmlearn 9,10,13,14,15
	tmlearn 20
	tmlearn 26,28,31,32
	tmlearn 33,34,40
	tmlearn 42,44,48
	tmlearn 50,51
db BANK(DoomsdayAPicFront)
