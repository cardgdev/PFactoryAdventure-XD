_SSAnne7RubText::
	text "CAPTAIN: Ooargh..."
	line "I feel hideous..."
	cont "That's the last"
	cont "time I drink with"
	cont "LT. SURGE!"

	para "<PLAYER> rubbed"
	line "the CAPTAIN's"
	cont "back!"

	para "Rub-rub..."
	line "Rub-rub...@@"

_ReceivingHM01Text::
	text "CAPTAIN: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "My liver can't"
	line "keep up like it"
	cont "used to when I"
	cont "was a younger"
	cont "sailor!"

	para "You probably need"
	line "a CUT HM, right?"
	
	para "Here, take this!"

	para "Teach it to your"
	line "#MON and you"
	cont "can see it CUT"
	cont "any time!"
	
	para "Now lets get this"
	line "ship out of here!"
	prompt

_ReceivedHM01Text::
	text "<PLAYER> got"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_SSAnne7Text_61932::
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
	line "completely wasted"
	cont "I guess its time!"
	done

_HM01NoRoomText::
	text "Oh no! You have"
	line "no room for this!"
	done

_SSAnne7Text2::
	text "Yuck! Shouldn't"
	line "have looked!"
	done

_SSAnne7Text3::
	text "It's a whiskey"
	line "catalogue..."
	cont "The CAPTAIN's"
	cont "reading this!"
	done

_SSAnne7BattleText1::
	text "Hic! Hey runt!"
	
	para "Me and the CAPTAIN"
	line "are in the middle"
	cont "of some important"
	cont "buisness!"
	
	para "Why don't you buzz"
	line "off before I go"
	cont "ahead and zap you"
	cont "outta here!"
	done

_SSAnne7EndBattleText1::
	text "Woah!"
	
	para "Hey wait..."
	line "Is it the booze"
	cont "or have I seen"
	cont "you somewhere"
	cont "before..."
	prompt

_SSAnne7AfterBattleText1::
	text "Hwoah... Yeah I've"
	line "had enough shots."
	
	para "I'm going down"
	line "with the ship!"
	
	para "(thud)"
	done
