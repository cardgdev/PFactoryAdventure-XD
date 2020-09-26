CeladonMansion2Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2TextPointers:
	dw CoffeeDevText
	dw CeladonMansion2Text1

CoffeeDevText:
	TX_FAR _CoffeeDevText
	db "@"

CeladonMansion2Text1:
	TX_FAR _CeladonMansion2Text1
	db "@"
