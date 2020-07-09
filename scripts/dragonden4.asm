DragonDen4Script:
	call EnableAutoTextBoxDrawing
	ld hl, LuxorTrainerHeader
	ld de, .ScriptPointers
	ld a, [wDragonDen4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wDragonDen4CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

DragonDen4TextPointers:
	dw LuxorText

LuxorTrainerHeader:
	dbEventFlagBit EVENT_BEAT_LOTUSAN
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_LUXOR
	dw LuxorBattleText ; TextBeforeBattle
	dw LuxorBattleText ; TextAfterBattle
	dw LuxorBattleText ; TextEndBattle
	dw LuxorBattleText ; TextEndBattle

	db $ff

LuxorText:
	TX_ASM
	Call DetermineReferenceLevel
	ld hl, wMapSpriteExtraData+$1
	ld a, [wReferenceLevel]
	ld [hl], a
	ld hl, LuxorTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

LuxorBattleText:
	TX_FAR _LuxorBattleText
	TX_ASM
	ld a, LUXOR
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

_LuxorBattleText:
	text "LUUX!"
	done
