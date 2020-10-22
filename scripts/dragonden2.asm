DragonDen2Script:
	call EnableAutoTextBoxDrawing
	ld hl, DragonDen2TrainerHeader1
	ld de, .ScriptPointers
	ld a, [wDragonDen2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wDragonDen2CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

DragonDen2TextPointers:
	dw DragonDen2Text1
	dw DragonDen2Text2
	dw PickUpItemText
	dw PickUpItemText

DragonDen2TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN2_TRAINER_1
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN2_TRAINER_1
	dw DragonDen2BattleText1 ; TextBeforeBattle
	dw DragonDen2AfterBattleText1 ; TextAfterBattle
	dw DragonDen2EndBattleText1 ; TextEndBattle
	dw DragonDen2EndBattleText1 ; TextEndBattle

DragonDen2TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN2_TRAINER_2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN2_TRAINER_2
	dw DragonDen2BattleText2 ; TextBeforeBattle
	dw DragonDen2AfterBattleText2 ; TextAfterBattle
	dw DragonDen2EndBattleText2 ; TextEndBattle
	dw DragonDen2EndBattleText2 ; TextEndBattle

	db $ff

;----------------------------------------------------------------------------------

DragonDen2Text1:
	TX_ASM
	ld hl, DragonDen2TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

DragonDen2BattleText1:
	TX_FAR _DragonDen2BattleText1
	db "@"

DragonDen2EndBattleText1:
	TX_FAR _DragonDen2EndBattleText1
	db "@"

DragonDen2AfterBattleText1:
	TX_FAR _DragonDen2AfterBattleText1
	db "@"

DragonDen2Text2:
	TX_ASM
	ld hl, DragonDen2TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

DragonDen2BattleText2:
	TX_FAR _DragonDen2BattleText2
	db "@"

DragonDen2EndBattleText2:
	TX_FAR _DragonDen2EndBattleText2
	db "@"

DragonDen2AfterBattleText2:
	TX_FAR _DragonDen2AfterBattleText2
	db "@"
;------------------------------------------------------------------------------------

;cooltrainer 1
_DragonDen2BattleText1::
	text "This mountain is"
	line "full of draconic"
	cont "energy!"
	done

_DragonDen2EndBattleText1::
	text "Cold"
	line "blooded!"
	prompt

_DragonDen2AfterBattleText1::
	text "DRAGON types run"
	line "wild and free"
	cont "in this place!"
	done

;cooltrainer 2
_DragonDen2BattleText2::
	text "I'm one of the"
	line "legendary DRAGON"
	cont "CLAN!"
	done

_DragonDen2EndBattleText2::
	text "A"
	line "ways to go still!"
	prompt

_DragonDen2AfterBattleText2::
	text "One day I want to"
	line "surpass LANCE!"
	done
