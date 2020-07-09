CinnabarEvoClubObject:
	db $d ; border block

	db $2 ; warps
	db $7, $6, $1, CINNABAR_ISLAND
	db $7, $7, $1, CINNABAR_ISLAND

	db $0 ; signs

	db $7 ; objects
	object SPRITE_ROCKER, $1, $1, STAY, DOWN, $1 ; person
	object SPRITE_LASS, $5, $1, STAY, DOWN, $2 ; person
	object SPRITE_BLACKBELT, $4, $6, STAY, NONE, $3 ; person
	object SPRITE_FISHER, $4, $4, STAY, NONE, $4 ; person
	object SPRITE_BUG_CATCHER, $9, $4, STAY, NONE, $5 ; person
	object SPRITE_GIRL, $9, $2, STAY, NONE, $6 ; person
	object SPRITE_OAK_AIDE, $1, $3, STAY, NONE, $7 ; person

	; warp-to
	EVENT_DISP CINNABAR_EVO_CLUB_WIDTH, $7, $6
	EVENT_DISP CINNABAR_EVO_CLUB_WIDTH, $7, $7
