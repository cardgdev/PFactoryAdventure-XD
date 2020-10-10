_TM29PreReceiveText::
	text "...Wait! Don't"
	line "say a word!"

	para "You need this!"
	prompt

_ReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM29ExplanationText::
	text "TM29 is PSYCHIC!"

	para "It can lower the"
	line "target's SPECIAL"
	cont "abilities."
	
	para "Good luck on"
	line "your secret"
	cont "mission, RED!"
	cont "I won't tell a"
	cont "single soul!"
	done

_TM29NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
