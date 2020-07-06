ViridianForest2Object:
	db $3 ; border block

	db $2 ; warps
	db $20, $2F, $6, VIRIDIAN_FOREST
	db $21, $2F, $7, VIRIDIAN_FOREST

	db $0 ; signs

	db $0 ; objects

	; warp-to
	EVENT_DISP VIRIDIAN_FOREST_2_WIDTH, $20, $2F
	EVENT_DISP VIRIDIAN_FOREST_2_WIDTH, $21, $2F
