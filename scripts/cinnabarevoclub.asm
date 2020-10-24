CinnabarEvoClubScript:
	call EnableAutoTextBoxDrawing
	ret

CinnabarEvoClubTextPointers:
	dw ThunderNPCText
	dw LeafNPCText
	dw FireNPCText
	dw WaterNPCText
	dw HoneyNPCText
	dw IceNPCText
	dw MistNPCText

ThunderNPCText:
	TX_FAR _ThunderNPCText
	db "@"

LeafNPCText:
	TX_FAR _LeafNPCText
	db "@"

FireNPCText:
	TX_FAR _FireNPCText
	db "@"

WaterNPCText:
	TX_FAR _WaterNPCText
	db "@"

HoneyNPCText:
	TX_FAR _HoneyNPCText
	db "@"

IceNPCText:
	TX_FAR _IceNPCText
	db "@"

MistNPCText:
	TX_FAR _MistNPCText
	db "@"

;-----------------------------------------------------

_ThunderNPCText:
	text "Yo, I heard"
	line "ELECTODE and"
	cont "SHOCKRA can use"
	cont "THUNDER STONE to"
	cont "evolve!"
	done

_LeafNPCText:
	text "EEVEE, SEEDLING,"
	line "and FORESAUR can"
	cont "use a LEAF STONE"
	cont "to evolve. Isn't"
	cont "it lovely?"
	done

_WaterNPCText:
	text "STARYU and"
	line "SHELLDER are the"
	cont "only WATER STONE"
	cont "evolvers still!"
	done

_FireNPCText:
	text "FIRE STONES will"
	line "fire up your"
	cont "PIKACHU, METAPOD,"
	cont "PERSIAN, VULPIX,"
	cont "GASTLY, and"
	cont "PYROMANIAC!"
	done

_HoneyNPCText:
	text "HONEY STONES are"
	line "rare amber chunks"
	cont "full of BUG DNA!"
	
	para "PIKACHU, EEVEE,"
	line "and PINSIR can"
	cont "evolve with them!"
	done

_IceNPCText:
	text "ICE STONES come"
	line "all the way from"
	cont "high up in the"
	cont "mountains of"
	cont "a far away place."
	
	para "They'll evolve a"
	line "GASTLY, GRANITE,"
	cont "SCYTHEPER, or"
	cont "DRAKOR."
	done

_MistNPCText:
	text "Have you heard of"
	line "MIST STONES?"
	
	para "They can evolve"
	line "all kinds of"
	cont "#MON! Even"
	cont "some that have"
	cont "already used"
	cont "another stone"
	cont "to evolve!"
	done

