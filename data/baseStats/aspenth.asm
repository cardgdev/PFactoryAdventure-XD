db DEX_ASPENTH ; pokedex id
db 110 ; base hp
db 130 ; base attack
db 154 ; base defense
db 90 ; base speed
db 106 ; base special
db BUG ; species type 1
db ARMOR ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/aspenth.pic",0,1 ; 55, sprite dimensions
dw AspenthPicFront
dw AspenthPicBack
; attacks known at lvl 0
db HARDEN
db SLASH
db ARMOR_CLAW
db TWINEEDLE
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 9,10,15
	tmlearn 17,18,19,20,21,24
	tmlearn 25,26,28,31,32
	tmlearn 40
	tmlearn 44,45,48
	tmlearn 49,50,51,54
db BANK(AspenthPicFront)
