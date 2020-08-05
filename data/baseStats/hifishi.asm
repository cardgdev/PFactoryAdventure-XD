db DEX_HIFISHI ; pokedex id
db 125 ; base hp
db 85 ; base attack
db 100 ; base defense
db 85 ; base speed
db 90 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/hifishi.pic",0,1 ; 55, sprite dimensions
dw HifishiPicFront
dw HifishiPicBack
; attacks known at lvl 0
db WATERFALL
db SLUDGE
db TWINEEDLE
db SPIKE_CANNON
db 5 ; growth rate
; learnset
	tmlearn 4,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 31,32
	tmlearn 33,36,40
	tmlearn 41,44,47
	tmlearn 50,53
db BANK(HifishiPicFront)
