/* This file contains the "cheat on Kelsey" sequence. */
/* MAKE SURE the flirt pack is compiled AFTER THIS.   */


APPEND ANOME25J

IF ~See(Player1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWAnomenTemptsPC","GLOBAL",2)~ THEN BEGIN acheat1_1
SAY @1
IF ~~ THEN REPLY @2 GOTO acheat1_2
IF ~~ THEN REPLY @3 GOTO acheat1_3
IF ~~ THEN REPLY @4 GOTO acheat1_2
IF ~~ THEN REPLY @5 GOTO acheat1_4
IF ~~ THEN REPLY @6 GOTO acheat1_5
END

IF ~~ THEN BEGIN acheat1_2
SAY @7
IF ~~ THEN GOTO acheat1_6
END

IF ~~ THEN BEGIN acheat1_3
SAY @8
IF ~~ THEN GOTO acheat1_6
END

IF ~~ THEN BEGIN acheat1_4
SAY @9
IF ~~ THEN GOTO acheat1_6
END

IF ~~ THEN BEGIN acheat1_5
SAY @10
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat1_6
SAY @11 = @12
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",3)
RestParty()~ EXIT
END


IF ~See(Player1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWAnomenTemptsPC","GLOBAL",4)~ THEN BEGIN acheat2_1
SAY @13
IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @14 GOTO acheat2_2
IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @15 GOTO acheat2_3
IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @16 GOTO acheat2_3
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @14 GOTO acheat2_16
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @15 GOTO acheat2_17
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @16 GOTO acheat2_17
END

IF ~~ THEN BEGIN acheat2_2
SAY @17
IF ~~ THEN GOTO acheat2_3
END

IF ~~ THEN BEGIN acheat2_3
SAY @18
IF ~~ THEN REPLY @19 GOTO acheat2_6
IF ~~ THEN REPLY @20 GOTO acheat2_5
IF ~~ THEN REPLY @21 GOTO acheat2_4
END

IF ~~ THEN BEGIN acheat2_4
SAY @22
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",5)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_5
SAY @23 = @24
IF ~~ THEN REPLY @25 GOTO acheat2_6
IF ~~ THEN REPLY @26 GOTO acheat2_4
IF ~~ THEN REPLY @27 GOTO acheat2_4
END

IF ~~ THEN BEGIN acheat2_6
SAY @28
IF ~~ THEN REPLY @29 GOTO acheat2_10
IF ~~ THEN REPLY @30 GOTO acheat2_9
IF ~~ THEN REPLY @31 GOTO acheat2_8
IF ~~ THEN REPLY @32 GOTO acheat2_7
END

IF ~~ THEN BEGIN acheat2_7
SAY @33
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",5)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_8
SAY @34
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",5)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_9
SAY @35
IF ~~ THEN GOTO acheat2_11
END

IF ~~ THEN BEGIN acheat2_10
SAY @36
IF ~~ THEN GOTO acheat2_11
END

IF ~~ THEN BEGIN acheat2_11
SAY @37
IF ~~ THEN REPLY @38 GOTO acheat2_8
IF ~~ THEN REPLY @39 GOTO acheat2_13
IF ~~ THEN REPLY @40 GOTO acheat2_12
IF ~Alignment("Anomen",LAWFUL_GOOD)~ THEN REPLY @41 GOTO acheat2_12
IF ~!Alignment("Anomen",LAWFUL_GOOD)~ THEN REPLY @41 GOTO acheat2_15
END

IF ~~ THEN BEGIN acheat2_12
SAY @42
IF ~~ THEN GOTO acheat2_8
END

IF ~~ THEN BEGIN acheat2_13
SAY @43
IF ~Alignment("Anomen",LAWFUL_GOOD) CheckStatGT(Player1,13,CHR)~ THEN REPLY @44 GOTO acheat2_15
IF ~Alignment("Anomen",LAWFUL_GOOD) CheckStatLT(Player1,14,CHR)~ THEN REPLY @44 GOTO acheat2_12
IF ~!Alignment("Anomen",LAWFUL_GOOD)~ THEN REPLY @44 GOTO acheat2_14
IF ~~ THEN REPLY @45 GOTO acheat2_7
END

IF ~~ THEN BEGIN acheat2_14
SAY @46
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",6)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_15
SAY @47
IF ~~ THEN REPLY @48 GOTO acheat2_14
IF ~~ THEN REPLY @49 GOTO acheat2_8
IF ~~ THEN REPLY @50 GOTO acheat2_14
END

IF ~~ THEN BEGIN acheat2_16
SAY @51
IF ~~ THEN GOTO acheat2_17
END

IF ~~ THEN BEGIN acheat2_17
SAY @52
IF ~~ THEN REPLY @53 GOTO acheat2_19
IF ~~ THEN REPLY @26 GOTO acheat2_18
IF ~~ THEN REPLY @27 GOTO acheat2_18
END

IF ~~ THEN BEGIN acheat2_18
SAY @54
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",5)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_19
SAY @55 = @56
IF ~~ THEN REPLY @32 GOTO acheat2_20
IF ~~ THEN REPLY @57 GOTO acheat2_20
IF ~~ THEN REPLY @39 GOTO acheat2_21
IF ~~ THEN REPLY @40 GOTO acheat2_22
IF ~~ THEN REPLY @41 GOTO acheat2_23
END

IF ~~ THEN BEGIN acheat2_20
SAY @58
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",5)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN acheat2_21
SAY @59
IF ~~ THEN GOTO acheat2_24
END

IF ~~ THEN BEGIN acheat2_22
SAY @60
IF ~~ THEN GOTO acheat2_24
END

IF ~~ THEN BEGIN acheat2_23
SAY @61
IF ~~ THEN GOTO acheat2_24
END

IF ~~ THEN BEGIN acheat2_24
SAY @62
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",6)
RestParty()~ EXIT
END

IF ~Global("FWAnomenTemptsPC","GLOBAL",7)
See(Player1)
RealGlobalTimerExpired("FWAnomenBreakupTimer","GLOBAL")~ THEN BEGIN acheat_breakup
SAY @110 = @111 = @112
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)~ EXIT
END

END


APPEND J#KLS25J

IF ~RealGlobalTimerExpired("FWAnomenCheatTimer","GLOBAL")
InParty("Anomen")
See("Anomen")
Global("FWKelseyStompedOff","LOCALS",0)~ THEN BEGIN kcheatstompoff
SAY @109
IF ~~ THEN DO ~SetGlobal("FWKelseyStompedOff","LOCALS",1)
SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END


IF ~See(Player1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWAnomenTemptsPC","GLOBAL",5)~ THEN BEGIN kcheat1_1
SAY @63 = @64
IF ~~ THEN REPLY @65 DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)~ GOTO kcheat1_2
IF ~~ THEN REPLY @66 DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)~ GOTO kcheat1_3
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @67 DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)~ GOTO kcheat1_4
IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @68 DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",8)~ GOTO kcheat1_5
END

IF ~~ THEN BEGIN kcheat1_2
SAY @69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kcheat1_3
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kcheat1_4
SAY @71
IF ~~ THEN GOTO kcheat1_2
END

IF ~~ THEN BEGIN kcheat1_5
SAY @72
IF ~~ THEN EXIT
END

IF ~See(Player1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWAnomenTemptsPC","GLOBAL",6)~ THEN BEGIN kcheat2_1
SAY @73
IF ~~ THEN REPLY ~Kelsey--~ GOTO kcheat2_2
END

IF ~~ THEN BEGIN kcheat2_2
SAY @74 = @75 = @76 = @77 = @78 = @79
IF ~~ THEN REPLY @80 GOTO kcheat2_3
IF ~~ THEN REPLY @81 GOTO kcheat2_5a
IF ~~ THEN REPLY @82 GOTO kcheat2_4
IF ~~ THEN REPLY @83 GOTO kcheat2_6
END

IF ~~ THEN BEGIN kcheat2_3
SAY @84 = @85
IF ~~ THEN DO ~SetGlobal("J#KickedOut","LOCALS",2)
SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWAnomenTemptsPC","GLOBAL",7)
RealSetGlobalTimer("FWAnomenBreakupTimer","GLOBAL",1000)
LeaveParty()
ReallyForceSpell(Myself,WIZARD_SUN_FIRE)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN kcheat2_4
SAY @86
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @87 GOTO kcheat2_6
IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @87 GOTO kcheat2_7
IF ~~ THEN REPLY @88 GOTO kcheat2_5
IF ~~ THEN REPLY @89 GOTO kcheat2_3
IF ~~ THEN REPLY @90 GOTO kcheat2_8
END

IF ~~ THEN BEGIN kcheat2_5
SAY @91
IF ~~ THEN GOTO kcheat2_5a
END

IF ~~ THEN BEGIN kcheat2_5a
SAY @92 = @93 = @94 = @95 = @96 = @97
IF ~~ THEN GOTO kcheat2_9
END

IF ~~ THEN BEGIN kcheat2_6
SAY @98
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ GOTO kcheat2_9
END

IF ~~ THEN BEGIN kcheat2_7
SAY @99
IF ~~ THEN DO
~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWAnomenTemptsPC","GLOBAL",7)
RealSetGlobalTimer("FWAnomenBreakupTimer","GLOBAL",1000)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN kcheat2_8
SAY @100
IF ~~ THEN GOTO kcheat2_7
END

IF ~~ THEN BEGIN kcheat2_9
SAY @101
IF ~~ THEN REPLY @102 GOTO kcheat2_10
IF ~~ THEN REPLY @103 GOTO kcheat2_11
IF ~~ THEN REPLY @104 GOTO kcheat2_12
IF ~!InParty("Anomen")~ THEN REPLY @105 GOTO kcheat2_10
END

IF ~~ THEN BEGIN kcheat2_10
SAY @106
IF ~~ THEN DO ~SetGlobal("FWAnomenTemptsPC","GLOBAL",7)
RealSetGlobalTimer("FWAnomenBreakupTimer","GLOBAL",1000)
RealSetGlobalTimer("FWAnomenCheatTimer","GLOBAL",500)~ EXIT
END

IF ~~ THEN BEGIN kcheat2_11
SAY @107
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWAnomenTemptsPC","GLOBAL",7)
RealSetGlobalTimer("FWAnomenBreakupTimer","GLOBAL",1000)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN kcheat2_12
SAY @108
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWAnomenTemptsPC","GLOBAL",7)
RealSetGlobalTimer("FWAnomenBreakupTimer","GLOBAL",1000)
LeaveParty()
EscapeArea()~ EXIT
END


END




