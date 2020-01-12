// FWKelseyInterject, aka FWKI, your source for Kelsey interjections.

/* Attention Reader: This is the interjection dialogue file for Kelsey-SOA.
With just a few exceptions, it is also a TERRIBLE example of WeiDU coding. There are a lot of
reasons for this, most of which are not precisely our fault, but many of
which are. Although you may find some interesting nuggets in here, trust
us, if you plan to write .d code, you won't want it to look like this.
Far, far better examples of WeiDU coding can be found by combing through
projects such as Kelsey-TOB and Westley Weimer's Valen.

The examples that use I_C_T and CHAIN are good. After a while, though...
don't use our old methods unless you absolutely have to.

Enjoy the show, but remember, don't code like this at home. */


/* To account for some el-sloppo Bioware scripting, we need to ensure that some Anomen LTs won't run
if AnomenRomanceActive=3. This shouldn't pose any problem whatsoever. I could have done
REPLACE_BCS_BLOCK but this is quicker, I think, and not liable to be weakened by someone giving him
a new script. This ensures that if the Kelsey/Anomen fight ends before or near Anomen's test,
it's REALLY ended. So. */

A_S_T BANOMEN 323 ~!Global("AnomenRomanceActive","GLOBAL",3)~

A_S_T BANOMEN 341 ~!Global("AnomenRomanceActive","GLOBAL",3)~

A_S_T BANOMEN 400 ~!Global("AnomenRomanceActive","GLOBAL",3)~

A_S_T BANOMEN 409 ~!Global("AnomenRomanceActive","GLOBAL",3)~


// And now, some new interjects.

I_C_T UDSILVER 16 FWKelseyAdalonStory1
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3304
END

I_C_T UDSILVER 53 FWKelseyAdalonStory2
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3305
== KORGANJ IF ~IsValidForPartyDialog("Korgan") IsValidForPartyDialog("J#Kelsey")~ THEN @3306
== NALIAJ IF ~IsValidForPartyDialog("Nalia") IsValidForPartyDialog("J#Kelsey")~ THEN @3307
== J#KLSYJ IF ~IsValidForPartyDialog("Nalia") IsValidForPartyDialog("J#Kelsey")~ THEN @3308


END


I_C_T RAELIS 48 FWKelseyRaelisStory
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3301
END

I_C_T JUGJER01 5 FWKelseyJerminStory
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3302
== JUGJER01 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3303
END

I_C_T KORGANA 16 FWKelseyKorganStory
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3300
END

// Screw You, Irenicus cleaned up for 1.0.5.


I_C_T HELLJON 7 FWKelseyScrewYouIrenicus
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @1761
END

I_C_T HELLJON 8 FWKelseyScrewYouIrenicus
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @1761
END

I_C_T HELLJON 9 FWKelseyScrewYouIrenicus
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @1761
END

I_C_T HELLJON 10 FWKelseyScrewYouIrenicus
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @1761
END



/* Kelsey doesn't like Bodhi. */

I_C_T BODHI 12 FWKelseySeesBodhiEvil
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3041
END


/* Kelsey terminating romance if PC sides with Bodhi */

I_C_T BODHI 18 FWKelseyHatesJoiningBodhi
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")
OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)~
THEN @1762 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)~
END


CHAIN IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWJerryKelsey","LOCALS",0)~ THEN CIVFRUS1 jerrykelsey
@3034 DO ~SetGlobal("FWJerryKelsey","LOCALS",1)~
== J#KLSYJ @3035
== CIVFRUS1 @3036
== J#KLSYJ @3037
== CIVFRUS1 @3038
== J#KLSYJ @3039
== CIVFRUS1 @3040
EXIT

I_C_T CERND 70 FWKelseyMetCernd
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3033
END

I_C_T JAN 3 FWKelseyMeetJan
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3032
END

I_C_T ROGER 3 FWKelseyRoger
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3016 = @3017
END

I_C_T ANOMENJ 224 FWKelseyAnomenTirdir
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3001
END

I_C_T YOSHJ 113 FWKelseyHatesYoshimoBetrayal
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3002
END

I_C_T AERIE 43 FWKelseyAerieKalah
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3003
END

I_C_T AERIE 41 FWKelseyAerieIllusion
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @3004 = @3005
END

CHAIN IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWWaylaneKelsey","LOCALS",0)~ THEN WAYLANE waylanekelsey
@3006 DO ~SetGlobal("FWWaylaneKelsey","LOCALS",1)~
== J#KLSYJ @3007
== WAYLANE @3008
== J#KLSYJ @3009
== WAYLANE @3010
== J#KLSYJ @3011
== WAYLANE @3012
== J#KLSYJ @3013
== WAYLANE @3014
== J#KLSYJ @3015
EXIT


// new stuff 9-12-03

I_C_T IMOEN2 22 FWKelseyDontLeaveImoen
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey") Gender(Player1,FEMALE)~ THEN @3367
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey") Gender(Player1,MALE)~ THEN @3368
END


CHAIN IF WEIGHT #1
~NumTimesTalkedToGT(0)
InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWRibaldKelsey","LOCALS",0)~
THEN RIBALD ribaldkelsey
#33851 DO ~SetGlobal("FWRibaldKelsey","LOCALS",1)~
= @3369 = @3370
== J#KLSYJ @3371
== RIBALD @3372
== J#KLSYJ @3373
== RIBALD @3374
== J#KLSYJ @3375
== RIBALD @3369
== J#KLSYJ @3377
== RIBALD @3378
== J#KLSYJ @3379
END
++ @3380 EXTERN J#KLSYJ ribald1
++ @3381 EXTERN J#KLSYJ ribald2
++ @3382 EXTERN J#KLSYJ ribald3

APPEND J#KLSYJ
IF ~~ ribald1
SAY @3383
IF ~~ EXIT
END

IF ~~ ribald2
SAY @3384
IF ~~ EXIT
END

IF ~~ ribald3
SAY @3385
IF ~~ GOTO ribald2
END

END

I_C_T GARKID02 13 FWKelseyGarkid02
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey") Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @3386
END

I_C_T GARKID02 14 FWKelseyGarkid02
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey") Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @3386
END

I_C_T GARKID02 15 FWKelseyGarkid02
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey") Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @3386
END


// Let's have Kelsey notice when we rip off stores.

EXTEND_BOTTOM STOLEN 0 1 2
IF ~!AreaCheck("AR0302")
!AreaCheck("AR0305")
!Class(Myself,THIEF)
See("J#Kelsey")
InParty("J#Kelsey")~ THEN DO
~IncrementGlobal("FWKelseyHatesStealing","GLOBAL",1)
ReputationInc(-2)
Enemy()~ EXIT
END


// The examples start getting rickety from here on out...

// SAHPR4 STATE 7 DOES "IF ~~ THEN EXTERN SAHPR2 10" at the end.

ADD_TRANS_TRIGGER SAHPR4 7
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SAHPR4 7
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseySAHPR4
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseySAHPR4
    SAY @1500
    IF ~~ THEN EXTERN SAHPR2 10
  END
END


// SUDEMIN



ADD_TRANS_TRIGGER SUDEMIN 24
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SUDEMIN 24
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseySUDEMIN1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseySUDEMIN1
    SAY @1501
    IF ~~ THEN EXTERN SUDEMIN 25
  END
END

ADD_TRANS_TRIGGER SUDEMIN 15
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SUDEMIN 15
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseySUDEMIN2
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseySUDEMIN2
    SAY @1502
    IF ~~ THEN EXTERN SUDEMIN 16
  END
END

EXTEND_BOTTOM SUDEMIN 2
	IF ~PartyHasItem("J#KelBdy")~ THEN REPLY @1503 EXTERN SUDEMIN 3
END


// SAHKNG01


ADD_TRANS_TRIGGER SAHKNG01 37
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SAHKNG01 37
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseySAHKNG01
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseySAHKNG01
    SAY @1504
    IF ~~ THEN EXTERN SAHKNG01 38
  END
END

// UDDUER03

I_C_T UDDUER03 5 FWKelseyUDDUER03
== J#KLSYJ IF ~IsValidForPartyDialog("J#Kelsey")~ THEN @1505
END

//TRCAR01

ADD_TRANS_TRIGGER TRCAR01 2
~!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM TRCAR01 2
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyTRCAR01
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyTRCAR01
    SAY @1506
    IF ~~ THEN EXTERN TRCAR01 3
  END
END


// CELOGAN

ADD_TRANS_TRIGGER CELOGAN 59
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM CELOGAN 59
 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyCELOGAN
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyCELOGAN
    SAY @1507
    IF ~~ THEN EXTERN CELOGAN 60
  END
END


// MESSEN

ADD_TRANS_TRIGGER MESSEN 1
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM MESSEN 1
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyMESSEN1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyMESSEN1
    SAY @1508
    IF ~~ THEN DO ~SetGlobal("TMAcceptance","GLOBAL",0)~ EXIT
  END
END


ADD_TRANS_TRIGGER MESSEN 10
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM MESSEN 10
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN JOURNAL #54895
DO ~SetGlobal("TMAcceptance","GLOBAL",1)
RevealAreaOnMap("AR2000")
EraseJournalEntry(54924)
EscapeArea()~ FLAGS 86 EXTERN J#KLSYJ KelseyMESSEN2
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyMESSEN2
    SAY @1509
    IF ~~ THEN EXIT
  END
END



// PIRCOR02


ADD_TRANS_TRIGGER PIRCOR02 4
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PIRCOR02 4
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyPIRCOR02
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyPIRCOR02
    SAY @1510
    IF ~~ THEN EXIT
  END
END


ADD_TRANS_TRIGGER PIRPIR11 1 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PIRPIR11 1
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyPIRPIR11
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyPIRPIR11
    SAY @1511
    IF ~~ THEN EXIT
  END
END



ADD_TRANS_TRIGGER PPIMOEN 4
~!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM PPIMOEN 4
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyPPIMOEN
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyPPIMOEN
    SAY @1512
    IF ~~ THEN JOURNAL #15752
    DO ~SetGlobal("SpokeImoen","GLOBAL",1)~ FLAGS 92 EXIT

  END
END


ADD_TRANS_TRIGGER UHKID02 6
~!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM UHKID02 6
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyUHKID02
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyUHKID02
    SAY @1513
    IF ~~ THEN EXTERN UHKID03 7
  END
END


ADD_TRANS_TRIGGER GOVWAU01 5
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM GOVWAU01 5
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyGOVWAU01
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyGOVWAU01
    SAY @1514
    IF ~~ THEN EXTERN GOVWAU01 6
  END
END


ADD_TRANS_TRIGGER ACOLYTE1 5
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM ACOLYTE1 5
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyACOLYTE1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyACOLYTE1
    SAY @1515
    IF ~~ THEN EXIT
  END
END


ADD_TRANS_TRIGGER PTAGGET 5
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PTAGGET 5
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyPTAGGET
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyPTAGGET
    SAY @1516
    IF ~~ THEN EXTERN PTAGGET 6
  END
END


// MURCRAG


ADD_TRANS_TRIGGER MURCRAG 11
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM MURCRAG 11
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyMURCRAG
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyMURCRAG
    SAY @1517
    IF ~~ THEN JOURNAL #34267
    DO ~SetGlobal("TalkedToCragmoon","GLOBAL",1)~ FLAGS 92 EXIT
  END
END


// INSPECT

ADD_TRANS_TRIGGER INSPECT 11
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM INSPECT 11
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyINSPECT
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyINSPECT
    SAY @1518
    IF ~~ THEN EXTERN INSPECT 13
  END
END


//// UDDROW34 One-shot ////

APPEND UDDROW34
	IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#KelseyUDDROW34","LOCALS",0)~ THEN BEGIN KelseyUDDROW34_1
		SAY @1519
		IF ~~ THEN DO ~SetGlobal("J#KelseyUDDROW34","LOCALS",1)~ EXTERN J#KLSYJ KelseyUDDROW34_2
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyUDDROW34_2
		SAY @1520
      IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN VICONIJ UDDROW_V1
      IF ~!IsValidForPartyDialog("Viconia")
IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ UDDROW_J1
	IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ UDDROW_M1
IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Mazzy")~ THEN EXTERN J#KLSYJ UDDROW34_3
	END
END

// Viconia rebuts UDDROW34

APPEND VICONIJ
	IF ~~ THEN BEGIN UDDROW_V1
		SAY @1521
	IF ~~ THEN EXTERN UDDROW34 UDDROW_V2
	END
END

APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW_V2
		SAY @1522
	IF ~~ THEN EXTERN VICONIJ UDDROW_V3
	END
END


APPEND VICONIJ
	IF ~~ THEN BEGIN UDDROW_V3
		SAY @1523
	IF ~~ THEN EXTERN UDDROW34 UDDROW_V4
	END
END


APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW_V4
		SAY @1524
	IF ~~ THEN DO ~RunAwayFrom("Viconia",15)~ EXTERN J#KLSYJ UDDROW_V5
	END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW_V5
		SAY @1525
	IF ~~ THEN EXTERN VICONIJ UDDROW_V6
	END
END


APPEND VICONIJ
	IF ~~ THEN BEGIN UDDROW_V6
		SAY @1526
IF ~~ THEN EXIT
	END
END


// Jaheira rebuts UDDROW34

APPEND JAHEIRAJ
	IF ~~ THEN BEGIN UDDROW_J1
		SAY @1527
	IF ~~ THEN EXTERN UDDROW34 UDDROW_J2
	END
END


APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW_J2
		SAY @1528
	IF ~~ THEN EXTERN J#KLSYJ UDDROW_J3
	END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW_J3
		SAY @1529
	IF ~~ THEN EXTERN JAHEIRAJ UDDROW_J4
	END
END


APPEND JAHEIRAJ
	IF ~~ THEN BEGIN UDDROW_J4
		SAY @1530

	IF ~~ THEN EXTERN J#KLSYJ UDDROW_J5
	END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW_J5
		SAY @1531
	IF ~~ THEN EXIT
	END
END


// Mazzy rebuts UDDROW34

APPEND MAZZYJ
	IF ~~ THEN BEGIN UDDROW_M1
		SAY @1532
	IF ~~ THEN EXTERN UDDROW34 UDDROW_M2
	END
END


APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW_M2
		SAY @1528
	IF ~~ THEN EXTERN J#KLSYJ UDDROW_M3
	END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW_M3
		SAY @1533
	IF ~~ THEN EXTERN MAZZYJ UDDROW_M4
	END
END


APPEND MAZZYJ
	IF ~~ THEN BEGIN UDDROW_M4
		SAY @1534
	IF ~~ THEN EXIT
	END
END


// Kelsey rebuts UDDROW34

APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW34_3
		SAY @1535
	IF ~~ THEN EXTERN UDDROW34 UDDROW34_4
	END
END


APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW34_4
		SAY @1536
	IF ~~ THEN EXTERN J#KLSYJ UDDROW34_5
	END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN UDDROW34_5
		SAY @1537
	IF ~~ THEN EXTERN UDDROW34 UDDROW34_6
	END
END


APPEND UDDROW34
	IF ~~ THEN BEGIN UDDROW34_6
		SAY @1538
	IF ~~ THEN EXIT
	END
END


// FFCUST02 One-shot

APPEND FFCUST02
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyFFCUST02","LOCALS",0)~ THEN BEGIN FFCUST02_1 // from:
  SAY @1539
  IF ~~ THEN DO ~SetGlobal("FWKelseyFFCUST02","LOCALS",1)~ EXTERN J#KLSYJ FFCUST02_2
END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN FFCUST02_2
		SAY @1540
	IF ~~ THEN EXIT
	END
END


// BAMNG02 One-shot

APPEND BAMNG02
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyBAMNG02","GLOBAL",0)~ THEN BEGIN BAMNG02_1 // from:
  SAY @1541
  IF ~~ THEN DO ~SetGlobal("FWKelseyBAMNG02","GLOBAL",1)~ EXTERN J#KLSYJ BAMNG02_2
END
END


APPEND J#KLSYJ
	IF ~~ THEN BEGIN BAMNG02_2
		SAY @1542
	IF ~~ THEN EXIT
	END
END


// LOUTM02 One-shot


APPEND LOUTM02
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyloutm02","GLOBAL",0)~
THEN BEGIN LOUTM02_1 // from:
  SAY @1543
  IF ~~ THEN DO ~SetGlobal("FWKelseyloutm02","GLOBAL",1)~ EXTERN J#KLSYJ LOUTM02_2
END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN LOUTM02_2
		SAY @1544
	IF ~~ THEN EXIT
	END
END


// SCROLL01 One-shot

APPEND SCROLL01
	IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseySCROLL01","LOCALS",0)~ THEN BEGIN SCROLL01_1
		SAY @1545
		IF ~~ THEN DO ~SetGlobal("FWKelseySCROLL01","LOCALS",1)~
		EXTERN J#KLSYJ SCROLL01_2
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN SCROLL01_2
		SAY @1546
	IF ~~ THEN EXTERN SCROLL01 SCROLL01_3
	END
END

APPEND SCROLL01
	IF ~~ THEN BEGIN SCROLL01_3
		SAY @1547
	IF ~~ THEN EXTERN J#KLSYJ SCROLL01_4
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN SCROLL01_4
		SAY @1548
	IF ~~ THEN EXTERN SCROLL01 SCROLL01_5
	END
END

APPEND SCROLL01
	IF ~~ THEN BEGIN SCROLL01_5
		SAY @1549
	IF ~~ THEN EXTERN J#KLSYJ SCROLL01_6
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN SCROLL01_6
		SAY @1550
	IF ~~ THEN EXTERN J#KLSYJ SCROLL01_7
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN SCROLL01_7
		SAY @1551
	IF ~~ THEN EXTERN SCROLL01 SCROLL01_8
	END
END

APPEND SCROLL01
	IF ~~ THEN BEGIN SCROLL01_8
		SAY @1552
	IF ~~ THEN EXTERN SCROLL01 SCROLL01_9
	END
END

APPEND SCROLL01
	IF ~~ THEN BEGIN SCROLL01_9
		SAY @1553
	IF ~~ THEN EXTERN J#KLSYJ SCROLL01_10
	END
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN SCROLL01_10
		SAY @1554
	IF ~~ THEN EXTERN SCROLL01 SCROLL01_11
	END
END

APPEND SCROLL01
	IF ~~ THEN BEGIN SCROLL01_11
		SAY @1555
	IF ~~ THEN EXIT
	END
END


// UHINN01 One-shot

APPEND UHINN01
  IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("VillageSaved","GLOBAL",1)
!Dead("uhinn02")
!StateCheck("uhinn02",STATE_SLEEPING)
!GlobalGT("rangerprotector","GLOBAL",0)
Global("J#KelseyUHINN01","LOCALS",0)~
 THEN BEGIN KelseyUHINN01_1
	SAY @1556
	IF ~~ THEN DO ~SetGlobal("J#KelseyUHINN01","LOCALS",1)~ EXTERN J#KLSYJ UHINN01_2
END
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN UHINN01_2
SAY @1557
IF ~~ THEN EXTERN UHINN01 UHINN01_3
END
END

APPEND UHINN01
  IF ~~ THEN BEGIN UHINN01_3
    SAY @1558
    IF ~~ THEN EXTERN J#KLSYJ UHINN01_4
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN UHINN01_4
    SAY @1559
    IF ~~ THEN EXTERN UHINN01 UHINN01_5
  END
END

APPEND UHINN01
  IF ~~ THEN BEGIN UHINN01_5
    SAY @1560
    IF ~~ THEN EXTERN UHINN02 UHINN01_6
  END
END

APPEND UHINN02
  IF ~~ THEN BEGIN UHINN01_6
    SAY @1561
    IF ~~ THEN EXTERN UHINN01 UHINN01_7
  END
END

APPEND UHINN01
  IF ~~ THEN BEGIN UHINN01_7
    SAY @1562
    IF ~~ THEN EXTERN UHINN01 UHINN01_7_2
  END
END

APPEND UHINN01
  IF ~~ THEN BEGIN UHINN01_7_2
    SAY @1563
    IF ~~ THEN EXTERN J#KLSYJ UHINN01_8
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN UHINN01_8
    SAY @1564
    IF ~~ THEN EXTERN UHINN01 UHINN01_9
  END
END

APPEND UHINN01
  IF ~~ THEN BEGIN UHINN01_9
    SAY @1565
    IF ~~ THEN EXTERN J#KLSYJ UHINN01_10
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN UHINN01_10
    SAY @1566
    IF ~~ THEN EXIT
  END
END


// C6ELHAN2

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("J#KelBdy")~ THEN REPLY @1567 EXTERN C6ELHAN2 76
END


// WARSAGE

EXTEND_BOTTOM WARSAGE 0
IF ~!Dead("c6bodhi")
Global("J#KelseyVampire","GLOBAL",2)~
 THEN REPLY @1568 EXTERN WARSAGE 6
END

EXTEND_BOTTOM WARSAGE 0
IF ~PartyHasItem("J#KelBdy")~
 THEN REPLY @1569 EXTERN WARSAGE 5
END


// GNOBLEM1

APPEND GNOBLEM1
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("KelseyGNOBLEM1","LOCALS",0)~ THEN BEGIN GNOBLEM1_1
  SAY @1570
  IF ~~ THEN DO ~SetGlobal("KelseyGNOBLEM1","LOCALS",1)~
EXTERN J#KLSYJ GNOBLEM1_2
END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN GNOBLEM1_2
    SAY @1571
    IF ~~ THEN EXTERN GNOBLEM1 GNOBLEM1_3
  END
END

APPEND GNOBLEM1
  IF ~~ THEN BEGIN GNOBLEM1_3
    SAY @1572
    IF ~~ THEN EXIT
  END
END


// TRGYP02

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("J#Kelsey",LastTalkedToBy)~
 THEN EXTERN TRGYP02 TRGYP02_1
END

APPEND TRGYP02
  IF ~~ THEN BEGIN TRGYP02_1
    SAY @1573
    IF ~~ THEN EXTERN J#KLSYJ TRGYP02_2
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TRGYP02_2
	SAY @1574
  IF ~~ THEN EXIT
END
END


// CORNEIL

ADD_TRANS_TRIGGER CORNEIL 8
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM CORNEIL 8
  IF ~ReputationGT(LastTalkedToBy,3)
IsValidForPartyDialog("J#Kelsey")~ THEN REPLY @1575 /* #59584 */ EXTERN J#KLSYJ CORNEIL_1
END

EXTEND_BOTTOM CORNEIL 8
  IF ~ReputationLT(LastTalkedToBy,4)
IsValidForPartyDialog("J#Kelsey")~ THEN REPLY #59584 EXTERN CORNEIL 10
END


APPEND J#KLSYJ
  IF ~~ THEN BEGIN CORNEIL_1
	SAY @1576
  IF ~~ THEN EXTERN CORNEIL 9
END
END



ADD_TRANS_TRIGGER CORNEIL 11
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM CORNEIL 11
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN DO ~SetGlobal("BribedCowled","GLOBAL",1)~ EXTERN J#KLSYJ CORNEIL_2
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN CORNEIL_2
    SAY @1577
    IF ~~ THEN EXIT
  END
END


// PPUMB01

ADD_TRANS_TRIGGER PPUMB01 0
~OR(2)
!IsValidForPartyDialog("J#Kelsey")
!Global("KelseyPPUMB01","LOCALS",0)~

EXTEND_BOTTOM PPUMB01 0
IF ~IsValidForPartyDialog("J#Kelsey")
Global("FWKelseyPPUMB01","LOCALS",0)~
THEN EXTERN J#KLSYJ PPUMB01_1
END

APPEND J#KLSYJ

  IF ~~ THEN BEGIN PPUMB01_1
    SAY @1578
    IF ~~ THEN DO ~SetGlobal("FWKelseyPPUMB01","LOCALS",1)~ EXTERN PPUMB01 PPUMB01_2
  END
END

APPEND PPUMB01
IF ~~ THEN BEGIN PPUMB01_2
    SAY @1579
  IF ~~ THEN REPLY @1580
    DO ~StartStore("ppumb01",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1581 EXTERN PPUMB01 1
END
  END






APPEND SHOP06
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#KelseySHOP06","LOCALS",0)~
THEN BEGIN KELSEYSHOP06_1
  SAY @1582
  IF ~~ THEN DO ~SetGlobal("J#KelseySHOP06","LOCALS",1)~
  EXTERN J#KLSYJ KELSEYSHOP06_2
END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KELSEYSHOP06_2
    SAY @1583
    IF ~~ THEN EXTERN SHOP06 KELSEYSHOP06_3
  END
END

APPEND SHOP06
  IF ~~ THEN BEGIN KELSEYSHOP06_3
    SAY @1584
    IF ~~ THEN EXTERN J#KLSYJ KELSEYSHOP06_4
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KELSEYSHOP06_4
    SAY @1585
    IF ~~ THEN EXTERN SHOP06 KELSEYSHOP06_5
  END
END

APPEND SHOP06
  IF ~~ THEN BEGIN KELSEYSHOP06_5
    SAY @1586
    IF ~~ THEN EXTERN J#KLSYJ KELSEYSHOP06_6
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KELSEYSHOP06_6
    SAY @1587
    IF ~~ THEN EXTERN SHOP06 KELSEYSHOP06_7
  END
END

APPEND SHOP06
  IF ~~ THEN BEGIN KELSEYSHOP06_7
    SAY @1588
    IF ~~ THEN EXIT
  END
END



APPEND SHOP07
IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#KelseySHOP07","LOCALS",0)~
THEN BEGIN KELSEYSHOP07_1
  SAY @1589
  IF ~~ THEN DO ~SetGlobal("J#KelseySHOP07","LOCALS",1)~
  EXTERN J#KLSYJ KELSEYSHOP07_2
END
END

APPEND J#KLSYJ

  IF ~~ THEN BEGIN KELSEYSHOP07_2
    SAY @1590
    IF ~~ THEN EXTERN SHOP07 KELSEYSHOP07_3
  END
END

APPEND SHOP07

  IF ~~ THEN BEGIN KELSEYSHOP07_3
    SAY @1591
    IF ~~ THEN EXTERN J#KLSYJ KELSEYSHOP07_4
  END
END

APPEND J#KLSYJ

  IF ~~ THEN BEGIN KELSEYSHOP07_4
    SAY @1592
    IF ~~ THEN EXTERN SHOP07 KELSEYSHOP07_5
  END
END


CHAIN SHOP07 KELSEYSHOP07_5
@1593
    = @1594
END J#KLSYJ KELSEYSHOP07_6


APPEND J#KLSYJ

  IF ~~ THEN BEGIN KELSEYSHOP07_6
    SAY @1595
    IF ~~ THEN EXTERN SHOP07 KELSEYSHOP07_7
  END
END

APPEND SHOP07

  IF ~~ THEN BEGIN KELSEYSHOP07_7
    SAY @1596
    IF ~~ THEN EXTERN J#KLSYJ KELSEYSHOP07_8
  END
END

APPEND J#KLSYJ

  IF ~~ THEN BEGIN KELSEYSHOP07_8
    SAY @1597
    IF ~~ THEN EXIT
  END
END

// UDDROW25

/* REPLACE UDDROW25

IF ~True()~ THEN BEGIN 0 // from:
  SAY #52932
  IF ~!IsValidForPartyDialog("J#Kelsey")~ THEN REPLY #52934 DO ~StartStore("uddrow25",LastTalkedToBy(Myself))~ EXIT
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN REPLY @1598 EXTERN J#KLSYJ UDDROW25_1
  IF ~~ THEN REPLY #52935 GOTO 1
END
END */

ADD_TRANS_TRIGGER UDDROW25 0
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM UDDROW25 0
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN REPLY @1598 EXTERN J#KLSYJ UDDROW25_1
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN UDDROW25_1
	SAY @1599
   IF ~~ THEN DO ~StartStore("uddrow25",LastTalkedToBy(Myself))~ EXIT
END
END


// DADROW21

ADD_TRANS_TRIGGER dadrow21 2 ~!Name("J#Kelsey",LastTalkedToBy)~ DO 0
ADD_TRANS_TRIGGER dadrow21 2 ~!Global("J#KelseyRomanceActive","GLOBAL",1) !Global("J#KelseyRomanceActive","GLOBAL",2)~ DO 3


// DADROW23

ADD_TRANS_TRIGGER dadrow23 2 ~!Name("J#Kelsey",LastTalkedToBy)~ DO 0 2


// UDSIMYAZ

ADD_TRANS_TRIGGER UDSIMYAZ 16
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM UDSIMYAZ 16
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ UDSIMYAZ_1
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN UDSIMYAZ_1
	SAY @1600
  IF ~~ THEN EXTERN UDSIMYAZ 17
END
END



// Kelsey interrupts Anomen LT 2

ADD_TRANS_TRIGGER BANOMEN 79
~OR(2)
!Global("J#KelseyRomanceActive","GLOBAL",1)
!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM BANOMEN 79
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)
IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN BJ#KLSY AnomenLT2_1
END

APPEND BJ#KLSY
IF ~~ THEN BEGIN AnomenLT2_1
SAY @1601
IF ~~ THEN EXTERN BANOMEN AnomenLT2_2
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT2_2
SAY @1602
IF ~~ THEN EXTERN BANOMEN AnomenLT2_3
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT2_3
SAY @1603
  IF ~~ THEN REPLY @1604 EXTERN BANOMEN 80
  IF ~~ THEN REPLY @1605  EXTERN BANOMEN 81
  IF ~~ THEN REPLY @1606 EXTERN BANOMEN 82
  IF ~~ THEN REPLY @1607 EXTERN BANOMEN 86

END
END




// Kelsey interrupts Anomen LT 4

ADD_TRANS_TRIGGER BANOMEN 106
~OR(2)
!Global("J#KelseyRomanceActive","GLOBAL",1)
!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM BANOMEN 106
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)
IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN BJ#KLSY AnomenLT4_1
END

APPEND BJ#KLSY
IF ~~ THEN BEGIN AnomenLT4_1
SAY @1608
IF ~~ THEN EXTERN BANOMEN AnomenLT4_2
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT4_2
SAY @1609
IF ~~ THEN EXTERN BJ#KLSY AnomenLT4_3
END
END

APPEND BJ#KLSY
IF ~~ THEN BEGIN AnomenLT4_3
SAY @1610
IF ~~ THEN EXTERN BANOMEN AnomenLT4_4
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT4_4
SAY @1611
IF ~~ THEN EXTERN BANOMEN AnomenLT4_5
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT4_5
SAY @1612
  IF ~~ THEN REPLY @1613 EXTERN BANOMEN 107
  IF ~~ THEN REPLY @1614 EXTERN BANOMEN 112
  IF ~~ THEN REPLY @1615 EXTERN BANOMEN 113
  IF ~~ THEN REPLY @1616 EXTERN BANOMEN 114

END
END



// Kelsey interrupts Anomen LT 12

ADD_TRANS_TRIGGER BANOMEN 173
~OR(2)
!Global("J#KelseyRomanceActive","GLOBAL",1)
!IsValidForPartyDialog("J#Kelsey")~


EXTEND_BOTTOM BANOMEN 173
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)
IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN BJ#KLSY AnomenLT12_1
END

APPEND BJ#KLSY
IF ~~ THEN BEGIN AnomenLT12_1
SAY @1617
IF ~~ THEN EXTERN BANOMEN AnomenLT12_2
END
END


APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT12_2
SAY @1618
IF ~~ THEN EXTERN BJ#KLSY AnomenLT12_3
END
END

APPEND BJ#KLSY
IF ~~ THEN BEGIN AnomenLT12_3
SAY @1619
IF ~~ THEN EXTERN BANOMEN AnomenLT12_4
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT12_4
SAY @1620
IF ~~ THEN EXTERN BANOMEN AnomenLT12_5
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenLT12_5
SAY @1621
  IF ~~ THEN REPLY @1622 /* #35254 */ EXTERN BANOMEN 174
  IF ~~ THEN REPLY @1623 /* #35255 */ EXTERN BANOMEN 179
  IF ~~ THEN REPLY @1624 /* #35256 */ EXTERN BANOMEN 180
END
END



// UHMAY01

ADD_TRANS_TRIGGER UHMAY01 18
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM UHMAY01 18
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN JOURNAL #2099 FLAGS 82 EXTERN J#KLSYJ KELSEYUHMAY01_1
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYUHMAY01_1
	SAY @1625
IF ~~ THEN EXTERN UHMAY01 19
END
END

// PPAPHRIL

ADD_TRANS_TRIGGER PPAPHRIL 4
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PPAPHRIL 4
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KELSEYPPAPHRIL_1
END

ADD_TRANS_TRIGGER PPAPHRIL 5
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PPAPHRIL 5
IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KELSEYPPAPHRIL_1
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYPPAPHRIL_1
	SAY @1626
IF ~~ THEN EXIT
END
END


// PPIRENI1


ADD_TRANS_TRIGGER VALYGARJ 79
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM VALYGARJ 79
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyVALYGARJ_1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyVALYGARJ_1
    SAY @1627
    IF ~~ THEN EXTERN PPIRENI1 25
  END
END


ADD_TRANS_TRIGGER PPIRENI1 14
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM PPIRENI1 14
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyPPIRENI1_1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyPPIRENI1_1
    SAY @1628
    IF ~~ THEN EXTERN PPIRENI1 15
  END
END


// UDPHAE01

ADD_TRANS_TRIGGER UDPHAE01 88
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM UDPHAE01 88
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN
JOURNAL #23485 DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)~ FLAGS 86 EXTERN J#KLSYJ KELSEYUDPHAE01
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KELSEYUDPHAE01
    SAY @1629
    IF ~~ THEN EXIT
  END
END


// SAHBEH01

ADD_TRANS_TRIGGER SAHBEH01 38
~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM SAHBEH01 38
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KELSEYSAHBEH01
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KELSEYSAHBEH01
    SAY @1630
    IF ~~ THEN EXTERN SAHBEH01 40
  END
END

///////////////////////////////////////

// Pace

ADD_TRANS_TRIGGER ~PACE~ 6 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM ~PACE~ 6
 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ Pace1
END

APPEND J#KLSYJ
 IF ~~ THEN BEGIN Pace1
  SAY @1631
  IF ~~ THEN EXIT
 END
END

// UDDEMON

ADD_TRANS_TRIGGER UDDEMON 7 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM UDDEMON 7
	IF
		~IsValidForPartyDialog("J#Kelsey")
Dead("Phaere")
PartyHasItem("MISC9t")
Alignment(Player1,MASK_EVIL)~
	THEN
		REPLY #55900 // "Hold demons! I have the eggs..."
		EXTERN J#KLSYJ J#KelseyDemon_1
END

APPEND J#KLSYJ
	IF ~~ THEN BEGIN J#KelseyDemon_1
		SAY @1632
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXTERN UDDEMON 8
	IF
		~IsValidForPartyDialog("Nalia")~
	THEN
		DO ~LeaveParty()
EscapeArea()~
		EXTERN NaliaJ 280
COPY_TRANS NaliaJ 280
	END
 END

EXTEND_BOTTOM UDDEMON 7
	IF
		~Dead("Phaere")
IsValidForPartyDialog("J#Kelsey")~
	THEN
		REPLY #52143
		GOTO 13
END

EXTEND_BOTTOM UDDEMON 7
	IF
		~Dead("Phaere")
IsValidForPartyDialog("J#Kelsey")~
	THEN
		REPLY #52144
		GOTO 13
END

EXTEND_BOTTOM UDDEMON 7
	IF
		~!Dead("Phaere")
IsValidForPartyDialog("J#Kelsey")~
	THEN
		REPLY @1635
		EXTERN UDPHAE01 159
END


// KYLIE

ADD_TRANS_TRIGGER KYLIE1 5 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM KYLIE1 5
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyKylie1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN KelseyKylie1
    SAY @1636
    IF ~~ THEN EXTERN KYLIE1 6
  END
END

////////////////////////////////////////////////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER TIRDIR 2 ~!IsValidForPartyDialog("J#Kelsey")~

 EXTEND_BOTTOM TIRDIR 2
   IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyTirdir1
 END

 APPEND J#KLSYJ
   IF ~~ THEN BEGIN KelseyTirdir1
     SAY @1637
     IF ~~ THEN EXTERN TIRDIR 3
   END
 END

//////////////////////////////////////////////////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER VALYGAR 28 ~!IsValidForPartyDialog("J#Kelsey")~

 EXTEND_BOTTOM VALYGAR 28
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyValygar1
 END

 APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyValygar1
		SAY @1638
		IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
	END
 END

 ///////////////////////////////////////////////////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER LEHTIN 22 ~!IsValidForPartyDialog("J#Kelsey")~

 EXTEND_BOTTOM LEHTIN 22
   IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyLehtin1
 END

 APPEND J#KLSYJ
   IF ~~ THEN BEGIN KelseyLehtin1
     SAY @1639
     IF ~~ THEN DO ~SetGlobal("SlavingJerk","GLOBAL",1)
 GiveItemCreate("MISC4Z",LastTalkedToBy(Myself),0,0,0)~ EXIT
   END
 END

 ////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1.0.5: Maybe the Anomen/Hendak thing will really work now!

I_C_T AnomenJ 162 FWKelseyAnomenHendak
== J#KLSYJ IF ~InParty("J#Kelsey") !Dead("J#Kelsey")~ THEN @1640
== ANOMENJ IF ~InParty("J#Kelsey") !Dead("J#Kelsey")~ THEN @1641
END



 ////////////////////////////////////////////////////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER THIEF7 10 ~!IsValidForPartyDialog("J#Kelsey")~

 EXTEND_BOTTOM THIEF7 10
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyThief7
 END

 APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyThief7
		SAY @1642
		IF ~~ THEN EXIT
	END
 END

 ////////////////////////////////////////////////////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER ARNMAN04 12 ~!IsValidForPartyDialog("J#Kelsey")~

 EXTEND_BOTTOM ARNMAN04 12
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyArnman041
 END

 APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyArnman041
		SAY @1643
		IF ~~ THEN EXIT
	END
 END

 ////////////////////////////////////////////////////////////////////////////////////////////////////////

APPEND BSAILOR3
  IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#InteractKelsey","LOCALS",0)~ THEN BEGIN KelseyBSailor30
    SAY @1644
    IF ~~ THEN DO ~SetGlobal("J#InteractKelsey","LOCALS",1)~ EXTERN J#KLSYJ KelseyBSailor31
  END
END

 APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyBSailor31
		SAY @1645
		IF ~~ THEN EXIT
	END
 END

 ////////////////////////////////////////////////////////////////////////////////////////////////////////


 EXTEND_BOTTOM INSPECT 11
	IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ KelseyInspect1
 END

 APPEND J#KLSYJ
	IF ~~ THEN BEGIN KelseyInspect1
		SAY @1518
		IF ~~ THEN EXTERN INSPECT 12
	END
 END

//////////////////////////////////////////////////////////////////////////////////////////////////////////

EXTEND_BOTTOM TRNOBM02 3
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KlsyJ TRNOBM02_2
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TRNOBM02_2
    SAY @1646
    IF ~~ THEN EXIT
  END
END




// TRHMER01 Busya : had some nasty hangovers from pre-weight supporting days, recoded for 1.0.5.

CHAIN IF WEIGHT #-1 ~InParty("J#Kelsey")
See("J#Kelsey")
!Dead("J#Kelsey")
Global("J#KelseyBusya","LOCALS",0)~ THEN TRHMER01 KelseyBusya
@1647 DO ~SetGlobal("J#KelseyBusya","LOCALS",1)~
== J#KLSYJ @1648
== TRHMER01 @1649
== J#KLSYJ IF ~G("J#KelseyRomanceActive",2)~ THEN @1650
== J#KLSYJ IF ~G("J#KelseyRomanceActive",1)~ THEN @3000
== J#KLSYJ IF ~!G("J#KelseyRomanceActive",2) !G("J#KelseyRomanceActive",1)~ THEN @1651
END TRHMER01 KelseyBusya6

APPEND TRHMER01
	IF ~~ THEN BEGIN KelseyBusya6
		SAY @1652
		IF ~~ THEN REPLY @1653 GOTO KelseyBusya7
		IF ~~ THEN REPLY @1654 GOTO KelseyBusya8
		IF ~~ THEN REPLY @1655 GOTO KelseyBusya9
		IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN REPLY @1656 GOTO KelseyBusya10
	END

IF ~~ THEN BEGIN KelseyBusya8
SAY @1663
IF ~~ THEN GOTO KelseyBusya7
END

IF ~~ THEN BEGIN KelseyBusya9
SAY @1664
IF ~~ THEN GOTO KelseyBusya7
END

IF ~~ THEN BEGIN KelseyBusya10
SAY @1665
IF ~~ THEN GOTO KelseyBusya7
END

END

CHAIN TRHMER01 KelseyBusya7
@1657 = @1658 = @1659 = @1660 = @1661 = @1662
== J#KLSYJ @1666
== TRHMER01 @1667
== J#KLSYJ @1668
== TRHMER01 @1669
== J#KLSYJ @1670 = @1671
== TRHMER01 @1672
EXIT



//////////////////////////////////////////////////////////////////////////////////////////////////////////

APPEND J#KLSYJ
IF ~Global("J#CearaFight","GLOBAL",10)~ THEN BEGIN CearaDead1
SAY @1673
IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",11)~ EXTERN J#KLSYJ CearaDead2
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead2
SAY @1674
IF ~~ THEN REPLY @1675 EXTERN J#KLSYJ CearaDead3
IF ~~ THEN REPLY @1676 EXTERN J#KLSYJ CearaDead4
IF ~~ THEN REPLY @1677 EXTERN J#KLSYJ CearaDead5
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead3
SAY @1678
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead4
SAY @1679
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead5
SAY @1680
IF ~~ THEN EXIT
END
END

ADD_TRANS_TRIGGER PLAYER1 3 ~!IsValidForPartyDialogue("J#Kelsey")~

EXTEND_BOTTOM PLAYER1 3
  IF ~IsValidForPartyDialogue("J#Kelsey")~
    THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN J#KLSYJ Bhaal4
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal4
  SAY @1681 /* #75375 */
  IF ~~ THEN REPLY @1682 /* #75376 */ EXTERN J#KLSYJ Bhaal5
  IF ~~ THEN REPLY @1683 /* #75378 */ EXTERN J#KLSYJ Bhaal6
  IF ~~ THEN REPLY @1684 /* #75380 */ EXTERN J#KLSYJ Bhaal7
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal5
  SAY @1685 /* #75377 */
  IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal6
  SAY @1686 /* #75379 */
  IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal7
  SAY @1687 /* #75381 */
  IF ~~ THEN EXIT
END
END


ADD_TRANS_TRIGGER PLAYER1 5 ~!IsValidForPartyDialogue("J#Kelsey")~

EXTEND_BOTTOM PLAYER1 5
  IF ~IsValidForPartyDialogue("J#Kelsey")~ THEN EXTERN ~J#KLSYJ~ Bhaal8
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal8
  SAY @1688 /* #75382 */
  IF ~~ THEN EXTERN J#KLSYJ Bhaal9
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal9
  SAY @1689 /* #75385 */
  IF ~~ THEN EXTERN J#KLSYJ Bhaal10
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal10
  SAY @1690 /* #75384 */
  IF ~~ THEN EXIT
END
END

ADD_STATE_TRIGGER PLAYER1 7 ~OR(3)
Global("J#KelseyRomanceActive","GLOBAL",3)
Global("J#KelseyRomanceActive","GLOBAL",0)
!IsValidForPartyDialogue("J#Kelsey")~

APPEND PLAYER1
  IF ~Global("drowTalk","GLOBAL",2)
OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN BEGIN KelseyDT2
    SAY #49908
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN ~J#KLSYJ~ Bhaal11
  IF ~!IsValidForPartyDialog("J#Kelsey")~ THEN GOTO 9
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal11
  SAY @1691  /* #75386 */
  IF ~~ THEN REPLY @1692 /* #75387 */ DO ~SetGlobal("J#EndangerLovedOne","GLOBAL",1)~ EXTERN J#KLSYJ Bhaal12
  IF ~~ THEN REPLY @1693 /* #75389 */ DO ~SetGlobal("J#EndangerLovedOne","GLOBAL",1)~ EXTERN J#KLSYJ Bhaal12
  IF ~~ THEN REPLY @1694 /* #75390 */ DO ~SetGlobal("J#EndangerLovedOne","GLOBAL",1)~ EXTERN J#KLSYJ Bhaal12
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal12
  SAY @1695 /* #75388 */
  IF ~~ THEN DO ~SetGlobal("J#EndangeredLovedOne","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END
END

ADD_STATE_TRIGGER PLAYER1 10 ~!Global("J#EndangeredLovedOne","GLOBAL",1)~

APPEND PLAYER1
  IF ~Global("J#EndangeredLovedOne","GLOBAL",1)~ THEN BEGIN KelseyELO0
    SAY #49951
  IF ~!IsValidForPartyDialogue("J#Kelsey")~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5) SetGlobal("J#EndangeredLovedOne","GLOBAL",2)~ GOTO 12
  IF ~IsValidForPartyDialogue("J#Kelsey")~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5) SetGlobal("J#EndangeredLovedOne","GLOBAL",2)~ EXTERN ~J#KLSYJ~ Bhaal13
END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN Bhaal13
  SAY @1696 /* #75391 */
  IF ~~ THEN EXTERN J#KLSYJ Bhaal14
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal14
  SAY @1697 /* #75392 */
  IF ~~ THEN EXIT
END
END

ADD_TRANS_TRIGGER PLAYER1 15 ~!IsValidForPartyDialogue("J#Kelsey")~

EXTEND_BOTTOM PLAYER1 15
  IF ~IsValidForPartyDialogue("J#Kelsey")~ THEN EXTERN ~J#KLSYJ~ Bhaal15
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal15
  SAY @1698 /* #75393 */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutScene("Cut41m")~ EXIT
END
END

ADD_TRANS_TRIGGER PLAYER1 16 ~!IsValidForPartyDialogue("J#Kelsey")~

EXTEND_BOTTOM PLAYER1 16
  IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#GettingIntoRandomNamesNow","GLOBAL",0)~ THEN DO ~SetGlobal("IrenicusBeat","AR2806",2)
SetGlobal("HadPeopleBeforeHell","LOCALS",1)
SetGlobal("J#GettingIntoRandomNamesNow","GLOBAL",1)~ EXTERN ~J#KLSYJ~ Bhaal16
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal16
  SAY @1699  /* #75394 */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END
END

APPEND PLAYER1
IF ~~ THEN BEGIN P155
  SAY @1700 /* #75411 */
  IF ~~ THEN REPLY @1701 /* #75396 */ EXTERN ~J#KLSYJ~ Bhaal17
END
END

APPEND PLAYER1
IF ~~ THEN BEGIN P156
  SAY @1702 /* #75402 */
  IF ~~ THEN REPLY @1703 /* #75403 */ EXTERN ~J#KLSYJ~ Bhaal22
  IF ~~ THEN REPLY @1704 /* #75404 */ EXTERN ~J#KLSYJ~ Bhaal22
  IF ~~ THEN REPLY @1705 /* #75405 */ EXTERN ~J#KLSYJ~ Bhaal22
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal17
  SAY @1706  /* #75397 */
  IF ~~ THEN EXTERN J#KLSYJ Bhaal18
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal18
  SAY @1707  /* #75398 */
  IF ~~ THEN GOTO Bhaal19
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal19
  SAY @1708  /* #75399 */
  IF ~~ THEN GOTO Bhaal20
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal20
  SAY @1709  /* #75400 */
  IF ~~ THEN GOTO Bhaal21
END
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal21
  SAY @1710  /* #75401 */
COPY_TRANS PLAYER1 33
END
END

EXTEND_BOTTOM PLAYER1 33
  IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KelseyDoneTreeOfLifeThing","GLOBAL",0)~ THEN DO ~SetGlobal("J#KelseyDoneTreeOfLifeThing","GLOBAL",1)~  GOTO P155
  IF ~IsValidForPartyDialog("J#Kelsey")
!Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KelseyDoneTreeOfLifeThing","GLOBAL",0)~ THEN DO ~SetGlobal("J#KelseyDoneTreeOfLifeThing","GLOBAL",1)~ GOTO P156
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Bhaal22
  SAY @1711  /* #75406 */
COPY_TRANS PLAYER1 33
END
END


APPEND Imoen2J
IF ~~ THEN BEGIN SI15
  SAY @1712 /* #76404 */
  IF ~~ THEN EXTERN ~SALVANAS~ SI29
END
END

APPEND Imoen2J
IF ~~ THEN BEGIN SI16
  SAY @1713 /* #76405 */
  IF ~~ THEN GOTO SI17
END
END

APPEND Imoen2J
IF ~~ THEN BEGIN SI17
  SAY @1714 /* #76406 */
  IF ~~ THEN EXTERN ~SALVANAS~ SI30
END
END

APPEND Imoen2J
IF ~~ THEN BEGIN SI18
  SAY @1715 /* #76407 */
  IF ~~ THEN EXTERN ~SALVANAS~ SI31
END
END

APPEND Salvanas
IF WEIGHT #5 ~!InPartySlot(LastTalkedToBy,0)
Name("Imoen2",LastTalkedToBy)~ THEN BEGIN SI28
  SAY @1716 /* #76400 */
  IF ~~ THEN EXTERN ~Imoen2J~ SI15
END
END

APPEND Salvanas
IF ~~ THEN BEGIN SI29
  SAY @1717 /* #76401 */
  IF ~~ THEN EXTERN ~Imoen2J~ SI16
END
END

APPEND Salvanas
IF ~~ THEN BEGIN SI30
  SAY @1718 /* #76402 */
  IF ~~ THEN EXTERN ~Imoen2J~ SI18
END
END

APPEND Salvanas
IF ~~ THEN BEGIN SI31
  SAY @1719 /* #76403 */
  IF ~~ THEN DO ~RunAwayFrom("Imoen2",15)~ EXIT
END
END

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("J#KelseyVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
 IF ~Global("J#KelseyVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
 IF ~Global("J#KelseyVampire","GLOBAL",2)~ THEN REPLY @1720 EXTERN C6BODHI C6Bodhi29
  IF ~Global("J#KelseyVampire","GLOBAL",2)~ THEN REPLY @1721 EXTERN C6BODHI C6Bodhi29
  IF ~Global("J#KelseyVampire","GLOBAL",2)~ THEN REPLY @1722 EXTERN C6BODHI C6Bodhi29
  IF ~Global("J#KelseyVampire","GLOBAL",2)~ THEN REPLY @1723 EXTERN C6BODHI C6Bodhi30
END

BEGIN ~J#VMPKEL~

IF ~~ THEN BEGIN 0 // from:
  SAY @1724
  IF ~~ THEN EXTERN ~C6BODHI~ C6Bodhi31
END

APPEND C6BODHI
IF ~~ THEN BEGIN C6Bodhi29
  SAY @1725 /* #75886 */
  IF ~~ THEN JOURNAL @1726 EXTERN ~J#VMPKEL~ 0
END
END

APPEND C6BODHI
IF ~~ THEN BEGIN C6Bodhi30
  SAY @1727 /* #75891 */
  IF ~~ THEN GOTO C6Bodhi29
END
END

APPEND C6BODHI
IF ~~ THEN BEGIN C6Bodhi31
  SAY @1728 /* #75892 */
  IF ~~ THEN GOTO 28
END
END

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("J#Kelsey")
!Global("J#KelseyRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM BODHIAMB 5
  IF ~InParty("J#Kelsey")
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN EXTERN BODHIAMB BODHIAMB_20
END

APPEND BODHIAMB
  IF ~~ THEN BEGIN BODHIAMB_20
  SAY @1729 /* #56540 */
  IF ~OR(2)
!InPartyAllowDead("J#Kelsey")
Dead("J#Kelsey")~ THEN GOTO 6
  IF ~InPartyAllowDead("J#Kelsey")
!Dead("J#Kelsey")~ THEN EXTERN BODHIAMB BODHIAMB_21
END
END

APPEND BODHIAMB
  IF ~~ THEN BEGIN BODHIAMB_21
  SAY @1730 /* #75407 */
  IF ~~ THEN EXTERN ~J#KLSYJ~ KB23
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KB23
  SAY @1731 /* #75410 */
  IF ~~ THEN EXTERN ~BODHIAMB~ BODHIAMB_22
END
END

APPEND ~BODHIAMB~
  IF ~~ THEN BEGIN BODHIAMB_22
    SAY @1732 /* #75408 */
    IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("J#Cut53e")~ JOURNAL @1733 EXIT
  END
END

ADD_TRANS_TRIGGER IMNBOOK1 0 ~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("J#KELBDY")~

EXTEND_BOTTOM IMNBOOK1 0
 IF ~PartyHasItem("J#KELBDY")
Global("RevealUmar","GLOBAL",1)~
   THEN REPLY #59383 EXTERN IMNBOOK1 4
END

ADD_TRANS_TRIGGER TOLGER 21 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 21
 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN DO ~SetGlobal("HiredByCowled","GLOBAL",1)~ JOURNAL #7995 FLAGS 64 EXTERN ~J#KLSYJ~ TOLGER35
END

APPEND J#KLSYJ
 IF ~~ THEN BEGIN TOLGER35
  SAY @1734 /* #75007 */
  IF ~!IsValidForPartyDialog("Korgan")~ THEN EXIT
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 219
END
END

ADD_TRANS_TRIGGER TOLGER 23 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 23
 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN DO ~SetGlobal("HiredByCowled","GLOBAL",1)~ JOURNAL #7995 FLAGS 64 EXTERN ~J#KLSYJ~ TOLGER35
END

ADD_TRANS_TRIGGER TOLGER 36 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 36
 IF ~IsValidForPartyDialog("J#Kelsey")~ THEN DO ~ReputationInc(-1)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)~ EXTERN ~J#KLSYJ~ TOLGER09
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TOLGER34
    SAY @1735 /* #76286 */
    IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXTERN TOLGER 37
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TOLGER09
    SAY @1735 /* #76286 */
    IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Mazzy")
OR(2)
!IsValidForPartyDialog("Aerie")
CheckStatGT(Player1,12,CHR)~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")~ EXTERN TOLGER 37
    IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Mazzy")
IsValidForPartyDialog("Aerie")
CheckStatLT(Player1,13,CHR)~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")~ EXTERN AERIEJ 58
    IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Mazzy")~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")~ EXTERN MAZZYJ 126
    IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")~ EXTERN KELDORJ 108
END
END

ADD_TRANS_TRIGGER TOLGER 80 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 80
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ TOLGER666
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TOLGER33
    SAY @1736
    IF ~~ THEN EXTERN TOLGER 2
  END
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN TOLGER666
    SAY @1737
    IF ~~ THEN EXTERN TOLGER 81
  END
END

ADD_TRANS_TRIGGER TOLGER 84 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 84
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN ~J#KLSYJ~ TOLGER34
END

ADD_TRANS_TRIGGER TOLGER 75 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM TOLGER 75
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN ~J#KLSYJ~ TOLGER33
END

ADD_TRANS_TRIGGER ~EDWIN~ 36 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM ~EDWIN~ 36
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ Hemlock1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN Hemlock1
    SAY @1738 /* #76275 */
  IF ~~ THEN EXTERN ~EDWIN~ 12
END
END

ADD_TRANS_TRIGGER ~RENAL~ 69 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM ~RENAL~ 69
  IF ~IsValidForPartyDialog("J#Kelsey")
OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN EXTERN J#KlsyJ Renal1
END

EXTEND_BOTTOM ~RENAL~ 69
  IF ~IsValidForPartyDialog("J#Kelsey")
!Global("J#KelseyRomanceActive","GLOBAL",1)
!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN EXTERN J#KLSYJ Renal2
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN Renal1
SAY @1739 =
@1740
IF ~ReputationGT(Player1,10)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @1741 EXTERN J#KLSYJ Renal1_1
IF ~ReputationGT(Player1,10)~ THEN REPLY @1742 EXTERN J#KLSYJ Renal1_1
IF ~ReputationGT(Player1,13)~ THEN REPLY @1743 EXTERN J#KLSYJ Renal1_2
IF ~~ THEN REPLY @1744 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXTERN J#KLSYJ Renal1_3
IF ~ReputationLT(Player1,11)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @1741 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXTERN J#KLSYJ Renal1_4
IF ~ReputationLT(Player1,11)~ THEN REPLY @1742 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXTERN J#KLSYJ Renal1_4
IF ~~ THEN REPLY @1745 EXTERN J#KLSYJ Renal1_5
IF ~ReputationLT(Player1,14)~ THEN REPLY @1743 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXTERN J#KLSYJ Renal1_4

END

IF ~~ THEN BEGIN Renal1_1
SAY @1746 =
@1747
COPY_TRANS RENAL 69
END

IF ~~ THEN BEGIN Renal1_2
SAY @1748
COPY_TRANS RENAL 69
END

IF ~~ THEN BEGIN Renal1_3
SAY @1749
COPY_TRANS RENAL 69
END

IF ~~ THEN BEGIN Renal1_4
SAY @1750 =
@1751
COPY_TRANS RENAL 69
END

IF ~~ THEN BEGIN Renal1_5
SAY @1752
IF ~~ THEN EXTERN RENAL 68
END

END



APPEND J#KLSYJ
IF ~~ THEN BEGIN Renal2
  SAY @1753 /* #76277 */
COPY_TRANS RENAL 69
END
END

ADD_TRANS_TRIGGER ~ARNMAN05~ 8 ~!IsValidForPartyDialog("J#Kelsey")~

EXTEND_BOTTOM ~ARNMAN05~ 8
  IF ~IsValidForPartyDialog("J#Kelsey")~ THEN EXTERN J#KLSYJ Arnman05_1
END

APPEND J#KLSYJ
  IF ~~ THEN BEGIN Arnman05_1
  SAY @1754 /* #76278 */
  IF ~~ THEN EXIT
 END
END



EXTEND_BOTTOM Player1 25
 IF ~IsValidForPartyDialog("J#Kelsey")
Global("J#KelseyDoneInHellThing","GLOBAL",0)~ THEN DO ~SetGlobal("J#KelseyDoneInHellThing","GLOBAL",1)~ EXTERN J#KlsyJ HellJon_1
 IF ~IsValidForPartyDialog("J#Kelsey")
G("J#KelseyRomanceActive",2)
Global("J#KelseyDoneInHellThing","GLOBAL",0)~ THEN DO ~SetGlobal("J#KelseyDoneInHellThing","GLOBAL",1)~ EXTERN J#KlsyJ HellJon_1romance

END

APPEND J#KLSYJ
 IF ~~ THEN BEGIN HellJon_1
    SAY @1755
COPY_TRANS PLAYER1 25
END

 IF ~~ THEN BEGIN HellJon_1romance
SAY @3601 = @3602
COPY_TRANS PLAYER1 25
END

END

///////////////////////////////////////////////////////////////////////
// Celvan

APPEND Celvan
  IF WEIGHT #-1 ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
RandomNum(2,1)
Global("J#CelvanKelsey","AR0300",0)~ THEN BEGIN CelvanKelsey_1
    SAY @1756
    IF ~~ THEN EXTERN J#KlsyJ CelvanKelsey_2
  END
END

APPEND J#KlsyJ
  IF ~~ THEN BEGIN CelvanKelsey_2
    SAY @1757
    IF ~~ THEN EXTERN Celvan CelvanKelsey_3
  END
END

APPEND Celvan
  IF ~~ THEN BEGIN CelvanKelsey_3
    SAY @1758
    IF ~~ THEN EXTERN J#KlsyJ CelvanKelsey_4
  END
END

APPEND J#KlsyJ
  IF ~~ THEN BEGIN CelvanKelsey_4
    SAY @1759
    IF ~~ THEN EXTERN Celvan CelvanKelsey_5
  END
END

APPEND Celvan
  IF ~~ THEN BEGIN CelvanKelsey_5
    SAY @1760
    IF ~~ THEN DO ~RunAwayFrom([PC],300)~ EXIT
  END
END



