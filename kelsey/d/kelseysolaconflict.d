/* Creates Kelsey objections after Solaufein's "Hold my hand, baby" talk, #12, and then Kelsey breaks up with the PC if
she hasn't broken up with Solaufein by the end of Solaufein's talk #14. Cheat on Kelsey with the drow no longer!
*/

APPEND J#KLSYJ

IF WEIGHT #-2 ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWKelseyObjectsSolaufein","LOCALS",0)~
THEN BEGIN postsola12_1
SAY @100
IF ~~ THEN REPLY @101 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
IF ~~ THEN REPLY @102 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_3
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)~ THEN REPLY @103 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_4
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN REPLY @103 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_5
IF ~~ THEN REPLY @104 GOTO postsola12_6
END

IF ~~ THEN BEGIN postsola12_6
SAY @105
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ GOTO postsola12_6_1
END

IF ~~ THEN BEGIN postsola12_6_1
SAY @106
IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola12_2
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_3
SAY @108 =
@109
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_4
SAY @110 =
@111
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_5
SAY @112 =
@113 IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWKelseyObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @114
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWKelseyObjectsSolaufein","LOCALS",3)~ GOTO postsola14_2
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWKelseyObjectsSolaufein","LOCALS",3)~ GOTO postsola12_6_1
END

IF ~~ THEN BEGIN postsola14_2
SAY @115
IF ~~ THEN EXIT
END

END


