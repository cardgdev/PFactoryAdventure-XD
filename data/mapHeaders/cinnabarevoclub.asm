CinnabarEvoClub_h:
	db INTERIOR ; tileset
	db CINNABAR_EVO_CLUB_HEIGHT, CINNABAR_EVO_CLUB_WIDTH ; dimensions (y, x)
	dw CinnabarEvoClubBlocks, CinnabarEvoClubTextPointers, CinnabarEvoClubScript ; blocks, texts, scripts
	db $00 ; connections
	dw CinnabarEvoClubObject ; objects
