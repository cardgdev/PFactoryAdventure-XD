db DEX_DRAKEN ; pokedex id
db 91 ; base hp
db 80 ; base attack
db 95 ; base defense
db 134 ; base speed
db 100 ; base special
db DRAGON ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/draken.pic",0,1 ; 55, sprite dimensions
dw DrakenPicFront
dw DrakenPicBack
; attacks known at lvl 0
db WRAP
db ROAR
db AGILITY
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 23
	tmlearn 27,30,31,32
	tmlearn 33,39,40
	tmlearn 41,44
	tmlearn 50,52,53
db BANK(DrakenPicFront)
