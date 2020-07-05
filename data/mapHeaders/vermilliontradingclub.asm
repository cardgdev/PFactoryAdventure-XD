VermillionTradingClub_h:
	db INTERIOR ; tileset
	db VERMILLION_TRADING_CLUB_HEIGHT, VERMILLION_TRADING_CLUB_WIDTH ; dimensions (y, x)
	dw VermillionTradingClubBlocks, VermillionTradingClubTextPointers, VermillionTradingClubScript ; blocks, texts, scripts
	db $00 ; connections
	dw VermillionTradingClubObject ; objects
