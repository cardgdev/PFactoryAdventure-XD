INCLUDE "charmap.asm"
INCLUDE "constants/text_constants.asm"
TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"
INCLUDE "hram.asm"


SECTION "Text 1", ROMX, BANK[TEXT_1]

_CardKeySuccessText1::
	text "Bingo!@@"

_CardKeySuccessText2::
	text ""
	line "The CARD KEY"
	cont "opened the door!"
	done

_CardKeyFailText::
	text "Darn! It needs a"
	line "CARD KEY!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text ": @@"

_NoNibbleText::
	text "Not even a nibble!"
	prompt

_NothingHereText::
	text "Looks like there's"
	line "nothing here."
	prompt

_ItsABiteText::
	text "Oh!"
	line "It's a bite!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "Ground rose up"
	line "somewhere!"
	done

_BoulderText::
	text "This requires"
	line "STRENGTH to move!"
	done

_MartSignText::
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

_PokeCenterSignText::
	text "Heal Your #MON!"
	line "#MON CENTER"
	done

_FoundItemText::
	text "<PLAYER> found"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_NoMoreRoomForItemText::
	text "No more room for"
	line "items!"
	done

_OaksAideHiText::
	text "Hi! Remember me?"
	line "I'm PROF.OAK's"
	cont "AIDE!"

	para "If you caught @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "kinds of #MON,"
	cont "I'm supposed to"
	cont "give you an"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " kinds of"
	cont "#MON?"
	done

_OaksAideUhOhText::
	text "Let's see..."
	line "Uh-oh! You have"
	cont "caught only @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text ""
	cont "kinds of #MON!"

	para "You need @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " kinds"
	line "if you want the"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Oh. I see."

	para "When you get @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "kinds, come back"
	cont "for @"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "Great! You have"
	line "caught @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text " kinds "
	cont "of #MON!"
	cont "Congratulations!"

	para "Here you go!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> got the"
	line "@"
	TX_RAM wOaksAideRewardItemName
	text "!@@"

_OaksAideNoRoomText::
	text "Oh! I see you"
	line "don't have any"
	cont "room for the"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

INCLUDE "text/maps/viridian_forest.asm"
INCLUDE "text/maps/mt_moon_1f.asm"
INCLUDE "text/maps/mt_moon_b1f.asm"
INCLUDE "text/maps/mt_moon_b2f.asm"
INCLUDE "text/maps/ss_anne_1.asm"
INCLUDE "text/maps/ss_anne_2.asm"
INCLUDE "text/maps/ss_anne_3.asm"
INCLUDE "text/maps/ss_anne_5.asm"
INCLUDE "text/maps/ss_anne_6.asm"
INCLUDE "text/maps/ss_anne_7.asm"
INCLUDE "text/maps/ss_anne_8.asm"
INCLUDE "text/maps/ss_anne_9.asm"
INCLUDE "text/maps/ss_anne_10.asm"
INCLUDE "text/maps/victory_road_3f.asm"
INCLUDE "text/maps/rocket_hideout_b1f.asm"
INCLUDE "text/maps/rocket_hideout_b2f.asm"
INCLUDE "text/maps/rocket_hideout_b3f.asm"
INCLUDE "text/maps/rocket_hideout_b4f.asm"
INCLUDE "text/maps/rocket_hideout_elevator.asm"
INCLUDE "text/maps/silph_co_2f.asm"
INCLUDE "text/maps/silph_co_3f.asm"
INCLUDE "text/maps/silph_co_4f.asm"
INCLUDE "text/maps/silph_co_5f_1.asm"


SECTION "Text 2", ROMX, BANK[TEXT_2]

INCLUDE "text/maps/silph_co_5f_2.asm"
INCLUDE "text/maps/silph_co_6f.asm"
INCLUDE "text/maps/silph_co_7f.asm"
INCLUDE "text/maps/silph_co_8f.asm"
INCLUDE "text/maps/silph_co_9f.asm"
INCLUDE "text/maps/silph_co_10f.asm"
INCLUDE "text/maps/silph_co_11f.asm"
INCLUDE "text/maps/mansion_2f.asm"
INCLUDE "text/maps/mansion_3f.asm"
INCLUDE "text/maps/mansion_b1f.asm"
INCLUDE "text/maps/safari_zone_east.asm"
INCLUDE "text/maps/safari_zone_north.asm"
INCLUDE "text/maps/safari_zone_west.asm"
INCLUDE "text/maps/safari_zone_center.asm"
INCLUDE "text/maps/safari_zone_rest_house_1.asm"
INCLUDE "text/maps/safari_zone_secret_house.asm"
INCLUDE "text/maps/safari_zone_rest_house_2.asm"
INCLUDE "text/maps/safari_zone_rest_house_3.asm"
INCLUDE "text/maps/safari_zone_rest_house_4.asm"
INCLUDE "text/maps/unknown_dungeon_b1f.asm"
INCLUDE "text/maps/victory_road_1f.asm"
INCLUDE "text/maps/lance.asm"
INCLUDE "text/maps/hall_of_fame.asm"
INCLUDE "text/maps/champion.asm"
INCLUDE "text/maps/lorelei.asm"
INCLUDE "text/maps/bruno.asm"




SECTION "Text 3", ROMX, BANK[TEXT_3]

INCLUDE "text/maps/rock_tunnel_b2f_2.asm"
INCLUDE "text/maps/seafoam_islands_b4f.asm"

_AIBattleWithdrawText::
	TX_RAM wTrainerName
	text " with-"
	line "drew @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	TX_RAM wTrainerName
	text ""
	line "used @"
	TX_RAM wcd6d
	text ""
	cont "on @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text " went"
	line "to @"
	TX_RAM wGrassRate
	text "."
	done

_TradeForText::
	text "For <PLAYER>'s"
	line "@"
	TX_RAM wcf4b
	text ","
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text " sends"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text " waves"
	line "farewell as"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text " is"
	line "transferred."
	done

_TradeTakeCareText::
	text "Take good care of"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWillTradeText::
	TX_RAM wGrassRate
	text " will"
	line "trade @"
	TX_RAM wcd6d
	text ""
	done

_TradeforText::
	text "for <PLAYER>'s"
	line "@"
	TX_RAM wcf4b
	text "."
	done

_PlaySlotMachineText::
	text "A slot machine!"
	line "Want to play?"
	done

_OutOfCoinsSlotMachineText::
	text "Darn!"
	line "Ran out of coins!"
	done

_BetHowManySlotMachineText::
	text "Bet how many"
	line "coins?"
	done

_StartSlotMachineText::
	text "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Not enough"
	line "coins!"
	prompt

_OneMoreGoSlotMachineText::
	text "One more "
	line "go?"
	done

_LinedUpText::
	text " lined up!"
	line "Scored @"
	TX_RAM wcf4b
	text " coins!"
	done

_NotThisTimeText::
	text "Not this time!"
	prompt

_YeahText::
	text "Yeah!@@"

_DexSeenOwnedText::
	text "#DEX   Seen:@"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line "         Owned:@"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db "@"

_DexRatingText::
	text "#DEX Rating", $6d
	done

_GymStatueText1::
	TX_RAM wGymCityName
	text ""
	line "#MON GYM"
	cont "LEADER: @"
	TX_RAM wGymLeaderName
	text ""

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	done

_GymStatueText2::
	TX_RAM wGymCityName
	text ""
	line "#MON GYM"
	cont "LEADER: @"
	TX_RAM wGymLeaderName
	text ""

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "#MON CENTERs"
	line "heal tired"
	cont "#MON and"
	cont "tired feet"
	cont "from travelling"
	cont "as well!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "That JIGLYFAIRY"
	line "got even better"
	cont "at singing me"
	cont "to sleep..."
	done

_CeruleanPokecenterGuyText::
	text "BILL's been"
	line "reclusive lately."
	
	para "I hope the guy"
	line "is doing ok."
	done

_LavenderPokecenterGuyText::
	text "Hey kid, wanna"
	line "get your fortune"
	cont "told?"
	
	para "Ooooooohhh..."
	line "Aaaaaaahhh..."
	
	para "I seeeee..."
	line "You giving meee"
	cont "ten buuuucckks!"
	
	para "...No dice?"
	done

_MtMoonPokecenterBenchGuyText::
	text "Do you think if"
	line "I use a MOON"
	cont "STONE on myself"
	cont "I'll grow bunny"
	cont "ears?"
	done

_RockTunnelPokecenterGuyText::
	text "I wanted to"
	line "go explore the"
	cont "spooky old"
	cont "POWER PLANT"
	cont "across the river."
	done

_VermilionPokecenterGuyText::
	text "Grinding levels"
	line "is for losers!"
	
	para "Sound strategy"
	line "is the best way"
	cont "to the top!"
	done

_CeladonCityPokecenterGuyText::
	text "If I had a BIKE"
	line "I'd put on one"
	cont "of those tight"
	cont "suits and hog"
	cont "the road like I'm"
	cont "in the Tour de"
	cont "France!"
	done

_FuchsiaCityPokecenterGuyText::
	text "The SAFARI ZONE"
	line "is full of cool"
	cont "#MON! And you"
	cont "don't even have"
	cont "to battle them!"
	done

_CinnabarPokecenterGuyText::
	text "If the GYM closed"
	line "then where are"
	cont "people getting"
	cont "their last"
	cont "BADGE from?"
	done

_SaffronCityPokecenterGuyText1::
	text "Man I'm all for"
	line "supporting the"
	cont "troops but the"
	cont "KDF are treating"
	cont "us as prisoners!"
	done

_SaffronCityPokecenterGuyText2::
	text "Man, think of"
	line "all those tax"
	cont "dollars wasted"
	cont "on things like"
	cont "raiding SILPH."
	
	para "Can't they have"
	line "just ASKED for"
	cont "help?"
	done

_CeladonCityHotelText::
	text "I had fun on"
	line "the car ride"
	cont "anyway!"
	done

_BookcaseText::
	text "Crammed full of"
	line "#MON books!"
	done

_NewBicycleText::
	text "A shiny new"
	line "BICYCLE!"
	done

_PushStartText::
	text "Push START to"
	line "open the MENU!"
	done

_SaveOptionText::
	text "The SAVE option is"
	line "on the MENU"
	cont "screen."
	done

_StrengthsAndWeaknessesText::
	text "All #MON types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "PA: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "PA: Your SAFARI"
	line "GAME is over!"
	done

_CinnabarGymQuizIntroText::
	text "APTITUDE TEST!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"
	prompt

_CinnabarQuizQuestionsText1:: ;yes
	text "Is a company"
	line "bigger than a"
	cont "platoon?"
	done

_CinnabarQuizQuestionsText2:: ;no
	text "Is a sargent in"
	line "charge of a"
	cont "lieutenant?"
	done

_CinnabarQuizQuestionsText3::;no
	text "An admiral and a"
	line "general meet in"
	cont "the war room."
	
	para "Does the general"
	line "check rank?"
	done

_CinnabarQuizQuestionsText4::;no
	text "Are there twelve"
	line "general orders?"
	done

_CinnabarQuizQuestionsText5::;yes
	text "TM20 contains"
	line "TOMBSTONER?"
	done

_CinnabarQuizQuestionsText6::;no
	text "Is the pen"
	line "mightier than the"
	cont "sword?"
	done

_CinnabarGymQuizCorrectText::
	text "You're absolutely"
	line "correct!"

	para "Go on through!@@"

_CinnabarGymQuizIncorrectText::
	text "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#MON magazines!"

	para "#MON notebooks!"

	para "#MON graphs!"
	done

_BillsHouseMonitorText::
	text "The only thing on"
	line "the monitor is"
	cont "a folder of very"
	cont "...questionable"
	cont "#MON images."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> pretended"
	line "to press some"
	cont "keys!@@"

_BillsHousePokemonListText1::
	text "BILL's favorite"
	line "#MON list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #MON do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "It's a report by"
	line "BLUE about the"
	cont "changes in the"
	cont "local ecosystem"
	cont "near PALLET TOWN."
	
	para "New species are"
	line "appearing every"
	cont "day it seems!"
	done

_GameCornerCoinCaseText::
	text "A COIN CASE is"
	line "required!"
	done

_GameCornerNoCoinsText::
	text "You don't have"
	line "any coins!"
	done

_GameCornerOutOfOrderText::
	text "OUT OF ORDER"
	line "This is broken."
	done

_GameCornerOutToLunchText::
	text "OUT TO LUNCH"
	line "This is reserved."
	done

_GameCornerSomeonesKeysText::
	text "Someone's keys!"
	line "They'll be back."
	done

_JustAMomentText::
	text "Just a moment."
	done

TMNotebookText::
	text "It's a pamphlet"
	line "on TMs."

	para "..."

	para "There are 50 TMs"
	line "in all."

	para "There are also 5"
	line "HMs that can be"
	cont "used repeatedly."

	para "SILPH CO.@@"

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "GIRL: Hey! Don't"
	line "look at my notes!@@"

_ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Third page..."

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	prompt

_ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top 8 #MON"
	cont "GYM LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	prompt

_EnemiesOnEverySideText::
	text "Enemies on every"
	line "side!"
	done

_WhatGoesAroundComesAroundText::
	text "What goes around"
	line "comes around!"
	done

_FightingDojoText::
	text "FIGHTING DOJO"
	done

_IndigoPlateauHQText::
	text "INDIGO PLATEAU"
	line "#MON LEAGUE HQ"
	done

_RedBedroomSNESText::
	text "<PLAYER> is"
	line "playing the SNES!"
	cont "...Okay!"
	cont "It's time to go!"
	done

_Route15UpstairsBinocularsText::
	text "Looked into the"
	line "binoculars..."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

_AerodactylFossilText::
	text "DIMOTRITE Model"
	line "A supposed fossil"
	cont "#MON."
	
	para "An artist's"
	line "interpretation..."
	done

_KabutopsFossilText::
	text "DRAGONDON Model"
	line "A supposed fossil"
	cont "#MON."
	
	para "An artist's"
	line "interpretation..."
	done

_LinkCableHelpText1::
	text "TRAINER TIPS"

	para "Using a Game Link"
	line "Cable"
	prompt

_LinkCableHelpText2::
	text "Which heading do"
	line "you want to read?"
	done

_LinkCableInfoText1::
	text "When you have"
	line "linked your GAME"
	cont "BOY with another"
	cont "GAME BOY, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#MON CENTER."
	prompt

_LinkCableInfoText2::
	text "COLOSSEUM lets"
	line "you play against"
	cont "a friend."
	prompt

_LinkCableInfoText3::
	text "TRADE CENTER is"
	line "used for trading"
	cont "#MON."
	prompt

_ViridianSchoolBlackboardText1::
	text "The blackboard"
	line "describes #MON"
	cont "STATUS changes"
	cont "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Which heading do"
	line "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "A #MON can't"
	line "attack if it's"
	cont "asleep!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "When poisoned, a"
	line "#MON's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paralysis could"
	line "make #MON"
	cont "moves misfire!"

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "A burn reduces"
	line "power and speed."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "If frozen, a"
	line "#MON becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	prompt

_VermilionGymTrashText::
	text "Nope, there's"
	line "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hey! There's a"
	line "switch behind the"
	cont "tombstone!"
	cont "Turn it on!"

	para "The 1st spirit"
	line "lock opened!@@"

_VermilionGymTrashSuccessText2::
	text "Hey! There's"
	line "another switch"
	cont "on the tombstone!"
	cont "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "The 2nd spirit"
	line "lock opened!"

	para "The haunted door"
	line "opened!@@"

_VermilionGymTrashFailText::
	text "Nope, just an"
	line "epitaph here..."
	cont "Hey! The spirit"
	cont "locks were reset!@@"

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_DroppedHiddenCoinsText::
	text ""
	para "Oops! Dropped"
	line "some coins!"
	done

_IndigoPlateauStatuesText1::
	text "INDIGO PLATEAU"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#MON LEAGUE HQ"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#MON authority"
	cont "#MON LEAGUE HQ"
	done

_PokemonBooksText::
	text "Crammed full of"
	line "#MON books!"
	done

_DiglettSculptureText::
	text "A DIGLETT?"
	
	para "Or a Buddah"
	line "statue?"
	
	para "Or an incense"
	line "burner maybe?"
	
	para "Who knows..."
	done

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A TOWN MAP.@@"

_PokemonStuffText::
	text "Wow! Tons of"
	line "#MON stuff!"
	done

_OutOfSafariBallsText::
	text "PA: Ding-dong!"

	para "You are out of"
	line "SAFARI BALLs!"
	prompt

_WildRanText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>'s"
	line "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "LEECH SEED saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Enemy @"
	TX_RAM wEnemyMonNick
	text ""
	line "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> got ¥@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ""
	line "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> defeated"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
	text ""
	line "fainted!"
	prompt

_UseNextMonText::
	text "Use next #MON?"
	done

_Sony1WinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text " is"
	line "about to use"
	cont"@"
	TX_RAM wEnemyMonNick
	text "!"

	para "Will <PLAYER>"
	line "change #MON?"
	done

_TrainerSentOutText::
	TX_RAM wTrainerName
	text " sent"
	line "out @"
	TX_RAM wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "There's no will"
	line "to fight!"
	prompt

_CantEscapeText::
	text "Can't escape!"
	prompt

_NoRunningText::
	text "No! There's no"
	line "running from a"
	cont "trainer battle!"
	prompt

_GotAwayText::
	text "Got away safely!"
	prompt

_ItemsCantBeUsedHereText::
	text "Items can't be"
	line "used here."
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "No PP left for"
	line "this move!"
	prompt

_MoveDisabledText::
	text "The move is"
	line "disabled!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text " has no"
	line "moves left!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	TX_NUM wPlayerNumHits,1,1
	text " times!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "GHOST: Get out..."
	line "Get out..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	TX_RAM wcd6d
	text " is"
	cont "disabled!"
	prompt

_MonName1Text::
	text "<USER>@@"

_Used1Text::
	text ""
	line "used @@"

_Used2Text::
	text ""
	line "used @@"

_InsteadText::
	text "instead,"
	cont "@@"

_CF4BText::
	TX_RAM wcf4b
	text "@"

_ExclamationPoint1Text::
	text "!"
	done

_ExclamationPoint2Text::
	text "!"
	done

_ExclamationPoint3Text::
	text "!"
	done

_ExclamationPoint4Text::
	text "!"
	done

_ExclamationPoint5Text::
	text "!"
	done

_AttackMissedText::
	text "<USER>'s"
	line "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

_UnaffectedText::
	text "<TARGET>'s"
	line "unaffected!"
	prompt

_DoesntAffectMonText::
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "Critical hit!"
	prompt

_OHKOText::
	text "One-hit KO!"
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text " began"
	line "to nap!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text ""
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The SUBSTITUTE"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "SUBSTITUTE broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "RAGE is building!"
	prompt

_MirrorMoveFailedText::
	text "The MIRROR MOVE"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	TX_NUM wEnemyNumHits, 1, 1
	text " times!"
	prompt

_GainedText::
	TX_RAM wcd6d
	text " gained"
	line "@@"

_WithExpAllText::
	text "with EXP.ALL,"
	cont "@@"

_BoostedText::
	text "a boosted"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text " EXP. Points!"
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text " grew"
	line "to level @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_WildMonAppearedText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "appeared!"
	prompt

_HookedMonAttackedText::
	text "The hooked"
	line "@"
	TX_RAM wEnemyMonNick
	text ""
	cont "attacked!"
	prompt

_EnemyAppearedText::
	TX_RAM wEnemyMonNick
	text ""
	line "appeared!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
	text " wants"
	line "to fight!"
	prompt

_UnveiledGhostText::
	text "The WARDING TAG"
	line "shrivels up the"
	cont "undead husk!"
	prompt

_GhostCantBeIDdText::
	text "That's no #MON!"
	line "Run away!"
	prompt

_GoText::
	text "Go! @@"

_DoItText::
	text "Do it! @@"

_GetmText::
	text "Get'm! @@"

_EnemysWeakText::
	text "The enemy's weak!"
	line "Get'm! @@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text " @@"

_EnoughText::
	text "enough!@@"

_OKExclamationText::
	text "OK!@@"

_GoodText::
	text "good!@@"

_ComeBackText::
	text ""
	line "Come back!"
	done

_SuperEffectiveText::
	text "It's super"
	line "effective!"
	prompt

_NotVeryEffectiveText::
	text "It's not very"
	line "effective..."
	prompt

_SafariZoneEatingText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	db $0
	line "is eating!"
	prompt

_SafariZoneAngryText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	db $0
	line "is angry!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> picked up"
	line "¥@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Clear all saved"
	line "data?"
	done

_WhichFloorText::
	text "Which floor do"
	line "you want? "
	done

_PartyMenuNormalText::
	text "Choose a #MON."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#MON?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#MON?"
	done

_PartyMenuUseTMText::
	text "Use TM on which"
	line "#MON?"
	done

_PartyMenuSwapMonText::
	text "Move #MON"
	line "where?"
	done

_PotionText::
	TX_RAM wcd6d
	text ""
	line "recovered by @"
	TX_NUM wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	TX_RAM wcd6d
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text ""
	line "woke up!"
	done

_FullHealText::
	TX_RAM wcd6d
	text "'s"
	line "health returned!"
	done

_ReviveText::
	TX_RAM wcd6d
	text ""
	line "is revitalized!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text " grew"
	line "to level @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_TurnedOnPC1Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_AccessedBillsPCText::
	text "Accessed BILL's"
	line "PC."

	para "Accessed #MON"
	line "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Accessed someone's"
	line "PC."

	para "Accessed #MON"
	line "Storage System."
	prompt

_AccessedMyPCText::
	text "Accessed my PC."

	para "Accessed Item"
	line "Storage System."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_WhatDoYouWantText::
	text "What do you want"
	line "to do?"
	done

_WhatToDepositText::
	text "What do you want"
	line "to deposit?"
	done

_DepositHowManyText::
	text "How many?"
	done

_ItemWasStoredText::
	TX_RAM wcd6d
	text " was"
	line "stored via PC."
	prompt

_NothingToDepositText::
	text "You have nothing"
	line "to deposit."
	prompt

_NoRoomToStoreText::
	text "No room left to"
	line "store items."
	prompt

_WhatToWithdrawText::
	text "What do you want"
	line "to withdraw?"
	done

_WithdrawHowManyText::
	text "How many?"
	done

_WithdrewItemText::
	text "Withdrew"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_NothingStoredText::
	text "There is nothing"
	line "stored."
	prompt

_CantCarryMoreText::
	text "You can't carry"
	line "any more items."
	prompt

_WhatToTossText::
	text "What do you want"
	line "to toss away?"
	done

_TossHowManyText::
	text "How many?"
	done

_AccessedHoFPCText::
	text "Accessed #MON"
	line "LEAGUE's site."

	para "Accessed the HALL"
	line "OF FAME List."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "What?"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#MON?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text " was"
	line "stored in Box @"
	TX_RAM wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "You can't deposit"
	line "the last #MON!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #MON."
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text " is"
	line "taken out."
	cont "Got @"
	TX_RAM wcf4b
	text "."
	prompt

_NoMonText::
	text "What? There are"
	line "no #MON here!"
	prompt

_CantTakeMonText::
	text "You can't take"
	line "any more #MON."

	para "Deposit #MON"
	line "first."
	prompt

_ReleaseWhichMonText::
	text "Release which"
	line "#MON?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	TX_RAM wcf4b
	text " is"
	cont "gone forever. OK?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text " was"
	line "released outside."
	cont "Bye @"

_CF4BExclamationText::
	TX_RAM wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "A COIN CASE is"
	line "required!@@"

_ExchangeCoinsForPrizesText::
	text "We exchange your"
	line "coins for prizes."
	prompt

_WhichPrizeText::
	text "Which prize do"
	line "you want?"
	done

_HereYouGoText::
	text "Here you go!@@"

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	TX_RAM wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Sorry, you need"
	line "more coins.@@"

_OopsYouDontHaveEnoughRoomText::
	text "Oops! You don't"
	line "have enough room.@@"

_OhFineThenText::
	text "Oh, fine then.@@"

_GetDexRatedText::
	text "Want to get your"
	line "#DEX rated?"
	done

_ClosedOaksPCText::
	text "Closed link to"
	line "BLUE's PC.@@"

_AccessedOaksPCText::
	text "Accessed"
	line "BLUE's PC."

	para "Accessed #DEX"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "OK, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "Do you want to"
	line "give a nickname"
	cont "to @"
	TX_RAM wcd6d
	text "?"
	done

_YourNameIsText::
	text "<PLAYER>? Yeah"
	line "that sounds cool!"
	prompt

_HisNameIsText::
	text "<RIVAL>! We"
	line "think he might"
	cont "be involved"
	cont "somehow..."
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text " and"
	line "@"
	TX_RAM wcd6d
	text " will"
	cont "be traded."
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " ERROR."
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/digletts_cave_route_2_entrance.asm"
INCLUDE "text/maps/viridian_forest_exit.asm"
INCLUDE "text/maps/route_2_house.asm"
INCLUDE "text/maps/route_2_gate.asm"
INCLUDE "text/maps/viridian_forest_entrance.asm"
INCLUDE "text/maps/mt_moon_pokecenter.asm"
INCLUDE "text/maps/saffron_gates.asm"
INCLUDE "text/maps/daycare_1.asm"


SECTION "Text 4", ROMX, BANK[TEXT_4]

INCLUDE "text/maps/daycare_2.asm"
INCLUDE "text/maps/underground_path_route_6_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance_unused.asm"
INCLUDE "text/maps/underground_path_route_8_entrance.asm"
INCLUDE "text/maps/rock_tunnel_pokecenter.asm"
INCLUDE "text/maps/rock_tunnel_b1f.asm"
INCLUDE "text/maps/power_plant.asm"
INCLUDE "text/maps/route_11_gate.asm"
INCLUDE "text/maps/route_11_gate_upstairs.asm"
INCLUDE "text/maps/digletts_cave_route_11_entrance.asm"
INCLUDE "text/maps/route_12_gate.asm"
INCLUDE "text/maps/route_12_gate_upstairs.asm"
INCLUDE "text/maps/route_12_house.asm"
INCLUDE "text/maps/route_15_gate.asm"
INCLUDE "text/maps/route_15_gate_upstairs.asm"
INCLUDE "text/maps/route_16_gate.asm"
INCLUDE "text/maps/route_16_gate_upstairs.asm"
INCLUDE "text/maps/route_16_house.asm"
INCLUDE "text/maps/route_18_gate.asm"
INCLUDE "text/maps/route_18_gate_upstairs.asm"
INCLUDE "text/maps/pokemon_league_gate.asm"
INCLUDE "text/maps/victory_road_2f.asm"
INCLUDE "text/maps/bills_house.asm"
INCLUDE "text/maps/route_1.asm"
INCLUDE "text/maps/route_2.asm"
INCLUDE "text/maps/route_3.asm"
INCLUDE "text/maps/route_4.asm"
INCLUDE "text/maps/route_5.asm"
INCLUDE "text/maps/route_6.asm"
INCLUDE "text/maps/route_7.asm"
INCLUDE "text/maps/route_8.asm"
INCLUDE "text/maps/route_9.asm"
INCLUDE "text/maps/route_10.asm"
INCLUDE "text/maps/route_11_1.asm"


SECTION "Text 5", ROMX, BANK[TEXT_5]

INCLUDE "text/maps/route_11_2.asm"
INCLUDE "text/maps/route_12.asm"
INCLUDE "text/maps/route_13.asm"
INCLUDE "text/maps/route_14.asm"
INCLUDE "text/maps/route_15.asm"
INCLUDE "text/maps/route_16.asm"
INCLUDE "text/maps/route_17.asm"
INCLUDE "text/maps/route_18.asm"
INCLUDE "text/maps/route_19.asm"
INCLUDE "text/maps/route_20.asm"
INCLUDE "text/maps/route_21.asm"
INCLUDE "text/maps/route_22.asm"
INCLUDE "text/maps/route_23.asm"
INCLUDE "text/maps/route_24_1.asm"


SECTION "Text 6", ROMX, BANK[TEXT_6]

INCLUDE "text/maps/route_24_2.asm"
INCLUDE "text/maps/route_25.asm"

_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<pkmn> BOX.@@"

_EvolvedText::
	TX_RAM wcf4b
	text " evolved"
	done

_IntoText::
	text ""
	line "into @"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	TX_RAM wcf4b
	text ""
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	TX_RAM wcf4b
	text ""
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyRoseText::
	text $4c, "greatly@@"

_RoseText::
	text " rose!"
	prompt

_MonsStatsFellText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyFellText::
	text $4c, "greatly@@"

_FellText::
	text " fell!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@@"

_MadeWhirlwindText::
	text ""
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text ""
	line "took in sunlight!"
	prompt

_LoweredItsHeadText::
	text ""
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "is glowing!"
	prompt

_FlewUpHighText::
	text ""
	line "flew up high!"
	prompt

_DugAHoleText::
	text ""
	line "dug a hole!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt

_SubstituteText::
	text "It created a"
	line "SUBSTITUTE!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "getting pumped!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All STATUS changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>"
	line "regained health!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "gained armor!"
	prompt

_ShroudedInMistText::
	text "<USER>'s"
	line "shrouded in mist!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/reds_house_1f.asm"
INCLUDE "text/maps/blues_house.asm"
INCLUDE "text/maps/oaks_lab.asm"
INCLUDE "text/maps/viridian_pokecenter.asm"
INCLUDE "text/maps/viridian_mart.asm"
INCLUDE "text/maps/school.asm"
INCLUDE "text/maps/viridian_house.asm"
INCLUDE "text/maps/viridian_gym.asm"
INCLUDE "text/maps/museum_1f.asm"
INCLUDE "text/maps/museum_2f.asm"
INCLUDE "text/maps/pewter_gym_1.asm"


SECTION "Text 7", ROMX, BANK[TEXT_7]

INCLUDE "text/maps/pewter_gym_2.asm"
INCLUDE "text/maps/pewter_house_1.asm"
INCLUDE "text/maps/pewter_mart.asm"
INCLUDE "text/maps/pewter_house_2.asm"
INCLUDE "text/maps/pewter_pokecenter.asm"
INCLUDE "text/maps/cerulean_trashed_house.asm"
INCLUDE "text/maps/cerulean_trade_house.asm"
INCLUDE "text/maps/cerulean_pokecenter.asm"
INCLUDE "text/maps/cerulean_gym.asm"
INCLUDE "text/maps/bike_shop.asm"
INCLUDE "text/maps/cerulean_mart.asm"
INCLUDE "text/maps/cerulean_badge_house.asm"
INCLUDE "text/maps/lavender_pokecenter.asm"
INCLUDE "text/maps/pokemon_tower_1f.asm"
INCLUDE "text/maps/pokemon_tower_2f.asm"
INCLUDE "text/maps/pokemon_tower_3f.asm"
INCLUDE "text/maps/pokemon_tower_4f.asm"
INCLUDE "text/maps/pokemon_tower_5f.asm"
INCLUDE "text/maps/pokemon_tower_6f.asm"
INCLUDE "text/maps/pokemon_tower_7f.asm"
INCLUDE "text/maps/fujis_house.asm"
INCLUDE "text/maps/lavender_mart.asm"
INCLUDE "text/maps/lavender_house.asm"
INCLUDE "text/maps/name_rater.asm"
INCLUDE "text/maps/vermilion_pokecenter.asm"
INCLUDE "text/maps/fan_club.asm"
INCLUDE "text/maps/vermilion_mart.asm"
INCLUDE "text/maps/vermilion_gym_1.asm"


SECTION "Text 8", ROMX, BANK[TEXT_8]

INCLUDE "text/maps/vermilion_gym_2.asm"
INCLUDE "text/maps/vermilion_house.asm"
INCLUDE "text/maps/vermilion_dock.asm"
INCLUDE "text/maps/vermilion_fishing_house.asm"
INCLUDE "text/maps/celadon_dept_store_1f.asm"
INCLUDE "text/maps/celadon_dept_store_2f.asm"
INCLUDE "text/maps/celadon_dept_store_3f.asm"
INCLUDE "text/maps/celadon_dept_store_4f.asm"
INCLUDE "text/maps/celadon_dept_store_roof.asm"
INCLUDE "text/maps/celadon_mansion_1f.asm"
INCLUDE "text/maps/celadon_mansion_2f.asm"
INCLUDE "text/maps/celadon_mansion_3f.asm"
INCLUDE "text/maps/celadon_mansion_4f_outside.asm"
INCLUDE "text/maps/celadon_mansion_4f_inside.asm"
INCLUDE "text/maps/celadon_pokecenter.asm"
INCLUDE "text/maps/celadon_gym.asm"
INCLUDE "text/maps/celadon_game_corner.asm"
INCLUDE "text/maps/celadon_dept_store_5f.asm"
INCLUDE "text/maps/celadon_prize_room.asm"
INCLUDE "text/maps/celadon_diner.asm"
INCLUDE "text/maps/celadon_house.asm"
INCLUDE "text/maps/celadon_hotel.asm"
INCLUDE "text/maps/fuchsia_mart.asm"
INCLUDE "text/maps/fuchsia_house.asm"
INCLUDE "text/maps/fuchsia_pokecenter.asm"
INCLUDE "text/maps/wardens_house.asm"
INCLUDE "text/maps/safari_zone_entrance.asm"
INCLUDE "text/maps/fuchsia_gym_1.asm"


SECTION "Text 9", ROMX, BANK[TEXT_9]

INCLUDE "text/maps/fuchsia_gym_2.asm"
INCLUDE "text/maps/fuchsia_meeting_room.asm"
INCLUDE "text/maps/fuchsia_fishing_house.asm"
INCLUDE "text/maps/mansion_1f.asm"
INCLUDE "text/maps/cinnabar_gym.asm"
INCLUDE "text/maps/cinnabar_lab.asm"
INCLUDE "text/maps/cinnabar_lab_trade_room.asm"
INCLUDE "text/maps/cinnabar_lab_metronome_room.asm"
INCLUDE "text/maps/cinnabar_lab_fossil_room.asm"
INCLUDE "text/maps/cinnabar_pokecenter.asm"
INCLUDE "text/maps/cinnabar_mart.asm"
INCLUDE "text/maps/indigo_plateau_lobby.asm"
INCLUDE "text/maps/copycats_house_1f.asm"
INCLUDE "text/maps/copycats_house_2f.asm"
INCLUDE "text/maps/fighting_dojo.asm"
INCLUDE "text/maps/saffron_gym.asm"
INCLUDE "text/maps/saffron_house.asm"
INCLUDE "text/maps/saffron_mart.asm"
INCLUDE "text/maps/silph_co_1f.asm"
INCLUDE "text/maps/saffron_pokecenter.asm"
INCLUDE "text/maps/mr_psychics_house.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	text ""
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "?"
	line "That will be"
	cont "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " learned"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text ""
	line "did not learn"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	TX_RAM wcf4b
	text "!"

	para "But, @"
	TX_RAM wLearnMoveMonName
	text ""
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	TX_RAM wcf4b
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@@"

_PoofText::
	text " Poof!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text " forgot"
	line "@"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Welcome to our"
	line "#MON CENTER!"

	para "We heal your"
	line "#MON back to"
	cont "perfect health!"
	prompt

_ShallWeHealYourPokemonText::
	text "Shall we heal your"
	line "#MON?"
	done

_NeedYourPokemonText::
	text "OK. We'll need"
	line "your #MON."
	done

_PokemonFightingFitText::
	text "Thank you!"
	line "Your #MON are"
	cont "fighting fit!"
	prompt

_PokemonCenterFarewellText::
	text "We hope to see"
	line "you again!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

_CableClubNPCWelcomeText::
	text "Welcome to the"
	line "Cable Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done


SECTION "Text 10", ROMX, BANK[TEXT_10]

_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text " used"
	line "STRENGTH.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget SURFing!"
	prompt

_FlashLightsAreaText::
	text "A blinding FLASH"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#MON CENTER."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new BADGE"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_SetToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	TX_RAM wcf4b
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #MON!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done

INCLUDE "text/maps/pallet_town.asm"
INCLUDE "text/maps/viridian_city.asm"
INCLUDE "text/maps/pewter_city.asm"
INCLUDE "text/maps/cerulean_city.asm"
INCLUDE "text/maps/lavender_town.asm"
INCLUDE "text/maps/vermilion_city.asm"
INCLUDE "text/maps/celadon_city.asm"
INCLUDE "text/maps/fuchsia_city.asm"
INCLUDE "text/maps/cinnabar_island.asm"
INCLUDE "text/maps/saffron_city.asm"

_ItemUseBallText00::
	text "It dodged the"
	line "thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#MON!"
	prompt

_ItemUseBallText02::
	text "Darn! The #MON"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	TX_RAM wEnemyMonNick
	text " was"
	cont "caught!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "BILL's PC!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #DEX data"
	line "will be added for"
	cont "@"
	TX_RAM wEnemyMonNick
	text "!@@"

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "There's no place"
	line "to get off!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcd6d
	text "'s"
	line "@"
	TX_RAM wcf4b
	text " rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some BAIT."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "ROCK."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#MON woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# FLUTE.@@"

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	TX_RAM wcf4b
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	TX_RAM wcf4b
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_BootedUpTMText::
	text "Booted up a TM!"
	prompt

_BootedUpHMText::
	text "Booted up an HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	TX_RAM wcf4b
	text "!"

	para "Teach @"
	TX_RAM wcf4b
	text ""
	line "to a #MON?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text " is not"
	line "compatible with"
	cont "@"
	TX_RAM wcf4b
	text "."

	para "It can't learn"
	line "@"
	TX_RAM wcf4b
	text "."
	prompt

_ItemUseNotTimeText::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	TX_RAM wcd6d
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #MON BOX"
	line "is full! Can't"
	cont "use that item!"
	prompt


SECTION "Text 11", ROMX, BANK[TEXT_11]

_ItemUseText001::
	text "<PLAYER> used@@"

_ItemUseText002::
	TX_RAM wcf4b
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@@"

_GotOnBicycleText2::
	TX_RAM wcf4b
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@@"

_GotOffBicycleText2::
	text "the @"
	TX_RAM wcf4b
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	TX_RAM wcf4b
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text " knows"
	line "@"
	TX_RAM wcf4b
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " for"
	cont "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "I'm looking for"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "! Wanna"

	para "trade one for"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text::
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text::
	text "What? That's not"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "If you get one,"
	line "come back here!"
	done

_Thanks1Text::
	text "Hey thanks!"
	done

_AfterTrade1Text::
	text "Isn't my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text::
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text::
	text "Hmmm? This isn't"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text::
	text "Thanks!"
	done

_AfterTrade2Text::
	text "The @"
	TX_RAM wInGameTradeGiveMonName
	text " you"
	line "traded to me"

	para "went and evolved!"
	done

_WannaTrade3Text::
	text "Hi! Do you have"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "That's too bad."
	done

_WrongMon3Text::
	text "...This is no"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text::
	text "Thanks pal!"
	done

_AfterTrade3Text::
	text "How is my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "?"

	para "My @"
	TX_RAM wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to CUT!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " hacked"
	line "away with CUT!"
	prompt


SECTION "Pokedex Text", ROMX, BANK[POKEDEX_TEXT]

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX, BANK[MOVE_NAMES]

INCLUDE "text/move_names.asm"
