DisplayEffectiveness:
	ld a, [wDamageMultipliers]
	and a, $7F
	ret z ; no flags were set, therefore neutral
	cp %00000011
	ret z ; SE to one type and NVE to the other type
	rra ; rotate right into carry, i.e. test bit 0, which is NVE
	ld hl, SuperEffectiveText
	jr nc, .done
	ld hl, NotVeryEffectiveText
.done
	jp PrintText

SuperEffectiveText:
	TX_FAR _SuperEffectiveText
	db "@"

NotVeryEffectiveText:
	TX_FAR _NotVeryEffectiveText
	db "@"
