CinnabarEvoClubObject:
	db $d ; border block

	db $2 ; warps
	db $7, $6, $1, CINNABAR_ISLAND
	db $7, $7, $1, CINNABAR_ISLAND

	db $0 ; signs

	db $0 ; objects

	; warp-to
	EVENT_DISP CINNABAR_EVO_CLUB_WIDTH, $7, $6
	EVENT_DISP CINNABAR_EVO_CLUB_WIDTH, $7, $7
