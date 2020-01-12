/* Creates Kelsey objections after Solaufein's "Hold my hand, baby" talk, #12, and then Kelsey breaks up with the PC if
she hasn't broken up with Solaufein by the end of Solaufein's talk #14. Cheat on Kelsey with the drow no longer!
*/

APPEND J#KLS25J

IF WEIGHT #2 ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWKelseyObjectsSolaufein","LOCALS",0)~
THEN BEGIN postsola12_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_3
IF ~~ THEN REPLY @3 DO ~SetGlobal("FWKelseyObjectsSolaufein","LOCALS",1)~ GOTO postsola12_5
IF ~~ THEN REPLY @4 GOTO postsola12_6
END

IF ~~ THEN BEGIN postsola12_6
SAY @5
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ GOTO postsola12_6_1
END

IF ~~ THEN BEGIN postsola12_6_1
SAY @6
IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola12_2
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_3
SAY @8 =
@9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_5
SAY @10 =
@11 IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWKelseyObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @12
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("FWKelseyObjectsSolaufein","LOCALS",3)~ GOTO postsola12_6_1
END

END
