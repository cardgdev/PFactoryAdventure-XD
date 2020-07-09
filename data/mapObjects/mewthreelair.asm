MewthreeLairObject:
	db $1 ; border block

	db $1 ; warps
	db $2, $1B, $1, UNKNOWN_DUNGEON_3

	db $0 ; signs

	db $6 ; objects
	object SPRITE_SLOWBRO, $3, $1, STAY, DOWN, $1, MEWTHREE, 70
	object SPRITE_ROCKET, $19, $8, STAY, RIGHT, $2, OPP_SOLDIER, $2F
	object SPRITE_ROCKET, $15, $7, STAY, LEFT, $3, OPP_SOLDIER, $30
	object SPRITE_ROCKET, $8, $c, STAY, RIGHT, $4, OPP_SOLDIER, $31
	object SPRITE_GIOVANNI, $2, $c, STAY, RIGHT, $5, OPP_BLAINE, $4
	object SPRITE_OAK, $5, $8, STAY, LEFT, $6, OPP_PROF_OAK, $1

	; warp-to
	EVENT_DISP MEWTHREE_LAIR_WIDTH, $2, $1B
