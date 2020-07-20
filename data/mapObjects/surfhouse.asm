SurfHouseObject:
	db $a ; border block

	db $2 ; warps
	db $7, $2, $0, ROUTE_19
	db $7, $3, $0, ROUTE_19

	db $0 ; signs

	db $1 ; objects
	object SPRITE_FISHER, $3, $3, STAY, NONE, $1 ; person

	; warp-to
	EVENT_DISP SURF_HOUSE_WIDTH, $7, $2
	EVENT_DISP SURF_HOUSE_WIDTH, $7, $3
