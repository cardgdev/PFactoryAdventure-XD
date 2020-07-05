MewthreeLair_h:
	db FACILITY ; tileset
	db MEWTHREE_LAIR_HEIGHT, MEWTHREE_LAIR_WIDTH ; dimensions (y, x)
	dw MewthreeLairBlocks, MewthreeLairTextPointers, MewthreeLairScript ; blocks, texts, scripts
	db $00 ; connections
	dw MewthreeLairObject ; objects
