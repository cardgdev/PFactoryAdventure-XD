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
	text "THUNDER"
	done

_LeafNPCText:
	text "LEAF"
	done

_WaterNPCText:
	text "WATER"
	done

_FireNPCText:
	text "FIRE"
	done

_HoneyNPCText:
	text "HONEY"
	done

_IceNPCText:
	text "ICE"
	done

_MistNPCText:
	text "MIST"
	done

