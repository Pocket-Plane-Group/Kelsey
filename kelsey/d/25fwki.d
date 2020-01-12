
/* Imoen has a bunch of dialogue in TOB that nobody ever sees because Bioware forgot that she's called
"Imoen2" once you get her back from Spellhold. Big ooooooooooops. Let's fix that, shall we? */

REPLACE_TRIGGER_TEXT ~aerie25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~hgwra01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~vicon25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~jahei25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~ambar01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~fsspir2~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~gorimp01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~haerd25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~jan25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~mazzy25j~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~bazmonk~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~bazeye01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~baerie25~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~bcernd25~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~bjahei25~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~hgnya01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~sarev25a~ ~"Imoen"~ ~"Imoen2"~


/* Master Wraith Sequence */

BEGIN FWLOVE6

IF ~NumTimesTalkedTo(0)~ THEN BEGIN fwlove6_1
SAY @3
IF ~~ THEN EXTERN J#KLS25J fwlove6chain
END

CHAIN2 J#KLS25J fwlove6chain
@4 == @5 = @6 == @7 == @8 = @9 == @10 == @11 = @12 == @13 == @14 = @15
END J#KLS25J fwlove6chainend

/* Set up Master Wraith material : NOTE -- Kelsey's TOB .bcs needs to look for FWLovedOne=6 before running ExpLT 8 */

EXTEND_BOTTOM HGWRA01 18
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
IsValidForPartyDialogue("J#Kelsey")~ THEN DO ~SetGlobal("FWLovedOne","GLOBAL",6)~ EXTERN HGWRA01 wraith1
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FWCut218")~ EXIT
END

/* End Master Wraith setup Material */


APPEND HGWRA01
IF ~~ THEN BEGIN wraith1
SAY @1
IF ~~ THEN EXTERN J#KLS25J wraith2
END

END

APPEND J#KLS25J

IF ~~ THEN BEGIN wraith2
SAY @2
IF ~~ THEN EXTERN HGWRA01 24
END

IF ~~ THEN BEGIN fwlove6chainend
SAY @16
IF ~~ THEN REPLY @17 EXTERN HGWRA01 25
IF ~~ THEN REPLY @18 EXTERN HGWRA01 25
IF ~~ THEN REPLY @19 EXTERN HGWRA01 25
IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @20 EXTERN HGWRA01 25
END

END

/* End of Master Wraith Sequence */

// VOLO

EXTEND_TOP SARVOLO 9 #2
IF ~InParty("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN REPLY @300 GOTO volokelseyrom1
IF ~InParty("J#Kelsey")
!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN REPLY @300 GOTO volokelsey1
END

APPEND SARVOLO
IF ~~ THEN BEGIN volokelsey1
SAY @21 = @22
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLS25J volokelsey2
IF ~!IsValidForPartyDialog("J#Kelsey")~ THEN GOTO 9
END

IF ~~ THEN BEGIN volokelseyrom1
SAY @25 = @26
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLS25J volokelsey2
IF ~!IsValidForPartyDialog("J#Kelsey")~ THEN GOTO 9
END

IF ~~ THEN BEGIN volokelsey3
SAY @24
IF ~~ THEN GOTO 9
END

END

APPEND J#KLS25J
IF ~~ THEN BEGIN volokelsey2
SAY @23
IF ~~ THEN EXTERN SARVOLO volokelsey3
END

IF ~~ THEN BEGIN kelseyhates2
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cespykelsey2
SAY @43
IF ~~ THEN EXTERN BOTSMITH cespykelsey3
END

IF ~~ THEN BEGIN sarcnt01_14
SAY @47
IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("J#Kelsey",LeaveParty())
ActionOverride("J#Kelsey",Enemy())~
EXIT
END

IF ~~ THEN BEGIN ksarelf06
SAY @50
IF ~~ THEN DO ~SetGlobal("FWkintsarelf06","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ksarfem03
SAY @51
IF ~~ THEN DO ~SetGlobal("FWkintsarfem03","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN kamcapt2
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kamcst04_2
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kamwen01_2
SAY @75
IF ~~ THEN REPLY @76 EXTERN amwenc01 kamwen01_2
IF ~~ THEN REPLY @77 GOTO kamwen01_3
IF ~~ THEN REPLY @78 GOTO kamwen01_4
END

IF ~~ THEN BEGIN kamwen01_3
SAY @80
IF ~~ THEN EXTERN AMWENC01 kamnwen01_3end
END

IF ~~ THEN BEGIN kamwen01_4
SAY @82
IF ~~ THEN EXTERN AMWENC01 kamnwen01_4end
END


END

APPEND HGKAR01
IF WEIGHT #-1 ~Global("TalkedToHgkar01","GLOBAL",1)
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyhgkar","LOCALS",0)~ THEN BEGIN kelseyhgkar1
SAY @99
IF ~~ THEN DO ~SetGlobal("FWKelseyhgkar","LOCALS",1)~ EXTERN J#KLS25J kelseyhgkarchain
END

IF ~~ THEN BEGIN kelseyhgkarend
SAY @109
IF ~~ THEN EXIT
END

END

CHAIN3 J#KLS25J kelseyhgkarchain @100
== HGKAR01 @101 = @102
== J#KLS25J @103
== HGKAR01 @104
== J#KLS25J @105 = @106
== J#KLS25J IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @107
== HGKAR01 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @108
END HGKAR01 kelseyhgkarend





APPEND GORCAMB2
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyInterject","LOCALS",0)~ THEN BEGIN kelseyhates
SAY #67267
IF ~~ THEN DO ~SetGLobal("FWKelseyInterject","LOCALS",1)~ EXTERN J#KLS25J kelseyhates2
END
END


APPEND BOTSMITH
IF WEIGHT #2
~IsGabber("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("ItemMaker","GLOBAL",0)
GlobalGT("TalkedToBotsmith","GLOBAL",0)
Global("FWCespyKelsey","LOCALS",0)~ THEN BEGIN cespykelsey1
SAY @42
IF ~~ THEN DO ~SetGlobal("FWCespyKelsey","LOCALS",1)~ EXTERN J#KLS25J cespykelsey2
END

IF ~~ THEN BEGIN cespykelsey3
SAY @44
IF ~~ THEN DO ~RunAwayFrom("J#Kelsey",60)~ EXIT
END

IF WEIGHT #2
~IsGabber("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("ItemMaker","GLOBAL",0)
GlobalGT("TalkedToBotsmith","GLOBAL",0)
PartyHasItem("FWKCloak")
Global("FWCespyKelsey","LOCALS",1)~ THEN BEGIN cespyupgrade1
SAY @181 = @182
IF ~PartyHasItem("ring06")
NumItemsPartyGT("scrl8L",0)
NumItemsPartyGT("scrl9D",0)
PartyGoldGT(14999)~ THEN REPLY @183 DO ~TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("scrl8l",1)   DestroyItem("scrl8l")
          TakePartyItemNum("scrl9D",1)   DestroyItem("scrl9D")
          TakePartyItemNum("fwkcloak",1)   DestroyItem("fwkcloak")
          TakePartyGold(15000)      DestroyGold(15000)
          GiveItemCreate("fwkcloa2","J#Kelsey",1,1,0)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
IF ~~ THEN REPLY @184 EXIT
END

END

APPEND SARGRD01
IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWkelseysargrd","LOCALS",0)~
THEN BEGIN sargrd01start
SAY @52
IF ~~ THEN DO ~SetGlobal("FWkelseysargrd","LOCALS",1)~ EXTERN J#KLS25J kelseysargrdchain
END

CHAIN2 J#KLS25J kelseysargrdchain
@53 == @54 == @55 == @56 == @57
END SARGRD01 kelseysargrdend

IF ~~ THEN BEGIN kelseysargrdend
SAY @58
IF ~~ THEN EXIT
END

END

APPEND AMCAPT01
IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWkelseycapt01","LOCALS",0)~ THEN BEGIN kamcapt1
SAY @66
IF ~~ THEN DO ~SetGlobal("FWkelseycapt01","LOCALS",1)~ EXTERN J#KLS25J kamcapt2
END

END

APPEND AMCST04
IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWkelseycst04","LOCALS",0)~ THEN BEGIN kamcst04
SAY @69
IF ~~ THEN DO ~SetGlobal("FWkelseycst04","LOCALS",1)~ EXTERN J#KLS25J kamcst04_2
END

END

APPEND AMWENC01
IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWkelseyamwenc01","LOCALS",0)~ THEN BEGIN kamwen01_1
SAY @74
IF ~~ THEN DO ~SetGlobal("FWkelseyamwenc01","LOCALS",1)~ EXTERN J#KLS25J kamwen01_2
END

IF ~~ THEN BEGIN kamwen01_2
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kamnwen01_3end
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kamnwen01_4end
SAY @83 = @84 = @85 = @86
IF ~~ THEN EXIT
END

END


/* INTERJECT_COPY_TRANS mania! */

INTERJECT_COPY_TRANS GORODR1 11 FWkintgorodr1
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @27
END

INTERJECT_COPY_TRANS GORODR1 35 FWkintgorodr135
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @28
END

INTERJECT_COPY_TRANS IMOEN25J 30 FWkintimoen30
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
Global("FWImoenRomanceActive","GLOBAL",1)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @29
END

INTERJECT_COPY_TRANS GORCAMB 20 FWkintgorcamb
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @29
END

INTERJECT_COPY_TRANS GORIMP01 13 FWKintgorimp
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @31
END

INTERJECT_COPY_TRANS GORDEMO 0 FWkintgordemo0
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @32
END

INTERJECT_COPY_TRANS GORDEMO 29 FWkintgordemo29
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @33
== IMOEN25J IF ~IsValidForPartyDialog("J#Kelsey") IsValidForPartyDialog("Imoen2") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @34
END

INTERJECT_COPY_TRANS GORAPR 10 FWkintgorapr
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @35
END

INTERJECT_COPY_TRANS GORAPP1 6 FWkintgorapp6
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @36 = @37
END

INTERJECT_COPY_TRANS GORAPP1 10 FWkintgorapp10
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @38 = @39
END

INTERJECT_COPY_TRANS SOLAR 11 FWkintsolar11
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @40
END

INTERJECT_COPY_TRANS MELISS01 11 FWkintmel11
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @41
END

INTERJECT_COPY_TRANS SARBAR01 2 FWkintsarbar01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @45
END

INTERJECT_COPY_TRANS SARBHA03 4 FWkintsarhga03
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @46
END

ADD_TRANS_TRIGGER SARCNT01 14 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SARCNT01 14
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN DO ~CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
Enemy()~
EXTERN J#KLS25J sarcnt01_14
END

INTERJECT_COPY_TRANS SARCNT01 9 FWKintsarcnt01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @48
END

INTERJECT_COPY_TRANS SARDW04 1 FWKintsardw04
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @49
END

EXTEND_BOTTOM SARELF06 1
IF ~IsValidForPartyDialog("J#Kelsey") Global("FWkintsarelf06","GLOBAL",0)~ THEN EXTERN j#kls25j ksarelf06
END

EXTEND_BOTTOM SARFEM03 1
IF ~IsValidForPartyDialog("J#Kelsey") Global("FWkintsarfem03","GLOBAL",0)~ THEN EXTERN j#kls25j ksarfem03
END

INTERJECT_COPY_TRANS SARKIS01 36 FWKintsarkis01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @59
END

INTERJECT_COPY_TRANS SARTEM01 7 FWKintsartem01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @60
END

INTERJECT_COPY_TRANS HGNYA01 13 FWKinthgnya01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @61
END

INTERJECT_COPY_TRANS IMOEN25J 11 FWKintimoen11
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")
OR(2)
Global("FWImoenRomanceActive","GLOBAL",2)
Global("FWImoenRomanceActive","GLOBAL",1)~ THEN @62
END

INTERJECT_COPY_TRANS MINSC25J 7 FWKintminsc7
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @63
END

INTERJECT_COPY_TRANS NALIA25J 3 FWKintnalia3
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @64
END

INTERJECT_COPY_TRANS AMMAYOR 5 FWKintammayor
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @65
END

INTERJECT_COPY_TRANS AMCLER02 5 FWKintamcler02
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @68
END

INTERJECT_COPY_TRANS AMLICH01 10 FWKintamlich01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @71
END

INTERJECT_COPY_TRANS AMMERC02 0 FWKintammerc02
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @72
END

INTERJECT_COPY_TRANS AMSAEMON 21 FWKintamsaemon
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @73
END

INTERJECT_COPY_TRANS MARLOWE 35 FWKintmarlowe
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @87
== MARLOWE IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @88
END

INTERJECT_COPY_TRANS BAZDRA03 10 FWKintbazdra0310
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @89
END

INTERJECT_COPY_TRANS BAZDRA03 11 FWKintbazdra0311
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @90
END

INTERJECT_COPY_TRANS BAZEYE01 11 FWkintbazeye
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @91
END

INTERJECT_COPY_TRANS BAZMONK 11 FWkintbazmonk
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @92
== EDWIN25J IF ~IsValidForPartyDialog("J#Kelsey") IsValidForPartyDialog("Edwin")~ THEN @93
END

INTERJECT_COPY_TRANS BAZPAT03 1 FWKintbazpat031
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @94
END

INTERJECT_COPY_TRANS SENGUA01 4 FWKintsengua01
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @95
END

INTERJECT_COPY_TRANS BALTH 26 FWKintbalth26
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @96
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @97
== BALTH IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @98
END


/* FINSOL01 sequence : advice */

INTERJECT_COPY_TRANS FINSOL01 27 FWKintfinsol271
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") !Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @110
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") !Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @111
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") !Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @112
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey") !Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @113
END


EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKIstay1","GLOBAL",0)~ THEN DO ~SetGlobal("FWKIstay1","GLOBAL",1)~ EXTERN J#KLS25J stay1
END

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKIleaving1","GLOBAL",0)~ THEN DO
~SetGlobal("FWKIleaving1","GLOBAL",1)~ EXTERN J#KLS25J leaving1
END


EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKIleaving1","GLOBAL",0)~ THEN DO
~SetGlobal("FWKIleaving1","GLOBAL",1)~ EXTERN J#KLS25J leaving1
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKIleaving1","GLOBAL",0)~ THEN DO
~SetGlobal("FWKIleaving1","GLOBAL",1)~ EXTERN J#KLS25J leaving1
END

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKIendstay1","GLOBAL",0)~ THEN DO
~SetGlobal("FWKIendstay1","GLOBAL",1)~ EXTERN J#KLS25J endstay1
END



APPEND J#KLS25J
IF ~~ THEN BEGIN stay1
SAY @114 = @115 = @116
IF ~ReputationGT(Player1,10)~ THEN GOTO stay2
IF ~ReputationLT(Player1,11)~ THEN GOTO stay3
END

IF ~~ THEN BEGIN stay2
SAY @117
IF ~~ THEN GOTO stay4
END

IF ~~ THEN BEGIN stay3
SAY @118
IF ~~ THEN GOTO stay4
END

IF ~~ THEN BEGIN stay4end
SAY @126
IF ~~ THEN REPLY @127 GOTO stay11
IF ~~ THEN REPLY @128 GOTO stay10
IF ~~ THEN REPLY @129 GOTO stay11
IF ~~ THEN REPLY @130 GOTO stay10
END

IF ~~ THEN BEGIN stay10
SAY @131 = @132
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN stay11end
SAY @140
COPY_TRANS FINSOL01 27
END

/* FINSOL01 sequence: Leaving romance */

IF ~~ THEN BEGIN leaving1
SAY @141
IF ~!Global("FWPromisedToStay","GLOBAL",1)
!Global("FWWillMarryKelsey","GLOBAL",1)
!Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO leavingwrapup1
IF ~!Global("FWPromisedToStay","GLOBAL",1)
!Global("FWWillMarryKelsey","GLOBAL",1)
Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO leavingbaby1
IF ~OR(2)
Global("FWPromisedToStay","GLOBAL",1)
Global("FWWillMarryKelsey","GLOBAL",1)~ THEN GOTO leavingpromised
END

IF ~~ THEN BEGIN leavingpromised
SAY @142
IF ~Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO leavingbaby1
IF ~!Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO leavingwrapup1
END

IF ~~ THEN BEGIN leavingbaby1
SAY @143 = @144 = @145
IF ~~ THEN REPLY @146 GOTO leavingbaby2
IF ~~ THEN REPLY @147 GOTO leavingbaby2
IF ~~ THEN REPLY @148 DO ~SetGlobal("FWGiveBaby","GLOBAL",1)~ GOTO leavingbaby3
IF ~~ THEN REPLY @149 DO ~SetGlobal("FWGiveBaby","GLOBAL",1)~ GOTO leavingbaby4
END

IF ~~ THEN BEGIN leavingbaby2
SAY @150
IF ~~ THEN GOTO leavingwrapup1
END

IF ~~ THEN BEGIN leavingbaby3
SAY @151
IF ~~ THEN GOTO leavingbaby5
END

IF ~~ THEN BEGIN leavingbaby4
SAY @152
IF ~~ THEN GOTO leavingbaby5
END

IF ~~ THEN BEGIN leavingbaby5
SAY @153
IF ~~ THEN GOTO leavingwrapup1
END

IF ~~ THEN BEGIN leavingwrapup1
SAY @154 = @155
IF ~~ THEN REPLY @156 GOTO leavingwrapup2
IF ~~ THEN REPLY @157 GOTO leavingwrapup3
IF ~~ THEN REPLY @158 GOTO leavingwrapup4
END

IF ~~ THEN BEGIN leavingwrapup2
SAY @159
IF ~~ THEN GOTO leavingwrapup3
END

IF ~~ THEN BEGIN leavingwrapup4
SAY @160
IF ~~ THEN GOTO leavingwrapup3
END

IF ~~ THEN BEGIN leavingwrapup3
SAY @161 = @162 = @163
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN endstay1
SAY @164 = @165 = @166
IF ~~ THEN REPLY @167 GOTO endstay1_1
IF ~~ THEN REPLY @168 GOTO endstay2
IF ~~ THEN REPLY @169 GOTO endstay3
IF ~~ THEN REPLY @170 GOTO endstay4
END

IF ~~ THEN BEGIN endstay1_1
SAY @171
IF ~~ THEN GOTO endstay5
END

IF ~~ THEN BEGIN endstay2
SAY @172
IF ~~ THEN GOTO endstay5
END

IF ~~ THEN BEGIN endstay3
SAY @173
IF ~~ THEN GOTO endstay5
END

IF ~~ THEN BEGIN endstay4
SAY @174
IF ~~ THEN GOTO endstay5
END

IF ~~ THEN BEGIN endstay5
SAY @175
IF ~!Global("FWWillMarryKelsey","GLOBAL",1) !Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO endstayend
IF ~!Global("FWWillMarryKelsey","GLOBAL",1) Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO endstaybaby
IF ~Global("FWWillMarryKelsey","GLOBAL",1)~ THEN GOTO endstaywedding
IF ~Global("FWWillMarryKelsey","GLOBAL",1) Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO endstayboth
END


IF ~~ THEN BEGIN endstayboth
SAY @176
IF ~~ THEN GOTO endstaywedding
END

IF ~~ THEN BEGIN endstaywedding
SAY @177
IF ~!Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO endstayend
IF ~Global("FWKelseyBaby","GLOBAL",1)~ THEN GOTO endstaybaby
END

IF ~~ THEN BEGIN endstaybaby
SAY @178
IF ~~ THEN GOTO endstayend
END


IF ~~ THEN BEGIN endstayend
SAY @179 = @180
COPY_TRANS FINSOL01 32
END

IF ~~ THEN BEGIN babydecide1_1
SAY @189
IF ~~ THEN EXTERN FINSOL01 babydecide1_2
END

IF ~~ THEN BEGIN babydecide2_2
SAY @196
IF ~~ THEN EXTERN FINSOL01 babydecide4
END

IF ~~ THEN BEGIN babydecide3
SAY @197
IF ~~ THEN EXTERN FINSOL01 babydecide3_2
END

END


CHAIN3 J#KLS25J stay4 @119 = @120
== J#KLS25J IF ~Global("FWKelseyBaby","GLOBAL",1)~ THEN @121
== J#KLS25J IF ~Global("FWWillMarryKelsey","GLOBAL",1)~ THEN @122
== J#KLS25J @123 = @124 = @125
END J#KLS25J stay4end

CHAIN3 J#KLS25J stay11 @133
== IMOEN25J IF ~IsValidForPartyDialog("Imoen2")~ THEN @134
== NALIA25J IF ~IsValidForPartyDialog("Nalia")~ THEN @135
== HAERD25J IF ~IsValidForPartyDialog("HaerDalis")~ THEN @136
== VICON25J IF ~IsValidForPartyDialog("Viconia")~ THEN @137
== KELDO25J IF ~IsValidForPartyDialog("Keldorn")~ THEN @138
== AERIE25J IF ~IsValidForPartyDialog("Aerie")~ THEN @139
END J#KLS25J stay11end


/* FINSOL01: Abortion? */

EXTEND_BOTTOM FINSOL01 16
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyBaby","GLOBAL",1)
Global("FWKelseyDidAbortTalk","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyDidAbortTalk","LOCALS",1)~ EXTERN FINSOL01 babydecide1
END

APPEND FINSOL01
IF ~~ THEN BEGIN babydecide1
SAY @185 = @186 = @187 = @188
IF ~~ THEN EXTERN J#KLS25J babydecide1_1
END

IF ~~ THEN BEGIN babydecide1_2
SAY @190
IF ~~ THEN REPLY @191 GOTO babydecide2
IF ~~ THEN REPLY @192 GOTO babydecide2
IF ~~ THEN REPLY @193 EXTERN J#KLS25J babydecide3
IF ~~ THEN REPLY @194 EXTERN J#KLS25J babydecide3
END

IF ~~ THEN BEGIN babydecide2
SAY @195
IF ~~ THEN EXTERN J#KLS25J babydecide2_2
END

IF ~~ THEN BEGIN babydecide3_2
SAY @198
IF ~~ THEN DO ~SetGlobal("FWKelseyBaby","GLOBAL",0)~ GOTO babydecide4
END

IF ~~ THEN BEGIN babydecide4
SAY @199
COPY_TRANS FINSOL01 16
END

END


/* Imoen and Kelsey commentary for Imoen loss of Bhaalness in-romance */

I_C_T IMOEN25J 13 FWImoenGivesUpBhaalness
== IMOEN25J IF ~InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @200
== J#KLS25J IF ~InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @201
== IMOEN25J IF ~InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @202 = @203
== J#KLS25J IF ~InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @204
== IMOEN25J IF ~InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @205
END


