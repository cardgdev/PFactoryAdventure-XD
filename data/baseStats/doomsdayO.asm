db DEX_DOOMSDAY_O ; pokedex id
db 100 ; base hp
db 134 ; base attack
db 95 ; base defense
db 91 ; base speed
db 80 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/doomsdayO.pic",0,1 ; 55, sprite dimensions
dw DoomsdayOPicFront
dw DoomsdayOPicBack
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
	tmlearn 33,34,38,40
	tmlearn 42,44,48
	tmlearn 50,51,54
db BANK(DoomsdayOPicFront)
