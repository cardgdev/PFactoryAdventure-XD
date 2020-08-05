db DEX_SHELLRY ; pokedex id
db 40 ; base hp
db 20 ; base attack
db 200 ; base defense
db 10 ; base speed
db 88 ; base special
db BUG ; species type 1
db ROCK ; species type 2
db 190 ; catch rate
db 110 ; base exp yield
INCBIN "pic/pfmon/shellry.pic",0,1 ; 55, sprite dimensions
dw ShellryPicFront
dw ShellryPicBack
; attacks known at lvl 0
db BIDE
db WITHDRAW
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,7
	tmlearn 11,12,13,14
	tmlearn 20,21,22
	tmlearn 28,31,32
	tmlearn 33,36,40
	tmlearn 44,47,48
	tmlearn 50,53
db BANK(ShellryPicFront)
