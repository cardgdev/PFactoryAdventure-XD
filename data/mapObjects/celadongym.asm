CeladonGymObject:
	db $3 ; border block

	db $2 ; warps
	db $11, $4, $6, $ff
	db $11, $5, $6, $ff

	db $0 ; signs

	db $8 ; objects
	object SPRITE_ERIKA, $4, $1, STAY, DOWN, $1, OPP_MIKAN, $1
	object SPRITE_LASS, $6, $3, STAY, DOWN, $2, OPP_LASS, $11
	object SPRITE_FOULARD_WOMAN, $0, $c, STAY, RIGHT, $3, OPP_BEAUTY, $1
	object SPRITE_LASS, $6, $9, STAY, DOWN, $4, OPP_JR_TRAINER_F, $b
	object SPRITE_FOULARD_WOMAN, $9, $c, STAY, DOWN, $5, OPP_BEAUTY, $2
	object SPRITE_LASS, $6, $1, STAY, LEFT, $6, OPP_LASS, $12
	object SPRITE_FOULARD_WOMAN, $3, $4, STAY, RIGHT, $7, OPP_BEAUTY, $3
	object SPRITE_LASS, $5, $8, STAY, DOWN, $8, OPP_COOLTRAINER_F, $1

	; warp-to
	EVENT_DISP CELADON_GYM_WIDTH, $11, $4
	EVENT_DISP CELADON_GYM_WIDTH, $11, $5
