SSAnne7Object:
	db $c ; border block

	db $1 ; warps
	db $7, $0, $8, SS_ANNE_2

	db $2 ; signs
	db $1, $4, $3 ; SSAnne7Text2
	db $2, $1, $4 ; SSAnne7Text3

	db $2 ; objects
	object SPRITE_SS_CAPTAIN, $4, $2, STAY, UP, $1 ; person
	object SPRITE_ROCKER, $3, $3, STAY, DOWN, $2, OPP_SURGE, $1

	; warp-to
	EVENT_DISP SS_ANNE_7_WIDTH, $7, $0 ; SS_ANNE_2
