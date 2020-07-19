BillsHouseObject:
	db $d ; border block

	db $3 ; warps
	db $7, $2, $0, ROUTE_25
	db $7, $3, $0, ROUTE_25
	db $0, $9, $0, BILLS_SECRET_GARDEN

	db $0 ; signs

	db $4 ; objects
	object SPRITE_SLOWBRO, $6, $5, STAY, NONE, $1 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $4, $4, STAY, NONE, $2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $6, $5, STAY, NONE, $3 ; person
	object SPRITE_SLOWBRO, $9, $1, STAY, DOWN, $4 ; new garden blocking statue

	; warp-to
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $2
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $3
	EVENT_DISP BILLS_HOUSE_WIDTH, $0, $9
