ViridianForest2_h:
	db FOREST ; tileset
	db VIRIDIAN_FOREST_2_HEIGHT, VIRIDIAN_FOREST_2_WIDTH ; dimensions (y, x)
	dw ViridianForest2Blocks, ViridianForest2TextPointers, ViridianForest2Script ; blocks, texts, scripts
	db $00 ; connections
	dw ViridianForest2Object ; objects
