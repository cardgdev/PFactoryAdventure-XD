_CopycatsHouse2FText_5ccd4::
	text "<PLAYER>: Hey kid"
	line "are you doing ok?"
	
	para "<PLAYER>: Wow she"
	line "really won't stop"
	cont "mimicking..."
	
	para "<PLAYER>: Maybe I"
	line "can find an item"
	cont "that will help"
	cont "her condition?"
	prompt

_TM31PreReceiveText::
	text "<PLAYER>: Hey"
	line "COPYCAT, I think"
	cont "this might help"
	cont "you out!"
	
	para "<PLAYER>: X"
	line "ACCURACY is basi-"
	cont "cally Ritalin,"
	cont "right?"

	para "<PLAYER> used the"
	line "X ACCURACY on"
	cont "COPYCAT!"

	para "COPYCAT: Wow! I"
	line "feel different!"
	
	para "I'll tell my"
	line "parents I got"
	cont "some good drugs"
	cont "from a stranger!"
	
	para "You can have this"
	line "TM, I won't be"
	cont "needing it!"
	prompt

_ReceivedTM31Text::
	text "<PLAYER> received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM31ExplanationText1::
	db $0
	para "TM31 was my"
	line "favorite, MIMIC!"

	para "Use it on a good"
	line "#MON!@@"

_TM31ExplanationText2::
	text "COPYCAT: Hi! I'm"
	line "doing a lot"
	cont "better now!"
	
	para "My mom said she"
	line "won't need to"
	cont "take me to"
	cont "therapy anymore!"
	done

_TM31NoRoomText::
	text "Don't you want"
	line "this?@@"

_CopycatsHouse2FText2::
	text "DODUO: THAT'S IT!"

	para "IF YOU CAN'T FIX"
	line "OUR DAUGHTER THEN"
	cont "WE'RE GETTING A"
	cont "DIVORCE, AND I"
	cont "MEAN IT STEVE!"
	done

_CopycatsHouse2FText3::
	text "This is a rare"
	line "#MON! Huh?"
	cont "It's only a doll!"
	done

_CopycatsHouse2FText6::
	text "A game about a"
	line "blue blob."
	
	para "No, not THAT"
	line "blue blob, this"
	cont "one is named"
	cont "JERRY."
	done

_CopycatsHouse2FText_5cd17::
	text "She's been on a"
	line "website..."
	
	para "THE #MON"
	line "FACTORY!"
	
	para "She's emailing an"
	line "idea to the"
	cont "site artists!"
	done

_CopycatsHouse2FText_5cd1c::
	text "Huh? Can't see!"
	done
