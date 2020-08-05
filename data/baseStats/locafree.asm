db DEX_LOCAFREE ; pokedex id
db 65 ; base hp
db 78 ; base attack
db 65 ; base defense
db 88 ; base speed
db 68 ; base special
db BUG ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 160 ; base exp yield
INCBIN "pic/pfmon/locafree.pic",0,1 ; 55, sprite dimensions
dw LocafreePicFront
dw LocafreePicBack
; attacks known at lvl 0
db TACKLE
db STRING_SHOT
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,3,6,7
	tmlearn 9,10,15
	tmlearn 18,21,22
	tmlearn 29,31,32
	tmlearn 33,39
	tmlearn 41,44,46
	tmlearn 50,51
db BANK(LocafreePicFront)
