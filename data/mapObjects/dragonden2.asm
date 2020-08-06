DragonDen2Object:
	db $f ; border block

	db $2 ; warps
	db $5, $4, $5, DRAGON_DEN_1
	db $9, $1A, $0, DRAGON_DEN_3

	db $0 ; signs

	db $4 ; objects	
	object SPRITE_BLACK_HAIR_BOY_1, $11, $5, STAY, UP, $1, OPP_COOLTRAINER_M, $4
	object SPRITE_LASS, $b, $3, STAY, DOWN, $2, OPP_COOLTRAINER_F, $4
	object SPRITE_BALL, $1a, $5, STAY, NONE, $3, MAX_POTION
	object SPRITE_BALL, $d, $7, STAY, NONE, $4, NUGGET

	; warp-to
	EVENT_DISP DRAGON_DEN_2_WIDTH, $5, $4	
	EVENT_DISP DRAGON_DEN_2_WIDTH, $9, $1A
