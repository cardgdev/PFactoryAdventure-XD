CreditsOrder:
; subsequent credits elements will be displayed on separate lines.
; $FF, $FE, $FD, $FC, $FB, and $FA are commands that are used
; to go to the next set of credits texts.
	db CRED_MON, CRED_VERSION, $FF
	db CRED_OGGAME, CRED_GAMEFREAK, $FF
	db CRED_HACKBASED, CRED_ROAMINGRED,CRED_SHADOWKNIGHT, $FD
	db CRED_MADEWITH, CRED_POKERED, $FE
	db CRED_ROMHACKER, CRED_CAMERUPT, $FF
	db CRED_WRITING, CRED_SPURDO, CRED_QUENT, CRED_TC, $FE
	db CRED_ADDART, CRED_TC, CRED_ROOL, CRED_HANGRY, $FF
	db CRED_PROMOART, CRED_TOMMO, $FD
	db CRED_DISASMGURU, CRED_LUCKY, CRED_RANGI, CRED_PFERO, $FF
	db CRED_BATTLETENT, CRED_ORIGTPP, CRED_ANNIVRED, CRED_TPPDEVS, $FD
	db CRED_PFARCHIVE, CRED_JDONALD, CRED_KAISER, $FD
	db CRED_SPECTHANKS, CRED_RHEG, CRED_NEWPFSTAFF, $FD
	db CRED_SPECTHANKS, CRED_SOUP, CRED_POLAND, $FD
	db CRED_ORIGPFSTAFF, CRED_MEWTHREE, CRED_ASPENTH, $FD
	db CRED_THANKYOU, CRED_FORPLAYING, $FF
	db $FB, $FF, $FA
