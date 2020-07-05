DragonDen4_h:
	db OVERWORLD ; tileset
	db DRAGON_DEN_4_HEIGHT, DRAGON_DEN_4_WIDTH ; dimensions (y, x)
	dw DragonDen4Blocks, DragonDen4TextPointers, DragonDen4Script ; blocks, texts, scripts
	db $00 ; connections
	dw DragonDen4Object ; objects
