DragonDen3Object:
	db $7d ; border block

	db $2 ; warps
	db $1, $3, $1, DRAGON_DEN_2
	db $1, $1B, $0, DRAGON_DEN_4

	db $0 ; signs

	db $6 ; objects	
	object SPRITE_BLACK_HAIR_BOY_1, $1, $f, STAY, DOWN, $1, OPP_COOLTRAINER_M, $6
	object SPRITE_LASS, $2, $c, STAY, RIGHT, $2, OPP_COOLTRAINER_F, $6
	object SPRITE_BLACK_HAIR_BOY_1, $14, $8, STAY, DOWN, $3, OPP_COOLTRAINER_M, $7
	object SPRITE_LASS, $10, $1, STAY, DOWN, $4, OPP_COOLTRAINER_F, $7
	object SPRITE_BLACK_HAIR_BOY_1, $19, $c, STAY, LEFT, $5, OPP_COOLTRAINER_M, $8
	object SPRITE_LASS, $18, $4, STAY, RIGHT, $6, OPP_COOLTRAINER_F, $8

	; warp-to
	EVENT_DISP DRAGON_DEN_3_WIDTH, $1, $3	
	EVENT_DISP DRAGON_DEN_3_WIDTH, $1, $1B
