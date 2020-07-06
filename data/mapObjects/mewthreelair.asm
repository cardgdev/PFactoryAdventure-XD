MewthreeLairObject:
	db $1 ; border block

	db $1 ; warps
	db $2, $1B, $1, UNKNOWN_DUNGEON_3

	db $0 ; signs

	db $1 ; objects
	object SPRITE_SLOWBRO, $3, $1, STAY, DOWN, $1, MEWTHREE, 70

	; warp-to
	EVENT_DISP MEWTHREE_LAIR_WIDTH, $2, $1B
