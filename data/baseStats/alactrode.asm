db DEX_ALACTRODE ; pokedex id
db 65 ; base hp
db 50 ; base attack
db 80 ; base defense
db 110 ; base speed
db 110 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 170 ; base exp yield
INCBIN "pic/pfmon/alactrode.pic",0,1 ; 55, sprite dimensions
dw AlactrodePicFront
dw AlactrodePicBack
; attacks known at lvl 0
db TACKLE
db SCREECH
db SONICBOOM
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 24
	tmlearn 25,27,31,32
	tmlearn 33,36,39,40
	tmlearn 44,45,47
	tmlearn 49,50,55
db BANK(AlactrodePicFront)
