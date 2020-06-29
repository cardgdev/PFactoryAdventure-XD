FuchsiaGymObject:
	db $3 ; border block

	db $2 ; warps
	db $11, $4, $5, $ff
	db $11, $5, $5, $ff

	db $0 ; signs

	db $8 ; objects
	object SPRITE_TSUKUSHI, $3, $b, STAY, DOWN, $1, OPP_TSUKUSHI, $1
	object SPRITE_ROCKER, $8, $d, STAY, RIGHT, $2, OPP_JUGGLER, $7
	object SPRITE_ROCKER, $6, $8, STAY, RIGHT, $3, OPP_JUGGLER, $3
	object SPRITE_ROCKER, $9, $5, STAY, LEFT, $4, OPP_JUGGLER, $8
	object SPRITE_ROCKER, $3, $3, STAY, LEFT, $5, OPP_TAMER, $1
	object SPRITE_ROCKER, $7, $1, STAY, DOWN, $6, OPP_TAMER, $2
	object SPRITE_ROCKER, $2, $6, STAY, DOWN, $7, OPP_JUGGLER, $4
	object SPRITE_GYM_HELPER, $2, $f, STAY, DOWN, $8 ; person

	; warp-to
	EVENT_DISP FUCHSIA_GYM_WIDTH, $11, $4
	EVENT_DISP FUCHSIA_GYM_WIDTH, $11, $5
