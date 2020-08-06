ViridianForest2Object:
	db $3 ; border block

	db $2 ; warps
	db $20, $2F, $6, VIRIDIAN_FOREST
	db $21, $2F, $7, VIRIDIAN_FOREST

	db $0 ; signs

	db $5 ; objects
	object SPRITE_BIRD, $3, $2, STAY, DOWN, $1, LOTUSAN, 50
	object SPRITE_BALL, $2, $1e, STAY, NONE, $2, HONEY_STONE
	object SPRITE_BALL, $e, $e, STAY, NONE, $3, LEAF_STONE
	object SPRITE_BALL, $1b, $14, STAY, NONE, $4, MAX_REPEL
	object SPRITE_BALL, $28, $b, STAY, NONE, $5, PP_UP

	; warp-to
	EVENT_DISP VIRIDIAN_FOREST_2_WIDTH, $20, $2F
	EVENT_DISP VIRIDIAN_FOREST_2_WIDTH, $21, $2F
