/* This is Ascension-specific content for Kelsey-TOB. It should work with WeiDU Ascension. */


INTERJECT_COPY_TRANS FINBODH 24 FWkintbodhi24
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")
OR(2)
GlobalGT("J#KelseyVampire","GLOBAL",0)
!Global("FWImoenRomanceActive","GLOBAL",0)~ THEN @1
== J#KLS25J IF ~IsValidForPartyDialog("J#Kelsey")
GlobalGT("J#KelseyVampire","GLOBAL",0)~ THEN @2
END

INTERJECT_COPY_TRANS FINMEL01 15 FWkintfinmel15
== J#KLS25J IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN @5
== FINMEL01 IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN @6
END

INTERJECT_COPY_TRANS FINMEL01 20 FWkintfinmel15
== J#KLS25J IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN @5
== FINMEL01 IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN @6
END


EXTEND_BOTTOM IMOEN25P 7
IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1) Global("FWKelseyDidImoenAsc","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyDidImoenAsc","LOCALS",1)~ EXTERN J#KLS25J ohimoen
END

EXTEND_BOTTOM IMOEN25P 12
IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN EXTERN J#KLS25J seeyou
END

EXTEND_BOTTOM IMOEN25P 13
IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN EXTERN J#KLS25J seeyou
END

EXTEND_BOTTOM IMOEN25P 14
IF ~InParty("J#Kelsey") !Dead("J#Kelsey") GlobalGT("FWImoenRomanceActive","GLOBAL",1)~ THEN EXTERN J#KLS25J seeyou
END




APPEND J#KLS25J
IF ~~ THEN BEGIN ohimoen
SAY @3
IF ~~ THEN EXTERN IMOEN25P ohimoen2
END

IF ~~ THEN BEGIN seeyou
SAY @7
IF ~~ THEN EXTERN IMOEN25P seeyou2
END

END

APPEND IMOEN25P
IF ~~ THEN BEGIN ohimoen2
SAY @4
COPY_TRANS IMOEN25P 7
END

IF ~~ THEN BEGIN seeyou2
SAY @8
IF ~~ THEN DO ~SetGlobal("ImoenEpilogueAnyway","GLOBAL",1)
DropInventory()
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

END

