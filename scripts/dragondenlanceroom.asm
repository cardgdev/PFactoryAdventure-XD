DragonDenLanceRoomScript:
	jp EnableAutoTextBoxDrawing

DragonDenLanceRoomTextPointers:
	dw LanceCaveText

LanceCaveText:
	TX_FAR _LanceCaveText
	db "@"

_LanceCaveText::
	text "Hmm..."

	para "RED? Is that you?"

	para "Have you come here"
	line "seeking a battle?"

	para "No, if that's what"
	line "you wanted then"
	cont "you would have"
	cont "went straight to"
	cont "INDIGO PLATEAU..."

	para "Anyway, this cave"
	line "is where I come"
	cont "to meditate."
	
	para "It's said that a"
	line "legendary DRAGON"
	cont "#MON sleeps on"
	cont "the peak of the"
	cont "mountain."

	para "If that's what"
	line "you came here to"
	cont "find, then all I"
	cont "can say is good"
	cont "luck!"

	para "You'll have to"
	line "best an army of"
	cont "highly skilled"
	cont "#MON Trainers"
	cont "on the way up."
	done