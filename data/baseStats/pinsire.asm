db DEX_PINSIRE ; pokedex id
db 65 ; base hp
db 135 ; base attack
db 100 ; base defense
db 90 ; base speed
db 65 ; base special
db BUG ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 220 ; base exp yield
INCBIN "pic/pfmon/pinsire.pic",0,1 ; 55, sprite dimensions
dw PinsirePicFront
dw PinsirePicBack
; attacks known at lvl 0
db VICEGRIP
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 3,6,7,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 26,31,32
	tmlearn 0
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(PinsirePicFront)
