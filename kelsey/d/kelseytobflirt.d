// RE-RECORD FWKLSYJ0

// FWKFLTxx


APPEND J#KLS25J

IF
~Global("FWDisableFlirts","GLOBAL",0)
!G("FWWaitForAnomenToLeave",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKelseyStartFlirt","GLOBAL",1)~
THEN BEGIN kelseyinitflirtbase
SAY @0

 IF ~~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinithand
 IF ~RandomNum(21,1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinithand
 IF ~RandomNum(21,2)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitshoulders
 IF ~RandomNum(21,3)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitears
 IF ~RandomNum(21,4)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitboobs
 IF ~RandomNum(21,5)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinithair
 IF ~RandomNum(21,6)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitspine
 IF ~RandomNum(21,7)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitrubup
 IF ~RandomNum(21,8)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitpinch
 IF ~RandomNum(21,9)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitkiss
 IF ~RandomNum(21,10)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitlove
 IF ~RandomNum(21,11)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitstare
 IF ~RandomNum(21,12)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinitscratch
 IF ~RandomNum(21,13)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinithips
 IF ~RandomNum(21,14) Global("FWKelseyBaby","GLOBAL",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseytouchbaby
 IF ~RandomNum(21,15) Global("FWKelseyBaby","GLOBAL",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseytouchbaby2
 IF ~RandomNum(21,16) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyhighrep
 IF ~RandomNum(21,17) HPLT("J#Kelsey",40)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseylowhp
 IF ~RandomNum(21,18)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO reassuring
 IF ~RandomNum(21,19)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO cutapple
 IF ~RandomNum(21,20)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO pullsarm
 IF ~RandomNum(21,21) Global("FWWillMarryKelsey","GLOBAL",1) !HasItem("FWRing01",Player1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO nohavering
 IF ~RandomNum(21,21) HasItem("FWRing01",Player1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO havering
 IF ~RandomNum(21,21) HasItemEquiped("FWRing01",Player1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO twistring

 IF ~HasItemEquiped("FWRing01",Player1) Global("FWDidKelseyRingTwist","LOCALS",0)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidKelseyRingTwist","LOCALS",1)~ GOTO twistring


IF ~HPLT("J#Kelsey",40) Global("FWKelseyDidLowHPFlirt","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyDidLowHPFlirt","LOCALS",0) IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseylowhp

IF ~GlobalGT("FWKelseyRandFlirt","LOCALS",15) Global("FWKelseyDryadTwo","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyDryadTwo","LOCALS",1) IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseydryad2
IF ~GlobalGT("FWKelseyRandFlirt","LOCALS",10) Global("FWKelseynoprice","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseynoprice","LOCALS",1) IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseynoprice
IF ~GlobalGT("FWKelseyRandFlirt","LOCALS",10) Global("FWKelseyCherryFlirt","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyCherryFlirt","LOCALS",1) IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseycherries
IF ~Global("FWKelseyRandFlirt","LOCALS",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseyinvisflirt
IF ~Global("FWKelseyRandFlirt","LOCALS",0)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO kelseychocolateflirt

END

IF ~~ twistring
SAY @1070 = @1071
IF ~~ EXIT
END

IF ~~ havering
SAY @1072 = @1073
IF ~~ EXIT
END

IF ~~ nohavering
SAY @1072 = @1074
IF ~~ EXIT
END


IF ~~ kelseydryad2
SAY @1000
IF ~~ EXIT
END

IF ~~ THEN BEGIN pullsarm
SAY @3251 = @3252
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN cutapple
SAY @3237 = @3238
IF ~~ THEN REPLY @3239 GOTO cutapple_1
IF ~~ THEN REPLY @3240 GOTO cutapple_2
IF ~~ THEN REPLY @3241 GOTO cutapple_3
IF ~~ THEN REPLY @3242 GOTO cutapple_4
END

IF ~~ THEN BEGIN cutapple_1
SAY @3243
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cutapple_2
SAY @3244
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cutapple_3
SAY @3245 = @3246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cutapple_4
SAY @3247
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN reassuring
SAY @3234 = @3235 = @3236
IF ~~ THEN EXIT
END


IF ~~ kelseyhighrep
SAY @1001
= @1002
IF ~~ EXIT
END

IF ~~ kelseylowhp
SAY @1003
= @1004
IF ~~ EXIT
END

IF ~~ kelseynoprice
SAY @1005
= @1006
IF ~~ EXIT
END




IF ~~ kelseytouchbaby
SAY @1007
= @1008
IF ~~ EXIT
END

IF ~~ kelseytouchbaby2
SAY @1009
IF ~~ EXIT
END


IF ~~ kelseycherries
SAY @1010
= @1011
++ @1012 + haventtime
++ @1013 + openmouth
++ @1014 + wrenchhand
END

IF ~~ haventtime
SAY @1015
IF ~~ EXIT
END

IF ~~ wrenchhand
SAY @1016
= @1017
END

IF ~~ openmouth
SAY @1018
= @1019
= @1020
++ @1021 + spitathim
++ @1022 + cherrykiss
++ @1023 + moreplease
++ @1024 + cherrythanks
++ @1025 + cloudberries
END

IF ~~ spitathim
SAY @1026
= @1027
IF ~~ GOTO givecherries
END

IF ~~ cherrykiss
SAY @1028
= @1029
IF ~~ GOTO givecherries
END

IF ~~ moreplease
SAY @1030
= @1031
IF ~~ GOTO givecherries
END

IF ~~ cherrythanks
SAY @1032
IF ~~ GOTO givecherries
END

IF ~~ cloudberries
SAY @1033
IF ~~ GOTO givecherries
END

IF ~~ givecherries
SAY @1034
IF ~~ EXIT
END

IF ~~ THEN BEGIN kelseyinithips
SAY @1 = @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitscratch
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitpinch
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitstare
SAY @5
IF ~~ THEN REPLY @6 GOTO kelseyinitstare_2
IF ~~ THEN REPLY @7 GOTO kelseyinitstare_3
IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN kelseyinitstare_2
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitstare_3
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitlove
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitkiss
SAY @12 = @13
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseyinitrubup
SAY @14
IF ~~ THEN EXIT
END





IF ~~ THEN BEGIN kelseyinitspine
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinithair
SAY @16
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN kelseyinitboobs
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinithand
SAY @18
= @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitshoulders
SAY @20
= @21
= @22 = @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyinitears
SAY @24
= @25
IF ~~ THEN EXIT
END



/*
IF ~~ THEN BEGIN kelseysingflirt
SAY ~Sing here.~
IF ~~ THEN EXIT
END
*/

IF ~~ THEN BEGIN kelseyinvisflirt
SAY @26
= @27
= @28
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseychocolateflirt
SAY @29 = @30
= @31
IF ~~ THEN EXIT
END




IF
~Global("FWDisableFlirts","GLOBAL",0)
!G("FWWaitForAnomenToLeave",1)
IsGabber(Player1)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",2)~
THEN BEGIN FWFLIRTBASE1
SAY @32  =
@33

 IF ~RandomNum(4,1)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @34 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYEVENING1
 IF ~RandomNum(4,2)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @34 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYEVENING2
 IF ~RandomNum(4,3)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @34 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYEVENING3
 IF ~RandomNum(4,4)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @34 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYEVENING4

 IF ~!Global("J#KelseyNookie","GLOBAL",1)
GlobalGT("FWExpLoveTalk","LOCALS",6)~ THEN REPLY @38 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYSLEEP1

 IF ~RandomNum(4,1)~ THEN REPLY @39 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyhandskiss1
 IF ~RandomNum(4,2)~ THEN REPLY @39 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyhandskiss2
 IF ~RandomNum(4,3)~ THEN REPLY @39 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyhandskiss1
 IF ~RandomNum(4,4)~ THEN REPLY @39 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyhandskiss2

 IF ~RandomNum(4,1)~ THEN REPLY @43 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyrobes1
 IF ~RandomNum(4,2)~ THEN REPLY @43 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyrobes2
 IF ~RandomNum(4,3)~ THEN REPLY @43 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyrobes3
 IF ~RandomNum(4,4)~ THEN REPLY @43 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyrobes1


 IF ~RandomNum(4,1)~ THEN REPLY @47 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYDKISS1
 IF ~RandomNum(4,2)~ THEN REPLY @47 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYDKISS2
 IF ~RandomNum(4,3)~ THEN REPLY @47 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYDKISS3
 IF ~RandomNum(4,4)~ THEN REPLY @47 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYDKISS4
 IF ~RandomNum(4,1)~ THEN REPLY @51 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHANDS1
 IF ~RandomNum(4,2)~ THEN REPLY @51 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHANDS2
 IF ~RandomNum(4,3)~ THEN REPLY @51 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHANDS3
 IF ~RandomNum(4,4)~ THEN REPLY @51 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHANDS4

 IF ~RandomNum(4,1)~ THEN REPLY @55 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseylink1
 IF ~RandomNum(4,2)~ THEN REPLY @55 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseylink2
 IF ~RandomNum(4,3)~ THEN REPLY @55 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseylink1
 IF ~RandomNum(4,4)~ THEN REPLY @55 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseylink2

 IF ~RandomNum(4,1)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO breast1
 IF ~RandomNum(4,2)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO breast2
 IF ~RandomNum(4,3)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO breast2
 IF ~RandomNum(4,4)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO breast3

 IF ~OR(2) AreaCheck("AR5003") AreaCheck("AR5501")~ THEN REPLY @59 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyfootsie1

 IF ~InParty("Viconia") RandomNum(4,1)~ THEN REPLY @60 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyviconia1
 IF ~InParty("Viconia") RandomNum(4,2)~ THEN REPLY @60 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyviconia2
 IF ~InParty("Viconia") RandomNum(4,3)~ THEN REPLY @60 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyviconia1
 IF ~InParty("Viconia") RandomNum(4,4)~ THEN REPLY @60 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyviconia2

 IF ~InParty("Imoen2") Global("FWImoenStare","LOCALS",0)~ THEN REPLY @3255 DO ~SetGlobal("FWImoenStare","LOCALS",1) IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO imorear

 IF ~RandomNum(4,1)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO strokeface1
 IF ~RandomNum(4,2)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO strokeface2
 IF ~RandomNum(4,3)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO strokeface3
 IF ~RandomNum(4,4)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO strokeface3

 IF ~RandomNum(4,1)~ THEN REPLY @64 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyholdback1
 IF ~RandomNum(4,2)~ THEN REPLY @64 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyholdback2
 IF ~RandomNum(4,3)~ THEN REPLY @64 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyholdback3
 IF ~RandomNum(4,4)~ THEN REPLY @64 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyholdback4

 IF ~RandomNum(4,1)~ THEN REPLY @68 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseygrab1
 IF ~RandomNum(4,2)~ THEN REPLY @68 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseygrab2
 IF ~RandomNum(4,3)~ THEN REPLY @68 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseygrab3
 IF ~RandomNum(4,4)~ THEN REPLY @68 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseygrab1

 IF ~RandomNum(4,1) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @72 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseypanties1
 IF ~RandomNum(4,2) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @72 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseypanties2
 IF ~RandomNum(4,3) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @72 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseypanties1
 IF ~RandomNum(4,4) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @72 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseypanties2

 IF ~RandomNum(4,1) Areatype(OUTDOOR)~ THEN REPLY @76 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~  GOTO kelseystraddle1
 IF ~RandomNum(4,2) Areatype(OUTDOOR)~ THEN REPLY @76 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseystraddle2
 IF ~RandomNum(4,3) Areatype(OUTDOOR)~ THEN REPLY @76 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseystraddle1
 IF ~RandomNum(4,4) Areatype(OUTDOOR)~ THEN REPLY @76 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseystraddle2

 IF ~RandomNum(4,1)~ THEN REPLY @80 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseythigh1
 IF ~RandomNum(4,2)~ THEN REPLY @80 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseythigh2
 IF ~RandomNum(4,3)~ THEN REPLY @80 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseythigh1
 IF ~RandomNum(4,4)~ THEN REPLY @80 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseythigh2

 IF ~RandomNum(4,1)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO cleavage1
 IF ~RandomNum(4,2)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO cleavage2
 IF ~RandomNum(4,3)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO cleavage4
 IF ~RandomNum(4,4)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO cleavage5


 IF ~RandomNum(4,1)~ THEN REPLY @84 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyneck1
 IF ~RandomNum(4,2)~ THEN REPLY @84 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyneck1
 IF ~RandomNum(4,3)~ THEN REPLY @84 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyneck2
 IF ~RandomNum(4,4)~ THEN REPLY @84 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyneck3

 IF ~RandomNum(4,1)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO blowear5
 IF ~RandomNum(4,2)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO blowear2
 IF ~RandomNum(4,3)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO blowear4
 IF ~RandomNum(4,4)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO blowear6

 IF ~RandomNum(4,1)~ THEN REPLY @88 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyear1
 IF ~RandomNum(4,2)~ THEN REPLY @88 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyear2
 IF ~RandomNum(4,3)~ THEN REPLY @88 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyear3
 IF ~RandomNum(4,4)~ THEN REPLY @88 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyear4
 IF ~RandomNum(4,1)~ THEN REPLY @92 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYREAR1
 IF ~RandomNum(4,2)~ THEN REPLY @92 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYREAR2
 IF ~RandomNum(4,3)~ THEN REPLY @92 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYREAR3
 IF ~RandomNum(4,4)~ THEN REPLY @92 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYREAR3
 IF ~RandomNum(4,1)~ THEN REPLY @96 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYTICKLE1
 IF ~RandomNum(4,2)~ THEN REPLY @96 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYTICKLE2
 IF ~RandomNum(4,3)~ THEN REPLY @96 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYTICKLE3
 IF ~RandomNum(4,4)~ THEN REPLY @96 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYTICKLE3
 IF ~RandomNum(4,1)~ THEN REPLY @100 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHUG1
 IF ~RandomNum(4,2)~ THEN REPLY @100 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHUG2
 IF ~RandomNum(4,3)~ THEN REPLY @100 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHUG3
 IF ~RandomNum(4,4)~ THEN REPLY @100 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYHUG4
 IF ~RandomNum(4,1)~ THEN REPLY @104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYRUBHIM1
 IF ~RandomNum(4,2)~ THEN REPLY @104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYRUBHIM2
 IF ~RandomNum(4,3)~ THEN REPLY @104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYRUBHIM3
 IF ~RandomNum(4,4)~ THEN REPLY @104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYRUBHIM4
 IF ~RandomNum(4,1)~ THEN REPLY @108 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYLOVE1
 IF ~RandomNum(4,2)~ THEN REPLY @108 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYLOVE2
 IF ~RandomNum(4,3)~ THEN REPLY @108 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYLOVE3
 IF ~RandomNum(4,4)~ THEN REPLY @108 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO KELSEYLOVE4

 IF ~RandomNum(4,1) Global("FWKelseyBaby","GLOBAL",1) Global("FWKelseyDidBabyFlirt","LOCALS",1)~ THEN REPLY @1035 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseybabyflirt2
 IF ~RandomNum(4,2) Global("FWKelseyBaby","GLOBAL",1) Global("FWKelseyDidBabyFlirt","LOCALS",1)~ THEN REPLY @1035 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseybabyflirt2
 IF ~RandomNum(4,3) Global("FWKelseyBaby","GLOBAL",1) Global("FWKelseyDidBabyFlirt","LOCALS",1)~ THEN REPLY @1035 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseybabyflirt3
 IF ~RandomNum(4,4) Global("FWKelseyBaby","GLOBAL",1) Global("FWKelseyDidBabyFlirt","LOCALS",1)~ THEN REPLY @1035 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseybabyflirt4
 IF ~RandomNum(4,1) Global("FWKelseyBaby","GLOBAL",1) Global("FWKelseyDidBabyFlirt","LOCALS",0)~ THEN REPLY @1035 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1) SetGlobal("FWKelseyDidBabyFlirt","LOCALS",1)~ GOTO kelseybabyflirt1

 IF ~RandomNum(4,1)~ THEN REPLY @1036 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyregard1
 IF ~RandomNum(4,2)~ THEN REPLY @1036 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyregard2
 IF ~RandomNum(4,3)~ THEN REPLY @1036 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyregard3
 IF ~RandomNum(4,4)~ THEN REPLY @1036 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO kelseyregard4

  IF ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath1

 IF ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath2

 IF ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath4

 IF ~RandomNum(4,1)
AreaCheck("AR6400")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,2)
AreaCheck("AR6400")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,3)
AreaCheck("AR6400")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,4)
AreaCheck("AR6400")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath4

 IF ~~ THEN REPLY @112 DO ~SetGlobal("FWKelseyStartFlirt","GLOBAL",99)~ EXIT
 IF ~~ THEN REPLY @113 EXIT
END

IF ~~ imorear
SAY @3256
IF ~~ EXIT
END

IF ~~ kelseyneck3
SAY @3253
IF ~~ EXIT
END

IF ~~ kelseyholdback4
SAY @3254
IF ~~ EXIT
END

IF ~~ THEN BEGIN cleavage1
SAY @3085
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage2
SAY @3086 = @3087
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage4
SAY @3159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage5
SAY @3160 = @3161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strokeface1
SAY @3043 = @3044
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strokeface2
SAY @3045
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strokeface3
SAY @3046
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN blowear2
SAY @3071
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear4
SAY @3072 = @3073 = @3075
IF ~~ THEN REPLY @3076 GOTO blowear4_1
IF ~~ THEN REPLY @3078 GOTO blowear4_2
IF ~~ THEN REPLY @3080 GOTO blowear4_3
IF ~~ THEN REPLY @3082 GOTO blowear4_4
END

IF ~~ THEN BEGIN blowear4_1
SAY @3077
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear4_2
SAY @3079
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear4_3
SAY @3081
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear4_4
SAY @3083
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear5
SAY @3157
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear6
SAY @3072 = @3073 = @3158
IF ~~ THEN EXIT
END



IF ~~ innbath4
SAY @1037
= @1038
= @1039
= @1040
= @1041
= @1042
= @1043
= @1044
= @1045
= @1046
= @1047
= @1048
IF ~~ GOTO innbath4_2
IF ~Global("FWKelseyBathgasm","LOCALS",0)~ THEN DO ~SetGlobal("FWKelseyBathgasm","LOCALS",1)~ GOTO innbath4_1
END

IF ~~ THEN BEGIN breast1
SAY @3111
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breast2
SAY @3112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breast3
SAY @3113 = @3114
IF ~~ THEN EXIT
END


IF ~~ innbath4_1
SAY @1049
IF ~~ EXIT
END

IF ~~ innbath4_2
SAY @1050
IF ~~ EXIT
END

IF ~~ streambath4
SAY @1051
= @1052
= @1053
= @1054
= @1055
= @1056
= @1057
= @1058
= @1059
IF ~~ EXIT
END

IF ~~ THEN BEGIN innbath1
SAY @3116
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @3117 = @3118 = @3119 = @3120
= @3121 = @3122 = @3123 = @3124
= @3125 = @3126 = @3127
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3
SAY @3128 = @3129 = @3130 = @3131 = @3132 = @3133 = @3134 = @3135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath1
SAY @3143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @3144 = @3145 = @3146 = @3147 = @3148 = @3149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath3
SAY @3150 = @3151 = @3152 = @3153 = @3154 = @3155 = @3156
IF ~~ THEN EXIT
END


IF ~~ kelseyregard1
SAY @1060
= @1061
IF ~~ EXIT
END

IF ~~ kelseyregard2
SAY @1062
IF ~~ EXIT
END

IF ~~ kelseyregard3
SAY @1063
IF ~~ EXIT
END

IF ~~ kelseyregard4
SAY @1064
= @1065
IF ~~ EXIT
END

IF ~~ kelseybabyflirt1
SAY @1066
IF ~~ EXIT
END

IF ~~ kelseybabyflirt2
SAY @1067
IF ~~ EXIT
END

IF ~~ kelseybabyflirt3
SAY @1068
IF ~~ EXIT
END

IF ~~ kelseybabyflirt4
SAY @1069
IF ~~ EXIT
END


IF ~~ THEN BEGIN kelseyneck1
SAY @114 = @115
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyneck2
SAY @116
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseythigh1
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseythigh2
SAY @118
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseygrab1
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseygrab2
SAY @120
= @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseygrab3
SAY @122 = @123
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyrobes1
SAY @124
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyrobes2
SAY @125  =
@126
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyrobes3
SAY @127
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN kelseyhandskiss1
SAY @128 = @129 = @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyhandskiss2
SAY @131 = @132 = @133
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyviconia1
SAY @134 = @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyviconia2
SAY @136  = @137
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseyfootsie1
SAY @138 = @139 = @140
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseystraddle1
SAY @141 = @142  = @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseystraddle2
SAY @144 = @145
= @146
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseypanties1
SAY @147 = @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseypanties2
SAY @149 = @150
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kelseyholdback1
SAY @151 = @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyholdback2
SAY @153 = @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyholdback3
SAY @155 = @156
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN kelseylink1
SAY @157 = @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylink2
SAY @159 = @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyear1
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyear2
SAY @162 = @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyear3
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseyear4
SAY @165 = @166
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS1
SAY @167
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS2
SAY @168
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS3
SAY @169
IF ~~ THEN REPLY @170 GOTO KELSEYHANDS3_1
IF ~~ THEN REPLY @171 GOTO KELSEYHANDS3_2
IF ~~ THEN REPLY @172 GOTO KELSEYHANDS3_3
END


IF ~~ THEN BEGIN KELSEYHANDS3_1
SAY @173
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS3_2
SAY @174
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS3_3
SAY @175
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHANDS4
SAY @176
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYREAR1
SAY @177
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYREAR2
SAY @178
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYREAR3
SAY @179
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYTICKLE3
SAY @180
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYTICKLE1
SAY @181
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYTICKLE2
SAY @182
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG1
SAY @183 = @184
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG2
SAY @185 = @186 =
@187
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG3
SAY @188
IF ~~ THEN REPLY @189 GOTO KELSEYHUG3_1
IF ~~ THEN REPLY @190 GOTO KELSEYHUG3_1
IF ~~ THEN REPLY @191 GOTO KELSEYHUG3_2
IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @192 GOTO KELSEYHUG3_3
IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @192 GOTO KELSEYHUG3_4

END


IF ~~ THEN BEGIN KELSEYHUG3_1
SAY @194 =
@195
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG3_2
SAY @196
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG3_3
SAY @197
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG3_4
SAY @198
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYHUG4
SAY @199
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSWEET1
SAY @200
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSWEET2
SAY @201
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSWEET3
SAY @202  =
@203
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSWEET4
SAY @204 = @205
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN KELSEYRUBHIM1
SAY @206 = @207
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN KELSEYRUBHIM2
SAY @208  = @209
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYRUBHIM3
SAY @210
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYRUBHIM4
SAY @211 = @212
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYEVENING1
SAY @213
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYEVENING2
SAY @214
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYEVENING3
SAY @215 =
@216
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYEVENING4
SAY @217 = @218
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN KELSEYDKISS1
SAY @219 =
@220
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell(Player1,WIZARD_RESIST_FEAR)~ EXIT
END


IF ~~ THEN BEGIN KELSEYDKISS2
SAY @221
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYDKISS3
SAY @222 =
@223
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYDKISS4
SAY @224 =
@225
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN KELSEYLOVE1
SAY @226
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYLOVE2
SAY @227
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYLOVE3
SAY @228
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell(Player1,WIZARD_RESIST_FEAR)~ EXIT
END

IF ~~ THEN BEGIN KELSEYLOVE4
SAY @229
IF ~~ THEN GOTO KELSEYLOVE1
END



IF ~~ THEN BEGIN KELSEYSLEEP1
SAY @230
IF ~~ THEN REPLY @231 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseyTOBMornAfter","LOCALS",1)~ GOTO KELSEYSLEEP2
IF ~~ THEN REPLY @232 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseyTOBMornAfter","LOCALS",1)~ GOTO KELSEYSLEEP2
IF ~~ THEN REPLY @233 GOTO KELSEYSLEEP3
IF ~~ THEN REPLY @234 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseyTOBMornAfter","LOCALS",1)~ GOTO KELSEYSLEEP4
END


IF ~~ THEN BEGIN KELSEYSLEEP2
SAY @235  = @236
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSLEEP3
SAY @237  =
@238
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KELSEYSLEEP4
SAY @239  =
@236
IF ~~ THEN EXIT
END

END


/*
IF WEIGHT
~Global("FWDisableFlirts","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",3)~ THEN BEGIN FWFLIRTBASE3
SAY ~Forget it, <CHARNAME>. It's over between us. Just... just stay away.~
IF ~~ THEN EXIT
END
*/

/*
ReallyForceSpellNoDec("J#Kelsey",WIZARD_RESIST_FEAR)
ReallyForceSpell()
ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR) or WIZARD_LUCK
*/
