db DEX_MEGAPHON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 65 ; base defense
db 80 ; base speed
db 90 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 170 ; catch rate
db 109 ; base exp yield
INCBIN "pic/bmon/megaphon.pic",0,1 ; 77, sprite dimensions
dw MegaphonPicFront
dw MegaphonPicBack
; attacks known at lvl 0
db POUND
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(MegaphonPicFront) ; padding
