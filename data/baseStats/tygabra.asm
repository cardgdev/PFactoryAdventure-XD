db DEX_TYGABRA ; pokedex id
db 40 ; base hp
db 105 ; base attack
db 30 ; base defense
db 105 ; base speed
db 40 ; base special
db PSYCHIC ; species type 1
db NORMAL ; species type 2
db 160 ; catch rate
db 100 ; base exp yield
INCBIN "pic/pfmon/tygabra.pic",0,1 ; 55, sprite dimensions
dw TygabraPicFront
dw TygabraPicBack
; attacks known at lvl 0
db BITE
db LEER
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15,16
	tmlearn 17,18,19,20,24
	tmlearn 25,27,28,29,31,32
	tmlearn 33,34,35,39,40
	tmlearn 44,46,48
	tmlearn 49,50,51,54,55
db BANK(TygabraPicFront)
