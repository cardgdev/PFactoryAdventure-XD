_DaisyInitialText::
	text "h"
	done

_DaisyOfferMapText::
	text "I heard you and"
	line "BLUE are on a"
	cont "mission, take"
	cont "a TOWN MAP."
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_DaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_DaisyUseMapText::
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_BluesHouseText2::
	text "Grandpa fell ill"
	line "a bit before the"
	cont "lockdown started."
	
	para "He's recovering"
	line "while they set"
	cont "up his new lab"
	cont "in SILENT TOWN."
	done

_BluesHouseText3::
	text "It's a big map!"
	line "This is useful!"
	done
