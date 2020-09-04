_Route24Text_51510::
	text "Congratulations!"
	line "You beat all 5"
	cont "trainers in our"
	cont "recruiting test!@@"

_Route24Text_51515::
	db $0
	para "You just earned a"
	line "fabulous prize!"
	prompt

_Route24Text_5151a::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcf4b
	text "!@@"

_Route24Text_51521::
	text "You don't have"
	line "any room!"
	done

_Route24Text_51526::
	text "By the way, would"
	line "you like to join"
	cont "the KANTO DEFENCE"
	cont "FORCE?"

	para "We're committed to"
	line "defending this"
	cont "great region from"
	cont "all foes foreign"
	cont "and domestic!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

_Route24Text_5152b::
	text "Arrgh!"
	line "You are good!"
	prompt

_Route24Text_51530::
	text "With your ability,"
	line "you could become"
	cont "a sargent in"
	cont "the KDF!"
	done

_Route24BattleText1::
	text "I saw your feat"
	line "from the grass!"
	done
