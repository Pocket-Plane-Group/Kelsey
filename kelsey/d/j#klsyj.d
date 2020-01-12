/* Attention Reader: This is the joined/post-joined/quest dialogue file for Kelsey-SOA.
It is also a TERRIBLE example of WeiDU coding. There are a lot of
reasons for this, most of which are not precisely our fault, but many of
which are. Although you may find some interesting nuggets in here, trust
us, if you plan to write .d code, you won't want it to look like this.
Far, far better examples of WeiDU coding can be found by combing through
projects such as Kelsey-TOB and Westley Weimer's Valen.

Enjoy the show, but remember, don't code like this at home. */


BEGIN ~J#KLSYJ~

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,8)
Global("J#KelseyBadRepTalk","LOCALS",0)~ THEN BEGIN 650 // from:
  SAY @1019 /* ~Are you sure you know what you are doing? The way things are going, we are liable to make an infamous name for ourselves.~ [FWKLSYB3] #75382 */
  IF ~~ THEN REPLY @1020 /* ~Infamous? Is that like more than famous?~ #75736 */ DO ~SetGlobal("J#KelseyBadRepTalk","LOCALS",1)~ GOTO 651
  IF ~~ THEN REPLY @1021 /* ~Good.~ #75737 */ DO ~SetGlobal("J#KelseyBadRepTalk","LOCALS",1)~ EXTERN J#KlsyJ Ogg_652
  IF ~~ THEN REPLY @1022 /* ~If you don't like it, there's the proverbial door.~ #75738 */ DO ~SetGlobal("J#KelseyBadRepTalk","LOCALS",1)~ EXTERN J#KlsyJ Ogg_653
  IF ~~ THEN REPLY @1023 /* ~Only a temporary situation, Kelsey. Relax.~ #75739 */ DO ~SetGlobal("J#KelseyBadRepTalk","LOCALS",1)~ EXTERN J#KlsyJ Ogg_654
END

IF ~~ THEN BEGIN Ogg_652 // from: 650.1
  SAY @1025 /* ~Good? I don't think I agree, <CHARNAME>.~ #75384 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ogg_653 // from: 650.2
  SAY @1026 /* ~There's no need to be so abrupt. It was just an observation. I'm trying to help.~ #75385 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ogg_654 // from: 650.3
  SAY @1027 /* ~I am glad to hear it. Let me know if you're looking for any insight.~ #75386 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 651 // from: 650.0
  SAY @1024 /* ~Very funny, I think you know exactly what I mean, <CHARNAME>. Seriously...I don't think this reflects well on any of us.~ #75383 */
  IF ~~ THEN EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,5)
Global("J#KelseyBadRepTalk2","LOCALS",0)~ THEN BEGIN 655 // from:
  SAY @1028 /* ~You really seem to have a cruel streak in you. Nobody says you have to be a saint, but what we are doing is simply wrong.~ [FWKLSYB4] #75387 */
  IF ~~ THEN REPLY @1029 /* ~I'm no saint, I'm a sinner. Deal with it.~ #75740 */ DO ~SetGlobal("J#KelseyBadRepTalk2","LOCALS",1)~ GOTO 656
  IF ~~ THEN REPLY @1030 /* ~Sissy.~ #75741 */ DO ~SetGlobal("J#KelseyBadRepTalk2","LOCALS",1)~ GOTO 657
  IF ~~ THEN REPLY @1031 /* ~Mistakes happen. Things will get better.~ #75742 */ DO ~SetGlobal("J#KelseyBadRepTalk2","LOCALS",1)~ GOTO 658
END

IF ~~ THEN BEGIN 656 // from: 655.0
  SAY @1032 /* ~ I don't think I can support this sinner for much longer at this rate.~ #75388 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 657 // from: 655.1
  SAY @1033 /* ~I suppose petty name-calling is easy after all these evil acts...~ #75389 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 658 // from: 655.2
  SAY @1034 /* ~I think I have heard that one before, but I guess I am still hopeful.~ #75390 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY @1800
  IF ~~ THEN EXTERN ~J#MERRIT~ 2
END

IF ~~ THEN BEGIN 38
  SAY @1801
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @1802
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @1803 /* #76346 */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @1804 /* #76347 */
  IF ~~ THEN EXTERN ~J#MERRIT~ 4
END

IF ~~ THEN BEGIN 42
  SAY @1805 /* #76348 */
  IF ~~ THEN EXTERN ~J#MERRIT~ 5
END

IF ~~ THEN BEGIN 43
  SAY @1806
  IF ~~ THEN EXTERN ~J#MERRIT~ 7
END

IF ~~ THEN BEGIN 44
  SAY @1807  /* #76350 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("J#Cut01")~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @1808 /* #76351 */
  IF ~~ THEN EXTERN ~J#MERRIT~ 12
END

IF ~OR(4)
Global("WBribedMerritt","GLOBAL",2)
Global("WBribedMerritt","GLOBAL",1)
Global("FWBribedMerritt","GLOBAL",2)
Global("FWBribedMerritt","GLOBAL",1)
Global("J#TalkedBribedMerritt","LOCALS",0)~ THEN BEGIN 9 // from:
  SAY @1809
  IF ~~ THEN REPLY @1810 DO ~SetGlobal("J#TalkedBribedMerritt","LOCALS",1)
SetGlobal("FWBribedMerritt","GLOBAL",3)~ GOTO 47
  IF ~~ THEN REPLY @1811 DO ~SetGlobal("J#TalkedBribedMerritt","LOCALS",1)
SetGlobal("FWBribedMerritt","GLOBAL",3)~ GOTO 48
  IF ~~ THEN REPLY @1812 DO ~SetGlobal("J#TalkedBribedMerritt","LOCALS",1)
SetGlobal("FWBribedMerritt","GLOBAL",3)~ GOTO 49
END

IF ~~ THEN BEGIN 47
  SAY @1813 /* #76354 */
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",6)
SetGlobalTimer("J#CearaTimer2","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @1814 /* #76356 */
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",6)
SetGlobalTimer("J#CearaTimer2","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @1815 /* #76358 */
  IF ~!IsValidForPartyDialog("Edwin")~ THEN DO ~LeaveParty()
EscapeArea()
SetGlobal("J#CearaFight","GLOBAL",500)~ EXIT
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~LeaveParty()
EscapeArea()
SetGlobal("J#CearaFight","GLOBAL",500)~ EXTERN ~EDWINJ~ EDWINGLOATS
END


APPENDI EDWINJ
IF ~~ THEN BEGIN EDWINGLOATS
SAY @1816
IF ~~ THEN EXIT
END
END


IF ~Global("J#CearaFight","GLOBAL",5)
GlobalGT("SPRITE_IS_DEADJ#MERRITT14","GLOBAL",0)~ THEN BEGIN 50
  SAY @1817
  IF ~~ THEN REPLY @1818 /* #76360 */ GOTO 51
  IF ~~ THEN REPLY @1811 /* #76362 */ GOTO 48
  IF ~~ THEN REPLY @1812 /* #76363 */ GOTO 49
END

IF ~~ THEN BEGIN 51
  SAY @1819 /* #76361 */
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",6)
SetGlobalTimer("J#CearaTimer2","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @1820
  IF ~~ THEN EXTERN ~J#CEARA~ CEARA1
END

IF ~~ THEN BEGIN 53
  SAY @1821
  IF ~~ THEN EXTERN ~J#CEARA~ CEARA2
END

IF ~~ THEN BEGIN 54
  SAY @1822
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @1823
  IF ~~ THEN EXTERN ~J#CEARA~ CEARA3
END

IF ~~ THEN BEGIN 56
  SAY @1824 /* #76423 */
  IF ~~ THEN EXTERN ~J#CEARA~ CEARA4
END

IF ~~ THEN BEGIN 57
  SAY @1825 /* #76424 */
  IF ~~ THEN EXTERN ~J#CEARA~ CEARA5
END

IF ~~ THEN BEGIN 58
  SAY @1807
  IF ~!IsValidForPartyDialog("Keldorn")~ THEN DO ~StartCutSceneMode()
StartCutScene("J#Cut04")~ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ KELDORNCOMMENT
END

APPENDI KELDORJ
IF ~~ THEN BEGIN KELDORNCOMMENT
SAY @1826
IF ~~ THEN EXTERN J#CEARA CEARA10
END
END



APPEND J#KLSYJ
IF ~Global("J#CearaFight","GLOBAL",9)
Dead("J#Ceara")~ THEN BEGIN CearaDead1
SAY @1827
IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",12)~ EXTERN J#KLSYJ CearaDead2
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead2
SAY @1828
IF ~~ THEN REPLY @1829 EXTERN J#KLSYJ CearaDead3
IF ~~ THEN REPLY @1830 EXTERN J#KLSYJ CearaDead4
IF ~~ THEN REPLY @1831 EXTERN J#KLSYJ CearaDead5
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead3
SAY @1832
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead4
SAY @1833
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN CearaDead5
SAY @1834
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~Global("FWKelseyBridge","LOCALS",2)~ bridge
SAY @3389 = @3390 = @3391
IF ~~ DO ~SetGlobal("FWKelseyBridge","LOCALS",3)~ EXIT
END

IF ~Global("FWKelseyStealingWarn","LOCALS",1)~ stealingwarn1
SAY @3392 = @3393
++ @3394 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1laugh
++ @3395 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1mission
++ @3396 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1beautiful
+ ~!G("J#KelseyRomanceActive",2)~ + @3397 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1getout
+ ~G("J#KelseyRomanceActive",2)~ + @3397 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1getoutrom
++ @3398 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",2)~ + warn1behave
END

IF ~Global("FWKelseyStealingWarn","LOCALS",3)~ stealingwarn2
SAY @3405 = @3406
++ @3407 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2whatcha
++ @3408 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2greatergood
+ ~ReputationGT(Player1,15) CheckStatGT(Player1,14,CHR)~ + @3409 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2ledgeryes
+ ~OR(2) !ReputationGT(Player1,15) !CheckStatGT(Player1,14,CHR)~+ @3409 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2ledgerno
++ @3410 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2teeth
+ ~G("J#KelseyRomanceActive",2)~ + @3411 DO ~SetGlobal("FWKelseyStealingWarn","LOCALS",4)~ + warn2loveme
END

IF ~~ warn2loveme
SAY @3572
++ @3573 + warn2noconnect
++ @3574 + warn2youwin
++ @3575 + warn2notrust
++ @3576 + warn2nochange
END

IF ~~ warn2noconnect
SAY @3577
IF ~~ DO ~SG("J#KelseyRomanceActive",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ warn2youwin
SAY @3578
IF ~~ EXIT
END

IF ~~ warn2notrust
SAY @3579
IF ~~ DO ~SG("J#KelseyRomanceActive",3)~ EXIT
END

IF ~~ warn2nochange
SAY @3580
IF ~~ DO ~SG("J#KelseyRomanceActive",3) LeaveParty() EscapeArea()~ EXIT
END


IF ~~ warn2ledgeryes
SAY @3414 = @3415
IF ~~ EXIT
END

IF ~~ warn2ledgerno
SAY @3414 = @3416
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ warn2teeth
SAY @3417
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ warn2whatcha
SAY @3412
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ warn2greatergood
SAY @3413
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END



IF ~~ warn1laugh
SAY @3399
IF ~~ EXIT
END

IF ~~ warn1mission
SAY @3400
IF ~~ EXIT
END

IF ~~ warn1beautiful
SAY @3401
IF ~~ EXIT
END

IF ~~ warn1getout
SAY @3402
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ warn1getoutrom
SAY @3403
IF ~~ EXIT
END

IF ~~ warn1behave
SAY @3404
IF ~~ EXIT
END

END







// CEARA'S LINES

BEGIN ~J#CEARA~

IF ~Global("J#CearaFight","GLOBAL",8)~ THEN BEGIN CEARA0
  SAY @1835
  IF ~~ THEN EXTERN ~J#KLSYJ~ 52
END

IF ~~ THEN BEGIN CEARA1
  SAY @1836
  IF ~~ THEN EXTERN ~J#KLSYJ~ 53
END

IF ~~ THEN BEGIN CEARA2
  SAY @1837
  IF ~~ THEN EXTERN ~J#KLSYJ~ 54
END

IF ~~ THEN BEGIN CEARA3
  SAY @1838
  IF ~~ THEN EXTERN ~J#KLSYJ~ 56
END

IF ~~ THEN BEGIN CEARA4
  SAY @1839 /* #76412 */
  IF ~!Global("WBribedMerritt","GLOBAL",2)~ THEN EXTERN ~J#KLSYJ~ 57
  IF ~Global("WBribedMerritt","GLOBAL",2)~ THEN DO ~StartCutScene("J#Cut03")~ EXIT
END

IF ~~ THEN BEGIN CEARA5
  SAY @1840
  IF ~~ THEN REPLY @1841 /* #76414 */ GOTO CEARA6
  IF ~~ THEN REPLY @1842 /* #76416 */ GOTO CEARA7
  IF ~~ THEN REPLY @1843 /* #76418 */ EXTERN ~J#KLSYJ~ 58
END

IF ~~ THEN BEGIN CEARA6
  SAY @1844
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN CEARA7
  SAY @1845
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",9)~ EXIT
END

IF ~Global("J#CearaFight","GLOBAL",11)~ THEN BEGIN Ceara8
  SAY @1846
  IF ~~ THEN GOTO CEARA9
END



APPENDI KELDORJ
IF ~~ THEN BEGIN KELDORNCOMMENT2
SAY @1848
IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ AERIECOMMENT
IF ~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Edwin")~ THEN EXTERN EDWINJ EDWINCOMMENT
IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Valygar")~ THEN EXTERN VALYGARJ VALYGARCOMMENT
IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Valygar")~ THEN EXIT
END
END

IF ~~ THEN BEGIN CEARA10
  SAY @1849
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",9)~ EXIT
END

/*

Replacing this with a conditional CHAIN...

IF ~~ THEN BEGIN CEARA9
  SAY @1847
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~EscapeArea()~ EXTERN KELDORJ KELDORNCOMMENT2
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Aerie")~ THEN DO ~EscapeArea()~ EXTERN AERIEJ AERIECOMMENT
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Edwin")~ THEN DO ~EscapeArea()~ EXTERN EDWINJ EDWINCOMMENT
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Valygar")~ THEN DO ~EscapeArea()~ EXTERN VALYGARJ VALYGARCOMMENT
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Valygar")~ THEN DO ~EscapeArea()~ EXIT
END

*/


CHAIN J#CEARA CEARA9
@1847
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN @3564 DO ~LeaveParty() EscapeArea()~
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @3565 DO ~LeaveParty() EscapeArea()~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @3566 DO ~LeaveParty() EscapeArea()~
== ANOMENJ IF ~G("AnomenIsKnight",1) !G("AnomenRomanceActive",2)~ THEN @3567 DO ~LeaveParty() EscapeArea()~
== VALYGARJ IF ~IsValidForPartyDialog("Valygar")~ THEN @1867
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @1866
== J#CEARA @3568 DO ~EscapeArea()~
EXIT



// MERRITT'S LINES

/* Kelsey gets nabbed
~SetGlobal("J#CearaFight","GLOBAL",11)
StartCutSceneMode()
StartCutScene("J#Cut01")~
*/


BEGIN ~J#MERRIT~

IF ~Global("J#CearaFight","GLOBAL",2)~ THEN BEGIN 0
  SAY @1850
  IF ~~ THEN EXTERN ~J#LILLA~ LILLA0
END

IF ~~ THEN BEGIN 1
  SAY @1851
  IF ~~ THEN EXTERN ~J#KLSYJ~ 37
END

IF ~~ THEN BEGIN 2
  SAY @1852
  IF ~~ THEN EXTERN ~J#LILLA~ LILLA1
END

IF ~~ THEN BEGIN 3
  SAY @1853
  IF ~~ THEN EXTERN ~J#KLSYJ~ 38
END

IF ~~ THEN BEGIN 4
  SAY @1854 /* #76314 */
  IF ~~ THEN EXTERN ~J#KLSYJ~ 42
END

IF ~~ THEN BEGIN 5
  SAY @1855
  IF ~XPLT(Player1,500001)~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",3)
StartCutSceneMode()
StartCutScene("J#Cut02")~ EXIT
  IF ~XPLT(Player1,1000001)
XPGT(Player1,500000)~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",3)
StartCutSceneMode()
StartCutScene("J#Cut05")~ EXIT
  IF ~XPGT(Player1,1000000)~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",3)
StartCutSceneMode()
StartCutScene("J#Cut06")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1856
  IF ~~ THEN EXTERN ~J#KLSYJ~ 43
END

IF ~~ THEN BEGIN 7
  SAY @1857 /* #76317 */
  IF ~~ THEN REPLY @1858 /* #76318 */ EXTERN ~J#KLSYJ~ 44
  IF ~~ THEN REPLY @1859 /* #76319 */ GOTO 8
  IF ~~ THEN REPLY @1860 /* #76321 */ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @1861 /* #76320 */
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1862
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1863 /* #76323 */
  IF ~~ THEN EXTERN ~J#KLSYJ~ 45
END

/*

Replace with CHAIN

IF ~Global("J#CearaFight","GLOBAL",11)~ THEN BEGIN 11
  SAY @1864
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",12)
GivePartyGold(2500)
GiveItemCreate("J#Rod01",Player1,3,3,0)
Wait(1)
EscapeArea()~ EXTERN AERIEJ AERIECOMMENT
  IF ~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",12)
GivePartyGold(2500)
GiveItemCreate("J#Rod01",Player1,3,3,0)
Wait(1)
EscapeArea()~ EXTERN EDWINJ EDWINCOMMENT
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",12)
GivePartyGold(2500)
GiveItemCreate("J#Rod01",Player1,3,3,0)
Wait(1)
EscapeArea()~ EXTERN VALYGARJ VALYGARCOMMENT
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",12)
GivePartyGold(2500)
GiveItemCreate("J#Rod01",Player1,3,3,0)
Wait(1)
EscapeArea()~ EXIT
END

*/

APPENDI AERIEJ
IF ~~ THEN BEGIN AERIECOMMENT
SAY @1865
IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN EDWINJ EDWINCOMMENT
IF ~!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Valygar")~ THEN EXTERN VALYGARJ VALYGARCOMMENT
IF ~!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Valygar")~ THEN EXIT
END
END

APPENDI EDWINJ
IF ~~ THEN BEGIN EDWINCOMMENT
SAY @1866
IF ~IsValidForPartyDialog("Valygar")~ THEN EXTERN VALYGARJ VALYGARCOMMENT
IF ~!IsValidForPartyDialog("Valygar")~ THEN EXIT
END
END

APPENDI VALYGARJ
IF ~~ THEN BEGIN VALYGARCOMMENT
SAY @1867
IF ~~ THEN EXIT
END
END

IF ~~ THEN BEGIN 12
  SAY @1868 /* #76325 */
  IF ~~ THEN REPLY @1869 /* #77551 */ EXTERN ~J#KLSYJ~ 44
  IF ~~ THEN REPLY @1870 /* #76327 */ EXTERN ~J#LILLA~ LILLA3
  IF ~~ THEN REPLY @1871 /* #76328 */ GOTO 8
END

IF ~~ THEN BEGIN 13
  SAY @1872 /* #76329 */
  IF ~PartyGoldGT(499)~ THEN REPLY @1873 /* #76330 */ GOTO 14
  IF ~PartyGoldGT(1499)
CheckStatLT(Player1,15,CHR)~ THEN REPLY @1874 /* #76332 */ GOTO 14
  IF ~PartyGoldGT(3999)~ THEN REPLY @1875
DO
~TakePartyGold(4000)
SetGlobal("FWBribedMerritt","GLOBAL",2)
SetGlobal("J#CearaFight","GLOBAL",5)~ GOTO 15
  IF ~~ THEN REPLY @1876 /* #76335 */ EXTERN J#KLSYJ 44
  IF ~~ THEN REPLY @1877 /* #76336 */ GOTO 8
  IF ~PartyGoldGT(1499)
CheckStatGT(Player1,14,CHR)~ THEN DO ~TakePartyGold(1500)
SetGlobal("FWBribedMerritt","GLOBAL",2)
SetGlobal("J#CearaFight","GLOBAL",5)~ REPLY @1874 /* #76332 */ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @1878
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1879
  IF ~~ THEN EXTERN ~J#LILLA~ LILLA4
END

IF ~~ THEN BEGIN 16
  SAY @1880
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",5)
ActionOverride("J#Bharle",EscapeArea())
ActionOverride("J#Vlaming",EscapeArea())
ActionOverride("J#Piotr",EscapeArea())
ActionOverride("J#Clinn",EscapeArea())
ActionOverride("J#Lilla",EscapeArea())
EscapeArea()~ EXIT
END

IF ~Global("J#CearaFight","GLOBAL",8)~ THEN BEGIN 17
  SAY @1881 /* #76433 */
  IF ~~ THEN EXTERN ~J#RUMIL~ RUMIL0
END

IF ~~ THEN BEGIN 18
  SAY @1882 /* #76434 */
  IF ~~ THEN EXTERN ~J#KLSYJ~ 57
END


CHAIN IF ~Global("J#CearaFight","GLOBAL",11)~ THEN J#MERRIT old11
@1864
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN @3564 DO ~LeaveParty() EscapeArea()~
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @3565 DO ~LeaveParty() EscapeArea()~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @3566 DO ~LeaveParty() EscapeArea()~
== ANOMENJ IF ~G("AnomenIsKnight",1) !G("AnomenRomanceActive",2)~ THEN @3567 DO ~LeaveParty() EscapeArea()~
== VALYGARJ IF ~IsValidForPartyDialog("Valygar")~ THEN @1867
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @1866
== J#MERRIT @3569
== J#LILLA @3570
== J#MERRIT @3571 DO ~SetGlobal("J#CearaFight","GLOBAL",12)
GiveGoldForce(2500)
GiveItemCreate("J#Rod01",Player1,3,3,0)
Wait(1)
ActionOverride("J#Lilla",EscapeArea())
EscapeArea()~
EXIT





// RUMIL'S LINE


BEGIN ~J#RUMIL~

IF ~~ THEN BEGIN RUMIL0
  SAY @1883 /* #76435 */
  IF ~~ THEN EXTERN ~J#MERRIT~ 18
END


// LILLA'S LINES

BEGIN ~J#LILLA~

IF ~~ THEN BEGIN LILLA0
  SAY @1884
  IF ~~ THEN EXTERN ~J#MERRIT~ 1
END

IF ~~ THEN BEGIN LILLA1
  SAY @1885
  IF ~~ THEN EXTERN ~J#MERRIT~ 3
END

IF ~Global("J#CearaFight","GLOBAL",3)~ THEN BEGIN LILLA2
  SAY @1886
  IF ~~ THEN DO ~SetGlobal("J#CearaFight","GLOBAL",4)~ EXTERN ~J#MERRIT~ 6
END

IF ~~ THEN BEGIN LILLA3
  SAY @1887 /* #76341 */
  IF ~~ THEN EXTERN ~J#MERRIT~ 13
END

IF ~~ THEN BEGIN LILLA4
  SAY @1888
  IF ~~ THEN EXTERN ~J#MERRIT~ 16
END



///////////////////////////////
//
// Ahoy! This be J#KlsyP!
//

BEGIN ~J#KLSYP~

IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)~ THEN BEGIN 659 // from:
  SAY @1889
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
END

IF ~Global("J#KelseyVampire","GLOBAL",5)~ THEN BEGIN Post_2
  SAY @1890 /* #75898 */
  IF ~~ THEN REPLY @1891 /* #75899 */ DO ~SetGlobal("J#KelseyVampire","GLOBAL",6)~ GOTO Post_3
  IF ~~ THEN REPLY @1892 /* #75906 */ DO ~SetGlobal("J#KelseyVampire","GLOBAL",6)~ GOTO Post_5
  IF ~~ THEN REPLY @1893 /* #75910 */ DO ~SetGlobal("J#KelseyVampire","GLOBAL",6)~ GOTO Post_6
END

IF ~~ THEN BEGIN Post_3
  SAY @1894 /* #75900 */
  IF ~~ THEN REPLY @1895 /* #75901 */ GOTO Post_4
  IF ~~ THEN REPLY @1896 /* #75905 */ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Post_4
  SAY @1897 /* #75902 */
  IF ~~ THEN REPLY @1898 DO ~MoveGlobal("AR0700","J#Kelsey",[2259.1655])~ /* #75903 */ EXIT
  IF ~~ THEN REPLY @1899 /* #75904 */ EXIT
END

IF ~~ THEN BEGIN Post_5
  SAY @1900 /* #75907 */
  IF ~~ THEN REPLY @1901 /* #75908 */ GOTO Post_4
  IF ~~ THEN REPLY @1896 /* #75909 */ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Post_6
  SAY @1902 /* #75911 */
  IF ~~ THEN REPLY @1903 /* #75912 */ GOTO Post_4
  IF ~~ THEN REPLY @1896 /* #75913 */ DO ~JoinParty()~ EXIT
END

IF ~Global("J#KickedOut","LOCALS",1) G("J#KelseyRomanceActive",1) GlobalGT("J#Lovetalk","LOCALS",6)~ THEN BEGIN postinluvreturn
  SAY @3581
IF ~~ THEN REPLY @3582 DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
IF ~~ THEN REPLY @3583 EXIT
END

IF ~Global("J#KickedOut","LOCALS",0) G("J#KelseyRomanceActive",1) GlobalGT("J#Lovetalk","LOCALS",6)~ THEN BEGIN postinluvkick
  SAY @3584
  IF ~~ THEN REPLY @3585 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @3586 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO postinluvkickstay
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ THEN REPLY @3587 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO postinluvkickmart
END

IF ~~ postinluvkickstay
SAY @3588
IF ~~ EXIT
END

IF ~~ postinluvkickmart
SAY @3589
IF ~~ THEN DO ~MoveGlobal("AR0700","J#Kelsey",[2259.1655])~ EXIT
END


IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KickedOut","LOCALS",1)~ THEN BEGIN KelseyP_4
  SAY @6022
  IF ~~ THEN REPLY @6023 DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @6024 GOTO KelseyP_5
END

IF ~~ THEN BEGIN KelseyP_5
  SAY @6025
  IF ~~ THEN EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KickedOut","LOCALS",0)~ THEN BEGIN KelseyP_8
  SAY @6031
  IF ~~ THEN REPLY @6032 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @6034 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO KelseyP_9
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ THEN REPLY @3590 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO KelseyP_9a
END

IF ~~ THEN BEGIN KelseyP_9
  SAY @6035
  IF ~~ THEN EXIT
END

IF ~~ KelseyP_9a
SAY @3591
IF ~~ THEN DO ~MoveGlobal("AR0700","J#Kelsey",[2259.1655])~ EXIT
END




IF ~Global("J#KickedOut","LOCALS",1)~ THEN BEGIN Post_7
  SAY @1904
IF ~~ THEN REPLY @1905 DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
IF ~~ THEN REPLY @1906 EXIT
END

IF ~Global("J#KickedOut","LOCALS",0)~ THEN BEGIN Post_0
  SAY @1907 /* #74818 */
  IF ~~ THEN REPLY @1908 /* #74819 */ GOTO Post_1
  IF ~~ THEN REPLY @1909 /* #74823 */ DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Post_1
  SAY @1910 /* #74820 */
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ THEN REPLY @1911 /* #74821 */ DO ~SetGlobal("J#KickedOut","LOCALS",1)
MoveGlobal("AR0700","J#Kelsey",[2259.1655])~ EXIT

  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @1912 /* #74822 */ DO ~SetGlobal("J#KickedOut","LOCALS",1)~ EXIT
END


//
//
// End of J#KlsyP
//
/////////////////////////////////////

//////////////////////////////////////
//
// Avast, J#Klsy off the port bow!
//


BEGIN ~J#KLSY~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Join_0
  SAY @1913  /* #74785 */
  IF ~~ THEN REPLY @1914 /* #74786 */ GOTO Join_1
  IF ~~ THEN REPLY @1915 /* #74796 */ GOTO Join_1
  IF ~~ THEN REPLY @1916 /* #74797 */ GOTO Join_9
  IF ~~ THEN REPLY @1917 /* #74799 */ GOTO Join_10
END

IF ~~ THEN BEGIN Join_1
  SAY @1918 /* #74787 */
  IF ~~ THEN REPLY @1919 /* #74788 */ GOTO Join_2
  IF ~~ THEN REPLY @1920 /* #74794 */ GOTO Join_9
  IF ~~ THEN REPLY @1921 /* #74795 */ GOTO Join_10
END

IF ~~ THEN BEGIN Join_2
  SAY @1922 /* #74789 */
  IF ~~ THEN GOTO Join_3
END

IF ~~ THEN BEGIN Join_3
  SAY @1923 /* #74790 */
  IF ~~ THEN REPLY @1924 /* #74791 */ GOTO Join_1
  IF ~IsValidForPartyDialog("Nalia")~ THEN REPLY @1925 /* #74792 */ EXTERN ~BNALIA~ Join_51
  IF ~!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Edwin")~ THEN REPLY @1925 /* #74792 */ EXTERN ~BEDWIN~ Join_106

  IF ~!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Edwin")~ THEN REPLY @1925 /* #74792 */ GOTO Join_4
  IF ~~ THEN REPLY @1926 /* #74793 */ GOTO Join_10
END

IF ~~ THEN BEGIN Join_4
  SAY @1927 /* #74801 */
  IF ~Gender(Player1,Female)
OR(4)
Race(Player1,HUMAN)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,HALFLING)~ THEN REPLY @1928 /* #74802 */ DO ~JoinParty()~ EXIT
  IF ~Gender(Player1,FEMALE)
!Race(Player1,HUMAN)
!Race(Player1,ELF)
!Race(Player1,HALF_ELF)
!Race(Player1,HALFLING)~ THEN REPLY @1928 /* #74803 */ DO ~JoinParty()~ EXIT
  IF ~Gender(Player1,MALE)~ THEN REPLY @1928 /* #74804 */ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @1929 /* #74805 */ GOTO Join_5
  IF ~Gender(Player1,FEMALE)
OR(4)
Race(Player1,HUMAN)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,HALFLING)~ THEN REPLY @1930 /* #74807 */ GOTO Join_6
  IF ~Gender(Player1,FEMALE)
!Race(Player1,HUMAN)
!Race(Player1,ELF)
!Race(Player1,HALF_ELF)
!Race(Player1,HALFLING)~ THEN REPLY @1930 /* #74807 */ GOTO Join_7
  IF ~Gender(Player1,MALE)~ THEN REPLY @1930 /* #74807 */ GOTO Join_8
END

IF ~~ THEN BEGIN Join_5
  SAY @1931 /* #74806 */
  IF ~Gender(Player1,FEMALE)
OR(4)
Race(Player1,HUMAN)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,HALFLING)~ THEN DO ~JoinParty()~ EXIT
  IF ~Gender(Player1,FEMALE)
!Race(Player1,HUMAN)
!Race(Player1,ELF)
!Race(Player1,HALF_ELF)
!Race(Player1,HALFLING)~ THEN DO ~JoinParty()~ EXIT
  IF ~Gender(Player1,MALE)~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Join_6
  SAY @1932 /* #74809 */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Join_7
  SAY @1932 /* #74810 */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Join_8
  SAY @1933 /* #74808 */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Join_9
  SAY @1934 /* #74798 */
  IF ~~ THEN REPLY @1935 /* #74811 */ GOTO Join_2
  IF ~~ THEN REPLY @1936 /* #74812 */ GOTO Join_2
  IF ~~ THEN REPLY @1937 /* #74813 */ GOTO Join_10
END

IF ~~ THEN BEGIN Join_10
  SAY @1938 /* #74800 */
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Join_11
  SAY @1939  /* #74814 */
  IF ~IsValidForPartyDialog("Nalia")~ THEN REPLY @1940 /* #74815 */ EXTERN ~BNALIA~ Join_51
  IF ~~ THEN REPLY @1941 /* #74816 */ GOTO Join_12
  IF ~!IsValidForPartyDialog("Nalia")

IsValidForPartyDialog("Edwin")~ THEN REPLY @1940 /* #74815 */ EXTERN ~BEDWIN~ Join_106
  IF ~!IsValidForPartyDialog("Nalia")

!IsValidForPartyDialog("Edwin")~ THEN REPLY @1940 /* #74815 */ GOTO Join_4
END

IF ~~ THEN BEGIN Join_12
  SAY @1942 /* #74817 */
  IF ~~ THEN EXIT
END

APPENDI BNALIA
 IF ~~ THEN BEGIN Join_51
  SAY @1943 /* #74784 */
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~BEDWIN~ Join_106
  IF ~!IsValidForPartyDialog("Edwin")~ THEN EXTERN ~J#KLSY~ Join_4
 END
END

APPENDI BEDWIN
 IF ~~ THEN BEGIN Join_106
  SAY @1944 /* #74783 */
  IF ~~ THEN EXTERN ~J#KLSY~ Join_4
 END
END

//
// End of J#Klsy
//
////////////////////////////////
