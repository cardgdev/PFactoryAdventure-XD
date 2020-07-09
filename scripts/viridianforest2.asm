ViridianForest2Script:
	call EnableAutoTextBoxDrawing
	ld hl, LotusanTrainerHeader
	ld de, .ScriptPointers
	ld a, [wViridianForest2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianForest2CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

ViridianForest2TextPointers:
	dw LotusanText

LotusanTrainerHeader:
	dbEventFlagBit EVENT_BEAT_LOTUSAN
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_LOTUSAN
	dw LotusanBattleText ; TextBeforeBattle
	dw LotusanBattleText ; TextAfterBattle
	dw LotusanBattleText ; TextEndBattle
	dw LotusanBattleText ; TextEndBattle

	db $ff

LotusanText:
	TX_ASM
	Call DetermineReferenceLevel
	ld hl, wMapSpriteExtraData+$1
	ld a, [wReferenceLevel]
	ld [hl], a
	ld hl, LotusanTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

LotusanBattleText:
	TX_FAR _LotusanBattleText
	TX_ASM
	ld a, LOTUSAN
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

_LotusanBattleText:
	text "LOOO!"
	done
