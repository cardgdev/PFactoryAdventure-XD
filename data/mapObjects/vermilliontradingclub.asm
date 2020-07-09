VermillionTradingClubObject:
	db $d ; border block

	db $2 ; warps
	db $7, $6, $9, VERMILION_CITY
	db $7, $7, $9, VERMILION_CITY

	db $0 ; signs

	db $5 ; objects
	object SPRITE_OAK_AIDE, $5, $1, STAY, DOWN, $1 ; person
	object SPRITE_GIRL, $1, $1, STAY, DOWN, $2 ; person
	object SPRITE_SAILOR, $9, $2, STAY, LEFT, $3 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $4, $6, STAY, LEFT, $4 ; person
	object SPRITE_LASS, $1, $3, STAY, DOWN, $5 ; person

	; warp-to
	EVENT_DISP VERMILLION_TRADING_CLUB_WIDTH, $7, $6
	EVENT_DISP VERMILLION_TRADING_CLUB_WIDTH, $7, $7
