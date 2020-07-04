Route7Object:
	db $f ; border block

	db $5 ; warps
	db $18, $12, $2, ROUTE_7_GATE
	db $19, $12, $3, ROUTE_7_GATE
	db $18, $b, $0, ROUTE_7_GATE
	db $19, $b, $1, ROUTE_7_GATE
	db $1b, $5, $0, PATH_ENTRANCE_ROUTE_7

	db $1 ; signs
	db $1b, $3, $1 ; Route7Text1

	db $0 ; objects

	; warp-to
	EVENT_DISP ROUTE_7_WIDTH, $18, $12 ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $19, $12 ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $18, $b ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $18, $b ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $1b, $5 ; PATH_ENTRANCE_ROUTE_7
