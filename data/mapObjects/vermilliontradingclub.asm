VermillionTradingClubObject:
	db $d ; border block

	db $2 ; warps
	db $7, $6, $9, VERMILION_CITY
	db $7, $7, $9, VERMILION_CITY

	db $0 ; signs

	db $0 ; objects

	; warp-to
	EVENT_DISP VERMILLION_TRADING_CLUB_WIDTH, $7, $6
	EVENT_DISP VERMILLION_TRADING_CLUB_WIDTH, $7, $7
