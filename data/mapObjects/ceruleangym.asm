CeruleanGymObject:
	db $3 ; border block

	db $2 ; warps
	db $d, $4, $3, $ff
	db $d, $5, $3, $ff

	db $0 ; signs

	db $4 ; objects
	object SPRITE_HAYATO, $4, $1, STAY, DOWN, $1, OPP_HAYATO, $1
	object SPRITE_BLACK_HAIR_BOY_1, $3, $8, STAY, RIGHT, $2, OPP_BIRD_KEEPER, $C
	object SPRITE_BLACK_HAIR_BOY_1, $6, $5, STAY, LEFT, $3, OPP_BIRD_KEEPER, $D
	object SPRITE_GYM_HELPER, $7, $a, STAY, DOWN, $4 ; person

	; warp-to
	EVENT_DISP CERULEAN_GYM_WIDTH, $d, $4
	EVENT_DISP CERULEAN_GYM_WIDTH, $d, $5
