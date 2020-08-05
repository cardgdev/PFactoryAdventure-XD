db DEX_CLOWDROJEN ; pokedex id
db 63 ; base hp
db 54 ; base attack
db 50 ; base defense
db 85 ; base speed
db 72 ; base special
db FLYING ; species type 1
db FLYING ; species type 2
db 200 ; catch rate
db 110 ; base exp yield
INCBIN "pic/pfmon/clowdrojen.pic",0,1 ; 55, sprite dimensions
dw ClowdrojenPicFront
dw ClowdrojenPicBack
; attacks known at lvl 0
db GUST
db WHIRLWIND
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 11,12,13,14
	tmlearn 24
	tmlearn 25,31,32
	tmlearn 33,36
	tmlearn 41,44,47
	tmlearn 50,52,53
db BANK(ClowdrojenPicFront)
