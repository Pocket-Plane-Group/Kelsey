// Here's the non-pausing dialogue for the new-to-V2 Kelsey/Imoen LT


BEGIN J#KLSYNP 1

CHAIN IF ~Global("FWKelseyImoZap","GLOBAL",2)~ THEN
J#KLSYNP imozapchain
@1448 DO ~SetGlobal("FWKelseyImoZap","GLOBAL",3)~
== IMOEN25J @1449
== J#KLSYNP @1450 DO ~ActionOverride("Imoen2",ReallyForceSpellRES("J#ImoZap","J#Kelsey"))~
== IMOEN25J @1451
== J#KLSYNP @1452 DO ~ActionOverride("Imoen2",ReallyForceSpellRES("J#ImoZap","J#Kelsey"))~
= @1545
== IMOEN25J @1453 DO ~ActionOverride("J#Kelsey",ReallyForceSpellRES("J#ImoZap","Imoen2"))~
== J#KLSYNP @1454
== IMOEN25J @1455
== J#KLSYNP @1456 DO ~ActionOverride("Imoen2",ReallyForceSpellRES("J#ImoZap","J#Kelsey"))~
== IMOEN25J @1457
== J#KLSYNP @1458
== IMOEN25J @1459
== J#KLSYNP @1460
== IMOEN25J @1461
== J#KLSYNP @1462
== IMOEN25J @1463 DO ~RunAwayFrom("J#Kelsey",45)~
EXIT







BEGIN BJ#KLS25

// PC LOVETALKS BEGIN UP HERE. That's so they're weighted at the top of the DLG stack.

IF ~Global("FWKelseyPostOasis","LOCALS",2)~ oasis_1
SAY @1501
IF ~!ReputationGT(Player1,10)~ DO ~SetGlobal("FWKelseyPostOasis","LOCALS",3)~ GOTO oasis_lowrep
IF ~ReputationGT(Player1,10)~ DO ~SetGlobal("FWKelseyPostOasis","LOCALS",3)~ GOTO oasis_highrep
END

IF ~~ oasis_lowrep
SAY @1502
IF ~~ GOTO oasis_2
END

IF ~~ oasis_highrep
SAY @1503
IF ~~ GOTO oasis_2
END

IF ~~ oasis_2
SAY @1504
++ @1505 + oasis_cowardice
++ @1506 + oasis_cleanmess
++ @1507 + oasis_understanding
++ @1508 + oasis_harm
++ @1509 + oasis_regret
END

IF ~~ oasis_harm
SAY @1510
IF ~~ GOTO oasis_mercy
END

IF ~~ oasis_regret
SAY @1511 = @1512
IF ~~ GOTO oasis_comeaday
END

IF ~~ oasis_cleanmess
SAY @1513
IF ~~ GOTO oasis_comeaday
END

IF ~~ oasis_understanding
SAY @1514
IF ~~ GOTO oasis_comeaday
END

IF ~~ oasis_comeaday
SAY @1515 = @1516
++ @1517 + oasis_onlyme
++ @1518 + oasis_tellthemnow
++ @1519 + oasis_away
END

IF ~~ oasis_away
SAY @1520
IF ~~ EXIT
END

IF ~~ oasis_onlyme
SAY @1526 = @1527
IF ~~ EXIT
END

IF ~~ oasis_cowardice
SAY @1528
++ @1529 + oasis_tease
++ @1530 + oasis_serious
++ @1531 + oasis_mercy
++ @1532 + oasis_control
END

IF ~~ oasis_tease
SAY @1533
IF ~~ EXIT
END

IF ~~ oasis_serious
SAY @1534
IF ~~ DO ~RunAwayFrom(Player1,30)~ EXIT
END

IF ~~ oasis_mercy
SAY @1535 = @1536
IF ~~ EXIT
END

IF ~~ oasis_control
SAY @1537 = @1538 = @1539
IF ~~ EXIT
END








IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",2)~ THEN BEGIN kelseylt2_1
SAY @202
IF ~~ THEN REPLY @203 GOTO kelseylt2_3
IF ~~ THEN REPLY @204 GOTO kelseylt2_2
IF ~~ THEN REPLY @205 GOTO kelseylt2_4
IF ~~ THEN REPLY @206 GOTO kelseylt2_4
END

IF ~~ THEN BEGIN kelseylt2_2
SAY @207
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN kelseylt2_3
SAY @208
IF ~~ THEN GOTO kelseylt2_4
END

IF ~~ THEN BEGIN kelseylt2_4
SAY @209 = @210 = @211 = @212
IF ~~ THEN REPLY @213 GOTO kelseylt2_5
IF ~~ THEN REPLY @214 GOTO kelseylt2_7
IF ~~ THEN REPLY @215 GOTO kelseylt2_5
IF ~~ THEN REPLY @216 GOTO kelseylt2_6
IF ~~ THEN REPLY @217 GOTO kelseylt2_6
END

IF ~~ THEN BEGIN kelseylt2_5
SAY @218
IF ~~ THEN GOTO kelseylt2_8
END

IF ~~ THEN BEGIN kelseylt2_6
SAY @219
IF ~~ THEN GOTO kelseylt2_8
END

IF ~~ THEN BEGIN kelseylt2_7
SAY @220
IF ~~ THEN GOTO kelseylt2_8
END

IF ~~ THEN BEGIN kelseylt2_8
SAY @221 = @222
IF ~~ THEN REPLY @223 GOTO kelseylt2_9
IF ~~ THEN REPLY @224 GOTO kelseylt2_12
IF ~~ THEN REPLY @225 GOTO kelseylt2_10
IF ~~ THEN REPLY @226 GOTO kelseylt2_11
END

IF ~~ THEN BEGIN kelseylt2_9
SAY @227
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt2_10
SAY @228
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt2_11
SAY @229
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt2_12
SAY @230 = @231
IF ~~ THEN REPLY @232 GOTO kelseylt2_13
IF ~~ THEN REPLY @233 GOTO kelseylt2_14
IF ~~ THEN REPLY @234 GOTO kelseylt2_9
END

IF ~~ THEN BEGIN kelseylt2_13
SAY @235
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt2_14
SAY @236
IF ~~ THEN EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",4)~ THEN BEGIN kelseylt4_1
SAY @237
IF ~~ THEN REPLY @238 GOTO kelseylt4_2
IF ~~ THEN REPLY @239 GOTO kelseylt4_3
IF ~~ THEN REPLY @240 GOTO kelseylt4_4
IF ~~ THEN REPLY @241 GOTO kelseylt4_5
IF ~~ THEN REPLY @242 GOTO kelseylt4_6
END

IF ~~ THEN BEGIN kelseylt4_2
SAY @243
IF ~~ THEN GOTO kelseylt4_7
END

IF ~~ THEN BEGIN kelseylt4_3
SAY @244
IF ~~ THEN GOTO kelseylt4_7
END

IF ~~ THEN BEGIN kelseylt4_4
SAY @245
IF ~~ THEN GOTO kelseylt4_7
END

IF ~~ THEN BEGIN kelseylt4_5
SAY @246
IF ~~ THEN GOTO kelseylt4_7
END

IF ~~ THEN BEGIN kelseylt4_6
SAY @247
IF ~~ THEN GOTO kelseylt4_7
END

IF ~~ THEN BEGIN kelseylt4_7
SAY @248 = @249 = @250 = @251
IF ~~ THEN REPLY @252 GOTO kelseylt4_8
IF ~~ THEN REPLY @253 GOTO kelseylt4_9
IF ~~ THEN REPLY @254 GOTO kelseylt4_10
IF ~~ THEN REPLY @255 GOTO kelseylt4_11
IF ~~ THEN REPLY @256 GOTO kelseylt4_13
END

IF ~~ THEN BEGIN kelseylt4_8
SAY @257
IF ~~ THEN GOTO kelseylt4_12
END

IF ~~ THEN BEGIN kelseylt4_9
SAY @258
IF ~~ THEN GOTO kelseylt4_12
END

IF ~~ THEN BEGIN kelseylt4_10
SAY @259
IF ~~ THEN GOTO kelseylt4_12
END

IF ~~ THEN BEGIN kelseylt4_11
SAY @260
IF ~~ THEN GOTO kelseylt4_12
END


IF ~~ THEN BEGIN kelseylt4_12
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt4_13
SAY @262 = @263
IF ~~ THEN GOTO kelseylt4_12
END


IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",6)
Global("J#KelseyNookie","GLOBAL",1)~ THEN BEGIN kelseylt6_1_1
SAY @264
IF ~~ THEN REPLY @265 GOTO kelseylt6_1_3
IF ~~ THEN REPLY @266 GOTO kelseylt6_1_5
IF ~~ THEN REPLY @267 GOTO kelseylt6_1_6
IF ~~ THEN REPLY @268 GOTO kelseylt6_1_7
IF ~~ THEN REPLY @269 GOTO kelseylt6_1_2
END

IF ~~ THEN BEGIN kelseylt6_1_2
SAY @270
IF ~~ THEN REPLY @271 GOTO kelseylt6_1_3
IF ~~ THEN REPLY @272 GOTO kelseylt6_1_8
END

IF ~~ THEN BEGIN kelseylt6_1_3
SAY @273
IF ~~ THEN GOTO kelseylt6_1_13
END

IF ~~ THEN BEGIN kelseylt6_1_5
SAY @274
IF ~~ THEN GOTO kelseylt6_1_13
END

IF ~~ THEN BEGIN kelseylt6_1_6
SAY @275
IF ~~ THEN GOTO kelseylt6_1_13
END

IF ~~ THEN BEGIN kelseylt6_1_7
SAY @276
IF ~~ THEN GOTO kelseylt6_1_13
END

IF ~~ THEN BEGIN kelseylt6_1_8
SAY @277 = @278
IF ~~ THEN REPLY @279 GOTO kelseylt6_1_9
IF ~~ THEN REPLY @280 GOTO kelseylt6_1_10
IF ~~ THEN REPLY @281 GOTO kelseylt6_1_10
IF ~~ THEN REPLY @282 GOTO kelseylt6_1_11
IF ~~ THEN REPLY @283 GOTO kelseylt6_1_12
END

IF ~~ THEN BEGIN kelseylt6_1_9
SAY @284
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_10
SAY @285
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_11
SAY @286
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_12
SAY @287
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_13
SAY @288 = @289 = @290
IF ~~ THEN REPLY @291 GOTO kelseylt6_1_14
IF ~~ THEN REPLY @292 GOTO kelseylt6_1_15
IF ~~ THEN REPLY @293 GOTO kelseylt6_1_16
IF ~~ THEN REPLY @294 GOTO kelseylt6_1_17
IF ~~ THEN REPLY @295 GOTO kelseylt6_1_18
END

IF ~~ THEN BEGIN kelseylt6_1_14
SAY @296 = @297
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_15
SAY @298 = @299
IF ~~ THEN REPLY @300 GOTO kelseylt6_1_14
IF ~~ THEN REPLY @301 GOTO kelseylt6_1_19
END

IF ~~ THEN BEGIN kelseylt6_1_16
SAY @302
IF ~~ THEN GOTO kelseylt6_1_21
END

IF ~~ THEN BEGIN kelseylt6_1_17
SAY @303
IF ~~ THEN GOTO kelseylt6_1_21
END

IF ~~ THEN BEGIN kelseylt6_1_18
SAY @304
IF ~~ THEN GOTO kelseylt6_1_21
END

IF ~~ THEN BEGIN kelseylt6_1_19
SAY @305
IF ~~ THEN GOTO kelseylt6_1_20
END

IF ~~ THEN BEGIN kelseylt6_1_20
SAY @306 = @307
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_1_21
SAY @308
IF ~~ THEN REPLY @309 GOTO kelseylt6_1_20
IF ~~ THEN REPLY @310 GOTO kelseylt6_1_22
IF ~~ THEN REPLY @311 GOTO kelseylt6_1_14
END

IF ~~ THEN BEGIN kelseylt6_1_22
SAY @312
IF ~~ THEN DO ~RestParty()~ EXIT
END


IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",6)
OR(2)
Global("J#KelseyNookie","GLOBAL",0)
Global("J#KelseyNookie","GLOBAL",2)~ THEN BEGIN kelseylt6_2_1
SAY @313
IF ~~ THEN REPLY @314 GOTO kelseylt6_2_3
IF ~~ THEN REPLY @315 GOTO kelseylt6_2_4
IF ~~ THEN REPLY @316 GOTO kelseylt6_2_5
IF ~~ THEN REPLY @317 GOTO kelseylt6_2_5
IF ~~ THEN REPLY @318 GOTO kelseylt6_2_2
END

IF ~~ THEN BEGIN kelseylt6_2_2
SAY @319
IF ~~ THEN GOTO kelseylt6_2_5
END

IF ~~ THEN BEGIN kelseylt6_2_3
SAY @320
IF ~~ THEN GOTO kelseylt6_2_5
END

IF ~~ THEN BEGIN kelseylt6_2_4
SAY @321
IF ~~ THEN GOTO kelseylt6_2_5
END

IF ~~ THEN BEGIN kelseylt6_2_5
SAY @322 = @323 = @324
IF ~~ THEN REPLY @325 GOTO kelseylt6_2_6
IF ~~ THEN REPLY @326 GOTO kelseylt6_1_8
IF ~~ THEN REPLY @327 GOTO kelseylt6_2_8
IF ~~ THEN REPLY @328 GOTO kelseylt6_2_9
END

IF ~~ THEN BEGIN kelseylt6_2_6
SAY @329 = @330 = @331
IF ~~ THEN REPLY @332 GOTO kelseylt6_2_10
IF ~~ THEN REPLY @333 GOTO kelseylt6_2_11
IF ~~ THEN REPLY @334 GOTO kelseylt6_2_8
END

/* don't need 7, 12, 13, 14, 15 */

IF ~~ THEN BEGIN kelseylt6_2_8
SAY @335 = @336 = @337
IF ~~ THEN DO ~SetGlobal("J#KelseyNookie","GLOBAL",1)
SetGlobal("FWKelseyTOBMornAfter","LOCALS",2)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_9
SAY @338 = @339
IF ~~ THEN REPLY @340 GOTO kelseylt6_2_16
IF ~~ THEN REPLY @341 GOTO kelseylt6_2_17
IF ~~ THEN REPLY @342 GOTO kelseylt6_2_20
IF ~~ THEN REPLY @343 GOTO kelseylt6_2_21
END

IF ~~ THEN BEGIN kelseylt6_2_10
SAY @344
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_11
SAY @345
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_16
SAY @346 = @347
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_17
SAY @348
IF ~~ THEN REPLY @349 GOTO kelseylt6_2_8
IF ~~ THEN REPLY @350 GOTO kelseylt6_2_8
IF ~~ THEN REPLY @351 GOTO kelseylt6_2_18
IF ~~ THEN REPLY @352 GOTO kelseylt6_2_19
END

IF ~~ THEN BEGIN kelseylt6_2_18
SAY @353
IF ~~ THEN DO ~SetGlobal("J#KelseyNookie","GLOBAL",1)
SetGlobal("FWKelseyTOBMornAfter","LOCALS",2)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_19
SAY @354 = @355
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN kelseylt6_2_20
SAY @356 = @357 = @358
IF ~~ THEN REPLY @359 GOTO kelseylt6_2_8
IF ~~ THEN REPLY @360 GOTO kelseylt6_2_8
IF ~~ THEN REPLY @361 GOTO kelseylt6_2_18
IF ~~ THEN REPLY @362 GOTO kelseylt6_2_19
END

IF ~~ THEN BEGIN kelseylt6_2_21
SAY @363
IF ~~ THEN REPLY @364 GOTO kelseylt6_2_17
IF ~~ THEN REPLY @365 GOTO kelseylt6_2_19
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",8)
Global("FWLovedOne","GLOBAL",6)~ THEN BEGIN kelseylt8_1
SAY @366
IF ~~ THEN REPLY @367 DO ~SetGlobal("FWKelseyDidMW","LOCALS",1)~ GOTO kelseylt8_1a
END

IF ~~ THEN BEGIN kelseylt8_1a
SAY @368 = @369
IF ~~ THEN REPLY @370 GOTO kelseylt8_2
IF ~~ THEN REPLY @371 GOTO kelseylt8_3
IF ~~ THEN REPLY @372 GOTO kelseylt8_2
IF ~~ THEN REPLY @373 GOTO kelseylt8_4
END

IF ~~ THEN BEGIN kelseylt8_2
SAY @374
IF ~~ THEN GOTO kelseylt8_5
END

IF ~~ THEN BEGIN kelseylt8_3
SAY @375
IF ~~ THEN GOTO kelseylt8_5
END

IF ~~ THEN BEGIN kelseylt8_4
SAY @376
IF ~~ THEN GOTO kelseylt8_5
END

IF ~~ THEN BEGIN kelseylt8_5
SAY @377 = @378
IF ~~ THEN REPLY @379 GOTO kelseylt8_6
IF ~~ THEN REPLY @380 GOTO kelseylt8_9
IF ~~ THEN REPLY @381 GOTO kelseylt8_10
END

IF ~~ THEN BEGIN kelseylt8_6
SAY @382 = @383
IF ~~ THEN REPLY @384 GOTO kelseylt8_7
IF ~~ THEN REPLY @385 GOTO kelseylt8_7
IF ~~ THEN REPLY @386 GOTO kelseylt8_8
END

IF ~~ THEN BEGIN kelseylt8_7
SAY @387 = @388
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseylt8_8
SAY @389 = @390
IF ~~ THEN GOTO kelseylt8_7
END

IF ~~ THEN BEGIN kelseylt8_9
SAY @391
IF ~~ THEN GOTO kelseylt8_11
END

IF ~~ THEN BEGIN kelseylt8_10
SAY @392
IF ~~ THEN GOTO kelseylt8_11
END

IF ~~ THEN BEGIN kelseylt8_11
SAY @393 = @394 = @395
IF ~~ THEN EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",10)~ THEN BEGIN klt10_1
SAY @396
IF ~~ THEN REPLY @397 GOTO klt10_3
IF ~~ THEN REPLY @398 GOTO klt10_3
IF ~~ THEN REPLY @399 GOTO klt10_2
END

IF ~~ THEN BEGIN klt10_2
SAY @400
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt10_3
SAY @401 = @402
IF ~~ THEN REPLY @403 GOTO klt10_4
IF ~~ THEN REPLY @404 GOTO klt10_5
IF ~ReputationGT(Player1,14)~ THEN REPLY @405 GOTO klt10_6
IF ~ReputationLT(Player1,15)~ THEN REPLY @406 GOTO klt10_7
IF ~~ THEN REPLY @407 GOTO klt10_8
IF ~~ THEN REPLY @408 GOTO klt10_9
END

IF ~~ THEN BEGIN klt10_4
SAY @409 = @410 = @411
IF ~~ THEN GOTO klt10_10
END

IF ~~ THEN BEGIN klt10_5
SAY @412
IF ~~ THEN GOTO klt10_10
END

IF ~~ THEN BEGIN klt10_6
SAY @413 = @414 = @415
IF ~~ THEN GOTO klt10_10
END

IF ~~ THEN BEGIN klt10_7
SAY @416 = @417
IF ~~ THEN GOTO klt10_11
END

IF ~~ THEN BEGIN klt10_8
SAY @418 = @419 = @420
IF ~~ THEN GOTO klt10_11
END

IF ~~ THEN BEGIN klt10_9
SAY @421 = @422 = @423
IF ~~ THEN GOTO klt10_10
END

IF ~~ THEN BEGIN klt10_10
SAY @424
IF ~~ THEN REPLY @425 GOTO klt10_12
IF ~~ THEN REPLY @426 GOTO klt10_13
IF ~~ THEN REPLY @427 GOTO klt10_13
IF ~~ THEN REPLY @428 GOTO klt10_14
END

IF ~~ THEN BEGIN klt10_11
SAY @429
IF ~~ THEN REPLY @430 GOTO klt10_14
IF ~~ THEN REPLY @431 GOTO klt10_15
IF ~~ THEN REPLY @432 GOTO klt10_12
END

IF ~~ THEN BEGIN klt10_12
SAY @433 = @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt10_13
SAY @435
IF ~~ THEN GOTO klt10_12
END

IF ~~ THEN BEGIN klt10_14
SAY @436
IF ~~ THEN GOTO klt10_12
END

IF ~~ THEN BEGIN klt10_15
SAY @437
IF ~~ THEN EXIT
END


IF ~Global("SaradushSacked","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",12)~ THEN BEGIN klt12_1
SAY @438
IF ~~ THEN REPLY @439 GOTO klt12_2
IF ~~ THEN REPLY @440 GOTO klt12_3
IF ~~ THEN REPLY @441 GOTO klt12_4
IF ~~ THEN REPLY @442 GOTO klt12_6
END

IF ~~ THEN BEGIN klt12_2
SAY @443
IF ~~ THEN GOTO klt12_5
END

IF ~~ THEN BEGIN klt12_3
SAY @444
IF ~~ THEN GOTO klt12_5
END

IF ~~ THEN BEGIN klt12_4
SAY @445
IF ~~ THEN GOTO klt12_5
END

IF ~~ THEN BEGIN klt12_5
SAY @446 = @447 = @448 = @449
IF ~~ THEN REPLY @450 GOTO klt12_7
IF ~~ THEN REPLY @451 GOTO klt12_8
IF ~~ THEN REPLY @452 GOTO klt12_9
IF ~~ THEN REPLY @453 GOTO klt12_8
END

IF ~~ THEN BEGIN klt12_6
SAY @454
IF ~~ THEN REPLY @455 GOTO klt12_6a
IF ~~ THEN REPLY @456 GOTO klt12_5
IF ~~ THEN REPLY @457 GOTO klt12_5
END

IF ~~ THEN BEGIN klt12_6a
SAY @458
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN klt12_7
SAY @459
IF ~Alignment(Player1,MASK_GOOD)~ THEN GOTO klt12_7a
IF ~!Alignment(Player1,MASK_GOOD)~ THEN GOTO klt12_7b
END

IF ~~ THEN BEGIN klt12_7a
SAY @460
IF ~GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10a
IF ~!GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10b
END

IF ~~ THEN BEGIN klt12_7b
SAY @461
IF ~GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10a
IF ~!GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10b
END

IF ~~ THEN BEGIN klt12_8
SAY @462
IF ~GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10a
IF ~!GlobalGT("FWMetKelvim","GLOBAL",0)~ THEN GOTO klt12_10b
END

IF ~~ THEN BEGIN klt12_9
SAY @463
IF ~~ THEN GOTO klt12_8
END

IF ~~ THEN BEGIN klt12_10a
SAY @464 = @465
IF ~~ THEN REPLY @466 GOTO klt12_11
IF ~~ THEN REPLY @467 GOTO klt12_14
IF ~~ THEN REPLY @468 GOTO klt12_12
IF ~~ THEN REPLY @469 GOTO klt12_13
END

IF ~~ THEN BEGIN klt12_10b
SAY @470 = @471 = @472
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt12_11
SAY @473
IF ~~ THEN GOTO klt12_11a
END

IF ~~ THEN BEGIN klt12_11a
SAY @474
IF ~~ THEN GOTO klt12_10b
END

IF ~~ THEN BEGIN klt12_12
SAY @475
IF ~~ THEN GOTO klt12_10b
END

IF ~~ THEN BEGIN klt12_13
SAY @476
IF ~~ THEN GOTO klt12_11a
END

IF ~~ THEN BEGIN klt12_14
SAY @477 = @478
IF ~~ THEN REPLY @479 GOTO klt12_15
IF ~~ THEN REPLY @480 GOTO klt12_16
END

/*
IF ~~ THEN BEGIN klt12_15
SAY @481
IF ~~ THEN DO ~SetGlobal("FWKelseyLeftSaradush","GLOBAL",1)
SetGlobalTimer("FWKelseyAmkethTimer","GLOBAL",THREE_DAYS)
GivePartyAllEquipment()
LeaveParty()
EscapeAreaMove("AR3000",[-1.-1],0)~ EXIT
END
*/

IF ~~ THEN BEGIN klt12_15
SAY @481
IF ~~ THEN DO ~SetGlobal("FWKelseyLeftSaradush","GLOBAL",1)
SetGlobalTimer("FWKelseyAmkethTimer","GLOBAL",THREE_DAYS)
GivePartyAllEquipment()
LeaveParty()
EscapeAreaMove("AR3000",-1,-1,0)~ EXIT
END


IF ~~ THEN BEGIN klt12_16
SAY @482
IF ~~ THEN GOTO klt12_10b
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",14)~ THEN nlt1_1
SAY @1464
++ @1465 + nlt1_allforgiven
++ @1466 + nlt1_howtohurt
++ @1467 + nlt1_havebeentimes
++ @1468 + nlt1_effective
+ ~G("FWAnomenTemptsPC",7)~ + @1469 + nlt1_moretobe
END

IF ~~ nlt1_moretobe
SAY @1470
IF ~~ GOTO nlt1_havebeentimes
END

IF ~~ nlt1_allforgiven
SAY @1471
IF ~~ GOTO nlt1_havebeentimes
END

IF ~~ nlt1_howtohurt
SAY @1472
++ @1473 + nlt1_paranoid
++ @1474 + nlt1_effective
++ @1475 + nlt1_havebeentimes
END

IF ~~ nlt1_paranoid
SAY @1476
IF ~~ GOTO nlt1_havebeentimes
END

IF ~~ nlt1_effective
SAY @1477 = @1478
IF ~~ EXIT
END

IF ~~ nlt1_havebeentimes
SAY @1479
++ @1480 + nlt1_truth
++ @1481 + nlt1_neverfailed
++ @1482 + nlt1_disappointment
++ @1483 + nlt1_wish
++ @1484 + nlt1_neverfailed
END

IF ~~ nlt1_neverfailed
SAY @1485 = @1486
IF ~~ EXIT
END

IF ~~ nlt1_disappointment
SAY @1487 = @1488
IF ~~ DO ~SG("J#KelseyRomanceActive",3)~ EXIT
END

IF ~~ nlt1_wish
SAY @1489 = @1490
IF ~~ EXIT
END

IF ~~ nlt1_truth
SAY @1491
++ @1492 + nlt1_chooseyou
++ @1493 + nlt1_distractions
++ @1494 + nlt1_neverfailed
++ @1495 + nlt1_dull
++ @1496 + nlt1_wish
END

IF ~~ nlt1_chooseyou
SAY @1497
IF ~~ EXIT
END

IF ~~ nlt1_distractions
SAY @1498
IF ~~ EXIT
END

IF ~~ nlt1_dull
SAY @1499 = @1500
IF ~~ EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",16)~ THEN BEGIN klt14_1
SAY @483
IF ~~ THEN REPLY @484 GOTO klt14_3
IF ~~ THEN REPLY @485 GOTO klt14_4
IF ~~ THEN REPLY @486 GOTO klt14_5
IF ~~ THEN REPLY @487 GOTO klt14_2
END

IF ~~ THEN BEGIN klt14_2
SAY @488 = @489
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN klt14_3
SAY @490
IF ~~ THEN GOTO klt14_6
END

IF ~~ THEN BEGIN klt14_4
SAY @491 = @492
IF ~~ THEN GOTO klt14_6
END

IF ~~ THEN BEGIN klt14_5
SAY @493
IF ~~ THEN GOTO klt14_6
END

IF ~~ THEN BEGIN klt14_6
SAY @494 = @495 = @496 = @497 = @498 = @499
IF ~~ THEN REPLY @500 GOTO klt14_7
IF ~~ THEN REPLY @501 GOTO klt14_8
IF ~~ THEN REPLY @502 GOTO klt14_9
IF ~~ THEN REPLY @503 GOTO klt14_10
IF ~~ THEN REPLY @504 GOTO klt14_11
IF ~~ THEN REPLY @1540 GOTO klt14_n1
END

IF ~~ klt14_n1
SAY @1541 = @1542
IF ~~ DO ~SG("FWRemindedKelseyTower",1)~ GOTO klt14_12
END

IF ~~ THEN BEGIN klt14_7
SAY @505
IF ~~ THEN GOTO klt14_12
END

IF ~~ THEN BEGIN klt14_8
SAY @506
IF ~~ THEN GOTO klt14_9
END

IF ~~ THEN BEGIN klt14_9
SAY @507
IF ~~ THEN GOTO klt14_12
END

IF ~~ THEN BEGIN klt14_10
SAY @508
IF ~~ THEN GOTO klt14_12
END

IF ~~ THEN BEGIN klt14_11
SAY @509
IF ~~ THEN GOTO klt14_12
END

IF ~~ THEN BEGIN klt14_12
SAY @510 = @511 = @512 = @513 = @514
IF ~~ THEN REPLY @515 DO ~ApplySpellRES("FWNoFear","J#Kelsey")
SetGlobal("FWWillMarryKelsey","GLOBAL",1)~ GOTO klt14_13
IF ~~ THEN REPLY @516 DO ~ApplySpellRES("FWNoFear","J#Kelsey")
SetGlobal("FWWillMarryKelsey","GLOBAL",1)~ GOTO klt14_14
IF ~~ THEN REPLY @517 DO ~ApplySpellRES("FWNoFear","J#Kelsey")
SetGlobal("FWWillMarryKelsey","GLOBAL",1)~ GOTO klt14_15
IF ~~ THEN REPLY @518 GOTO klt14_16
IF ~~ THEN REPLY @519 GOTO klt14_17
END

IF ~~ THEN BEGIN klt14_13
SAY @520 = @521
IF ~~ THEN GOTO klt14_18
END

IF ~~ THEN BEGIN klt14_14
SAY @522
IF ~~ THEN GOTO klt14_18
END

IF ~~ THEN BEGIN klt14_15
SAY @523
IF ~~ THEN GOTO klt14_18
END

IF ~~ THEN BEGIN klt14_16
SAY @524 = @525
IF ~~ THEN GOTO klt14_19
END

IF ~~ THEN BEGIN klt14_17
SAY @526 = @527
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt14_18
SAY @528
IF ~~ THEN DO ~GiveItemCreate("FWRING01",Player1,0,0,0)~ GOTO klt14_20
END

IF ~~ THEN BEGIN klt14_19
SAY @529
IF ~~ THEN DO ~GiveItemCreate("FWRING01",Player1,0,0,0)~ GOTO klt14_20
END

IF ~~ THEN BEGIN klt14_20
SAY @530 = @531 = @532 = @533
IF ~~ THEN EXIT
END


IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",18)~ THEN BEGIN klt16_1
SAY @534 = @535
IF ~~ THEN REPLY @536 GOTO klt16_2
IF ~~ THEN REPLY @537 GOTO klt16_2
IF ~~ THEN REPLY @538 GOTO klt16_3
END

IF ~~ THEN BEGIN klt16_2
SAY @539 = @540 = @541
IF ~~ THEN REPLY @542 GOTO klt16_2a
IF ~~ THEN REPLY @543 GOTO klt16_2b
IF ~~ THEN REPLY @544 GOTO klt16_2c
END

IF ~~ THEN BEGIN klt16_2a
SAY @545
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt16_2b
SAY @546
IF ~~ THEN GOTO klt16_2b_2
END

IF ~~ THEN BEGIN klt16_2b_2
SAY @547
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt16_2c
SAY @548
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt16_3
SAY @549 = @550
IF ~~ THEN REPLY @551 GOTO klt16_2b
IF ~~ THEN REPLY @552 GOTO klt16_3a
IF ~~ THEN REPLY @553 GOTO klt16_3b
END

IF ~~ THEN BEGIN klt16_3a
SAY @554
IF ~~ THEN GOTO klt16_2b_2
END

IF ~~ THEN BEGIN klt16_3b
SAY @555 = @556
IF ~~ THEN EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",20)~ THEN BEGIN klt18_1
SAY @557 = @558 = @559 = @560
IF ~~ THEN REPLY @561 GOTO klt18_2
IF ~~ THEN REPLY @562 GOTO klt18_2
IF ~~ THEN REPLY @563 DO ~SetGlobal("FWPromisedToStay","GLOBAL",1)~ GOTO klt18_3
IF ~~ THEN REPLY @564 GOTO klt18_6
IF ~Global("FWWillMarryKelsey","GLOBAL",1)~ THEN REPLY @565 DO ~SetGlobal("FWPromisedToStay","GLOBAL",1)~ GOTO klt18_4
IF ~Global("FWWillMarryKelsey","GLOBAL",1)~ THEN REPLY @566 GOTO klt18_5
IF ~~ THEN REPLY @567 GOTO klt18_6
END

IF ~~ THEN BEGIN klt18_2
SAY @568
IF ~~ THEN GOTO klt18_7
END

IF ~~ THEN BEGIN klt18_3
SAY @569
IF ~~ THEN GOTO klt18_7
END

IF ~~ THEN BEGIN klt18_4
SAY @570
IF ~~ THEN GOTO klt18_7
END

IF ~~ THEN BEGIN klt18_5
SAY @571
IF ~~ THEN GOTO klt18_7
END

IF ~~ THEN BEGIN klt18_6
SAY @572 = @573
IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Korgan")~ THEN GOTO klt18_8
IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Korgan")~ THEN EXTERN BKORGA25 klt18_6_korgan
IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN BMINSC25 klt18_6_minsc
END

IF ~~ THEN BEGIN klt18_7
SAY @577 = @578 = @579 = @580 = @581 = @582 = @583
IF ~~ THEN GOTO klt18_8
END

IF ~~ THEN BEGIN klt18_8
SAY @584 = @585 = @586
IF ~~ THEN REPLY @587 GOTO klt18_9
IF ~~ THEN REPLY @588 DO ~SetGlobal("FWPromisedToStay","GLOBAL",1)~ GOTO klt18_10
IF ~~ THEN REPLY @589 EXIT
IF ~~ THEN REPLY @590 GOTO klt18_11
END

IF ~~ THEN BEGIN klt18_9
SAY @591
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt18_10
SAY @592
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt18_11
SAY @593
IF ~~ THEN EXIT
END


IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",22)~ THEN BEGIN klt20_1
SAY @818
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_2
SAY @819
IF ~~ THEN REPLY @820 EXIT
IF ~Global("FWKLT20asset","LOCALS",0)~ THEN REPLY @821 DO ~SetGlobal("FWKLT20asset","LOCALS",1)~ GOTO klt20_asset1
IF ~Global("FWKLT20smile","LOCALS",0)~ THEN REPLY @822 DO ~SetGlobal("FWKLT20smile","LOCALS",1)~ GOTO klt20_smile1
IF ~Global("FWKLT20hot","LOCALS",0)~ THEN REPLY @823 DO ~SetGlobal("FWKLT20hot","LOCALS",1)~ GOTO klt20_hot1
IF ~Global("FWKLT20married","LOCALS",0) Global("FWWillMarryKelsey","GLOBAL",1)~ THEN REPLY @824 DO ~SetGlobal("FWKLT20married","LOCALS",1)~ GOTO klt20_married1
IF ~Global("FWKLT20hero","LOCALS",0)~ THEN REPLY @825 DO ~SetGlobal("FWKLT20hero","LOCALS",1)~ GOTO klt20_hero1
IF ~Race(Player1,ELF) Global("FWKLT20elflife","LOCALS",0)~ THEN REPLY @826 DO ~SetGlobal("FWKLT20elflife","LOCALS",1)~ GOTO klt20_elflife1
IF ~Race(Player1,HALF_ELF) Global("FWKLT20halfelflife","LOCALS",0)~ THEN REPLY @826 DO ~SetGlobal("FWKLT20halfelflife","LOCALS",1)~ GOTO klt20_halfelflife1
IF ~Race(Player1,HALFLING) Global("FWKLT20halflinglife","LOCALS",0)~ THEN REPLY @826 DO ~SetGlobal("FWKLT20halflinglife","LOCALS",1)~ GOTO klt20_halflinglife1
IF ~Global("FWKLT20kiss","LOCALS",0)~ THEN REPLY @827 DO ~SetGlobal("FWKLT20kiss","LOCALS",1)~ GOTO klt20_kiss1
IF ~Global("FWKLT20afraid","LOCALS",0)~ THEN REPLY @828 DO ~SetGlobal("FWKLT20afraid","LOCALS",1)~ GOTO klt20_afraid1
IF ~Global("FWKLT20forget","LOCALS",0)~ THEN REPLY @829 DO ~SetGlobal("FWKLT20forget","LOCALS",1)~ GOTO klt20_forget1
IF ~Global("FWKelseyBaby","GLOBAL",0) Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @830 DO ~SetGlobal("FWKelseyBaby","GLOBAL",1)~ GOTO klt20_baby1
IF ~Global("FWKelseyBaby","GLOBAL",0) Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @831 DO ~SetGlobal("FWKelseyBaby","GLOBAL",1)~ GOTO klt20_baby1
END

IF ~~ THEN BEGIN klt20_baby2
SAY @839
IF ~~ THEN REPLY @840 GOTO klt20_baby3
IF ~~ THEN REPLY @841 GOTO klt20_baby4
IF ~~ THEN REPLY @842 GOTO klt20_baby5
END

IF ~~ THEN BEGIN klt20_baby3
SAY @843
IF ~~ THEN GOTO klt20_baby6
END

IF ~~ THEN BEGIN klt20_baby4
SAY @844
IF ~~ THEN GOTO klt20_baby6
END

IF ~~ THEN BEGIN klt20_baby5
SAY @845
IF ~~ THEN GOTO klt20_baby6
END

IF ~~ THEN BEGIN klt20_baby6
SAY @846 = @847

IF ~~ THEN REPLY @848 GOTO klt20_baby7
IF ~~ THEN REPLY @849 GOTO klt20_baby8
IF ~~ THEN REPLY @850 GOTO klt20_baby9
IF ~Class(Player1,SORCERER)~ THEN REPLY @851 GOTO klt20_2sorcs
END

IF ~~ THEN BEGIN klt20_baby7
SAY @852
IF ~~ THEN GOTO klt20_baby10
END

IF ~~ THEN BEGIN klt20_baby8
SAY @853
IF ~~ THEN GOTO klt20_baby10
END

IF ~~ THEN BEGIN klt20_baby9
SAY @854
IF ~~ THEN GOTO klt20_baby10
END

IF ~~ THEN BEGIN klt20_2sorcs
SAY @855
IF ~~ THEN GOTO klt20_baby10
END

IF ~~ THEN BEGIN klt20_baby10
SAY @856 = @857 = @858 = @859 = @860
IF ~~ THEN REPLY @861 GOTO klt20_baby11
IF ~~ THEN REPLY @862 GOTO klt20_baby12
IF ~~ THEN REPLY @863 GOTO klt20_baby13
END

IF ~~ THEN BEGIN klt20_baby11
SAY @864
IF ~~ THEN GOTO klt20_baby14
END

IF ~~ THEN BEGIN klt20_baby12
SAY @865 = @866
IF ~~ THEN GOTO klt20_baby14
END

IF ~~ THEN BEGIN klt20_baby13
SAY @867
IF ~~ THEN GOTO klt20_baby14
END

IF ~~ THEN BEGIN klt20_baby14
SAY @868 = @869 = @870
IF ~~ THEN REPLY @871 GOTO klt20_baby15
IF ~~ THEN REPLY @872 GOTO klt20_baby15
IF ~~ THEN REPLY @873 GOTO klt20_baby16
IF ~~ THEN REPLY @874 GOTO klt20_baby17
IF ~~ THEN REPLY @875 GOTO klt20_baby18
END

IF ~~ THEN BEGIN klt20_baby15
SAY @876 = @877 = @878
IF ~~ THEN GOTO klt20_baby19
END

IF ~~ THEN BEGIN klt20_baby16
SAY @879 = @880
IF ~~ THEN GOTO klt20_baby19
END

IF ~~ THEN BEGIN klt20_baby17
SAY @881
IF ~~ THEN GOTO klt20_baby19
END

IF ~~ THEN BEGIN klt20_baby18
SAY @882 = @883
IF ~~ THEN GOTO klt20_baby19
END

IF ~~ THEN BEGIN klt20_baby19
SAY @884
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_forget1
SAY @885
IF ~~ THEN REPLY @886 GOTO klt20_forget2
IF ~~ THEN REPLY @887 GOTO klt20_forget4
END

IF ~~ THEN BEGIN klt20_forget2
SAY @888
IF ~~ THEN REPLY @889 GOTO klt20_forget3
END

IF ~~ THEN BEGIN klt20_forget3
SAY @890 = @891
IF ~~ THEN GOTO klt20_forget4
END

IF ~~ THEN BEGIN klt20_forget4
SAY @892 = @893
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_afraid1
SAY @894 = @895 = @896 = @897
IF ~~ THEN REPLY @898 GOTO klt20_afraid2
IF ~~ THEN REPLY @899 GOTO klt20_afraid3
IF ~~ THEN REPLY @900 GOTO klt20_afraid4
IF ~~ THEN REPLY @901 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_afraid2
SAY @902
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_afraid3
SAY @903
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_afraid4
SAY @904
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_kiss1
SAY @905 = @906
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_halflinglife1
SAY @907 = @908 = @909
IF ~~ THEN GOTO klt20_wishhalfelf
END

IF ~~ THEN BEGIN klt20_halfelflife1
SAY @910
IF ~~ THEN GOTO klt20_elflifea
END

IF ~~ THEN BEGIN klt20_elflife1
SAY @911
IF ~~ THEN GOTO klt20_elflifea
END

IF ~~ THEN BEGIN klt20_elflifea
SAY @912
IF ~~ THEN REPLY @913 GOTO klt20_elflife2
IF ~~ THEN REPLY @914 GOTO klt20_elflife4
END

IF ~~ THEN BEGIN klt20_elflife2
SAY @915
IF ~~ THEN REPLY @916 GOTO klt20_elflife3
IF ~~ THEN REPLY @917 GOTO klt20_elflife4
END

IF ~~ THEN BEGIN klt20_elflife3
SAY @918
IF ~~ THEN GOTO klt20_wishhalfelf
END

IF ~~ THEN BEGIN klt20_elflife4
SAY @919
IF ~~ THEN GOTO klt20_wishhalfelf
END

IF ~~ THEN BEGIN klt20_wishhalfelf
SAY @920 = @921
IF ~~ THEN REPLY @922 GOTO klt20_wishhalfelf2
IF ~~ THEN REPLY @923 GOTO klt20_wishhalfelf3
IF ~~ THEN REPLY @924 GOTO klt20_wishhalfelf4
END

IF ~~ THEN BEGIN klt20_wishhalfelf2
SAY @925 = @926 = @927
IF ~~ THEN GOTO klt20_wishhalfelfend
END

IF ~~ THEN BEGIN klt20_wishhalfelf3
SAY @928 = @929
IF ~~ THEN GOTO klt20_wishhalfelfend
END

IF ~~ THEN BEGIN klt20_wishhalfelf4
SAY @930 = @931
IF ~~ THEN GOTO klt20_wishhalfelfend
END

IF ~~ THEN BEGIN klt20_wishhalfelfend
SAY @932 = @933
IF ~~ THEN GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot1
SAY @934
IF ~~ THEN REPLY @935 GOTO klt20_hot2
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot2
SAY @937 = @938
IF ~~ THEN REPLY @939 GOTO klt20_hot3
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot3
SAY @940
IF ~~ THEN REPLY @941 GOTO klt20_hot4
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot4
SAY @942 = @943
IF ~~ THEN REPLY @944 GOTO klt20_hot5
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot5
SAY @945
IF ~~ THEN REPLY @946 GOTO klt20_hot6
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot6
SAY @947
IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @948 GOTO klt20_hot7
IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @948 GOTO klt20_hot8
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot7
SAY @949
IF ~~ THEN REPLY @950 GOTO klt20_hot8
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hot8
SAY @951 = @952 = @953
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_smile1
SAY @954 = @955 = @956
IF ~~ THEN REPLY @957 GOTO klt20_smile2
IF ~~ THEN REPLY @958 GOTO klt20_smile3
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_smile2
SAY @959 = @960
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_smile3
SAY @961
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_asset1
SAY @962 = @963 = @964
IF ~~ THEN REPLY @965 GOTO klt20_asset2
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_asset2
SAY @966
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_married1
SAY @967 = @968 = @969 = @970
IF ~~ THEN REPLY @971 GOTO klt20_married2
IF ~~ THEN REPLY @972 GOTO klt20_married3
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_married2
SAY @973
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_married3
SAY @974 = @975
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hero1
SAY @976
IF ~~ THEN REPLY @977 GOTO klt20_hero2
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hero2
SAY @978
IF ~~ THEN REPLY @979 GOTO klt20_hero3
IF ~~ THEN REPLY @936 GOTO klt20_2
END


IF ~~ THEN BEGIN klt20_hero3
SAY @980 = @981
IF ~~ THEN REPLY @982 GOTO klt20_hero4
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~~ THEN BEGIN klt20_hero4
SAY @983
IF ~~ THEN REPLY @936 GOTO klt20_2
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpLoveTalk","LOCALS",24)~ THEN BEGIN klt22_1
SAY @984
IF ~~ THEN GOTO klt22_chain1
END

IF ~~ THEN BEGIN klt22_1_1
SAY @990
IF ~~ THEN REPLY @991 GOTO klt22_2
IF ~~ THEN REPLY @992 GOTO klt22_3
IF ~~ THEN REPLY @993 GOTO klt22_4
IF ~~ THEN REPLY @994 GOTO klt22_5
END

IF ~~ THEN BEGIN klt22_2
SAY @995
IF ~~ THEN GOTO klt22_6
END

IF ~~ THEN BEGIN klt22_3
SAY @996
IF ~~ THEN GOTO klt22_6
END

IF ~~ THEN BEGIN klt22_4
SAY @997
IF ~~ THEN GOTO klt22_6
END

IF ~~ THEN BEGIN klt22_5
SAY @998
IF ~~ THEN GOTO klt22_6
END

IF ~~ THEN BEGIN klt22_6
SAY @999 = @1000 = @1001 = @1002
IF ~~ THEN REPLY @1003 GOTO klt22_7
IF ~~ THEN REPLY @1004 GOTO klt22_8
IF ~~ THEN REPLY @1005 GOTO klt22_7
END

IF ~~ THEN BEGIN klt22_7
SAY @1006
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt22_8
SAY @1007
IF ~~ THEN EXIT
END



/* IMOEN LTs start here. We could have put them above the PC LTs, it doesn't matter.
The important thing is that they be weighted higher than banters. */

IF ~Global("FWImoenLoveTalk","GLOBAL",4)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt4_1
SAY @605
IF ~~ THEN EXTERN BIMOEN25 ilt4_chain
END

IF ~Global("FWImoenLoveTalk","GLOBAL",10)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt10_1
SAY @651
IF ~~ THEN EXTERN BIMOEN25 ilt10_chain
END

CHAIN2 BIMOEN25 ilt10_chain
@652 = @653 = @654 == @655 == @656 = @657 == @658 == @659 == @660
== @661 = @662 == @663 == @664 == @665 = @666 == @667 == @668
END BIMOEN25 ilt10_end

IF ~Global("FWImoenLoveTalk","GLOBAL",12)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt12_1
SAY @670
IF ~~ THEN EXTERN BIMOEN25 ilt12_1_1
END

IF ~~ THEN BEGIN ilt12_1_2
SAY @672
IF ~~ THEN REPLY @673 EXTERN BIMOEN25 ilt12_2
IF ~~ THEN REPLY @674 EXTERN BIMOEN25 ilt12_3
IF ~~ THEN REPLY @675 EXTERN BIMOEN25 ilt12_4
END

IF ~~ THEN BEGIN ilt12_5_1
SAY @682
IF ~~ THEN REPLY @683 GOTO ilt12_6
IF ~~ THEN REPLY @684 GOTO ilt12_7
END

IF ~~ THEN BEGIN ilt12_6
SAY @685
IF ~~ THEN EXTERN BIMOEN25 ilt12_6_1
END

IF ~~ THEN BEGIN ilt12_7
SAY @687
IF ~~ THEN EXTERN BIMOEN25 ilt12_7_1
END

IF ~~ THEN BEGIN ilt12_8_1
SAY @692
IF ~~ THEN EXTERN BIMOEN25 ilt12_8_2
END

IF ~~ THEN BEGIN ilt14_1_1
SAY @699
IF ~OR(2)
GlobalGT("J#Lovetalk","LOCALS",19)
GlobalGT("FWExpLoveTalk","LOCALS",4)~ THEN REPLY @1543 GOTO ilt14_classy
IF ~~ THEN REPLY @700 GOTO ilt14_3
IF ~~ THEN REPLY @701 GOTO ilt14_10
IF ~~ THEN REPLY @702 GOTO ilt14_8
IF ~~ THEN REPLY @703 GOTO ilt14_2
END

IF ~~ ilt14_classy
SAY @1544
IF ~~ THEN REPLY @707 GOTO ilt14_4
IF ~~ THEN REPLY @708 GOTO ilt14_5
IF ~~ THEN REPLY @709 GOTO ilt14_6
IF ~~ THEN REPLY @710 GOTO ilt14_7
IF ~~ THEN REPLY @711 GOTO ilt14_8
END


IF ~~ THEN BEGIN ilt14_2
SAY @704
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt14_3
SAY @705 = @706
IF ~~ THEN REPLY @707 GOTO ilt14_4
IF ~~ THEN REPLY @708 GOTO ilt14_5
IF ~~ THEN REPLY @709 GOTO ilt14_6
IF ~~ THEN REPLY @710 GOTO ilt14_7
IF ~~ THEN REPLY @711 GOTO ilt14_8
END

IF ~~ THEN BEGIN ilt14_4
SAY @712
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt14_5
SAY @713
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt14_6
SAY @714
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt14_7
SAY @715
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt14_8
SAY @716
IF ~~ THEN REPLY @717 GOTO ilt14_6
IF ~~ THEN REPLY @718 GOTO ilt14_5
IF ~~ THEN REPLY @719 GOTO ilt14_9
END

IF ~~ THEN BEGIN ilt14_9
SAY @720 = @721
IF ~~ THEN DO ~SetGlobal("FWImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ilt14_10
SAY @722 = @723
IF ~~ THEN EXIT
END

IF ~Global("FWImoenLoveTalk","GLOBAL",16)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt16_1
SAY @724
IF ~~ THEN EXTERN BIMOEN25 ilt16_chain
END

IF ~~ THEN BEGIN ilt16_2
SAY @748 = @749
IF ~~ THEN EXTERN BIMOEN25 ilt16_2end
END

IF ~~ THEN BEGIN ilt20_2
SAY @780
IF ~~ THEN GOTO ilt20_4
END

IF ~~ THEN BEGIN ilt20_3
SAY @781
IF ~~ THEN GOTO ilt20_4
END

IF ~~ THEN BEGIN ilt20_4
SAY @782
IF ~~ THEN EXTERN IMOEN25J ilt20_4chain
END

CHAIN2 IMOEN25J ilt20_4chain
@783 = @784 == @785
END IMOEN25J ilt20_4end

IF ~Global("FWImoenLoveTalk","GLOBAL",24)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt24_1
SAY @802
IF ~~ THEN EXTERN BIMOEN25 ilt24_chain
END

CHAIN2 BIMOEN25 ilt24_chain
@803 == @804 == @805 = @806 == @807 == @808 == @809 = @810
== @811 == @812 == @813 == @814 == @815 = @816
END BIMOEN25 ilt24_end

IF ~Global("FWImoenLoveTalk","GLOBAL",26)
!StateCheck("Imoen2",STATE_SLEEPING)~ THEN BEGIN ilt26_1
SAY @1375
IF ~~ THEN EXTERN BIMOEN25 ilt26_chain
END

IF ~~ THEN BEGIN kipower_end
SAY @1077
IF ~~ THEN EXIT
END

// Cernd wake-up banter is here. Used to be lower but I was getting clashing from the floating LT.

IF ~G("FWGoodNightCernd",1)
InParty("Cernd")~ nightcernd
SAY @1343 = @1344
IF ~~ THEN DO ~SG("FWGoodNightCernd",2)~ EXTERN BCERND25 nightcerndchain
END



/* "Floating PC LOVETALK" is here. Honestly, this should have been a sequenced LT but I forgot about it
and I don't feel like slotting it in anywhere, so it runs when it runs. */

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWFloatingLT","LOCALS",0)~ THEN BEGIN kltf_1
SAY @1008 = @1009
IF ~~ THEN REPLY @1010 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_2
IF ~ReputationGT(Player1,12)~ THEN REPLY @1011 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_3
IF ~ReputationLT(Player1,13)~ THEN REPLY @1011 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_4
IF ~~ THEN REPLY @1012 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_7
IF ~~ THEN REPLY @1013 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_5
IF ~~ THEN REPLY @1014 DO ~SetGlobal("FWFloatingLT","LOCALS",1)~ GOTO kltf_6
END

IF ~~ THEN BEGIN kltf_2
SAY @1015
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_3
SAY @1016
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_4
SAY @1017 = @1018
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_5
SAY @1019
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_6
SAY @1020
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_7
SAY @1021
IF ~~ THEN REPLY @1022 GOTO kltf_8
IF ~~ THEN REPLY @1023 GOTO kltf_7a
IF ~~ THEN REPLY @1024 GOTO kltf_7b
IF ~~ THEN REPLY @1025 GOTO kltf_7c
END

IF ~~ THEN BEGIN kltf_7a
SAY @1026 = @1027
IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN kltf_7b
SAY @1028
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_7c
SAY @1029
IF ~~ THEN GOTO kltf_8
END

IF ~~ THEN BEGIN kltf_8
SAY @1030 = @1031 = @1032 = @1033 = @1034
IF ~~ THEN REPLY @1035 GOTO kltf_11
IF ~~ THEN REPLY @1036 GOTO kltf_9
IF ~~ THEN REPLY @1037 GOTO kltf_10
END

IF ~~ THEN BEGIN kltf_9
SAY @1038
IF ~~ THEN GOTO kltf_11
END

IF ~~ THEN BEGIN kltf_10
SAY @1039
IF ~~ THEN GOTO kltf_11
END

IF ~~ THEN BEGIN kltf_11
SAY @1040 = @1041 = @1042
IF ~~ THEN REPLY @1043 GOTO kltf_12
IF ~~ THEN REPLY @1044 GOTO kltf_13
IF ~~ THEN REPLY @1045 GOTO kltf_14
IF ~~ THEN REPLY @1046 GOTO kltf_15
END

IF ~~ THEN BEGIN kltf_12
SAY @1047
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kltf_13
SAY @1048
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kltf_14
SAY @1049
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kltf_15
SAY @1050
IF ~~ THEN EXIT
END



/* Regular Banters Start Here */

IF ~XPGT("J#Kelsey",3600000)
OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,SORCERER)
See(Player1)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("FWKelseyMageryBanter","LOCALS",0)~ magerybanter
SAY @1413 = @1414 = @1415
+ ~G("J#KelseyRomanceActive",2)~ + @1416 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mbsilenceromance
+ ~!G("J#KelseyRomanceActive",2)~ + @1416 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mbsilence
++ @1417 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mbgrowordie
++ @1418 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mbbetterthani
++ @1419 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mblikeyouare
++ @1420 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mblikeyouwere
++ @1421 DO ~SetGlobal("FWKelseyMageryBanter","LOCALS",1)~ + mbnewchallenge
END

IF ~~ mblikeyouare
SAY @1422
IF ~~ EXIT
END

IF ~~ mblikeyouwere
SAY @1423
IF ~~ GOTO mbnarrative
END

IF ~~ mbnewchallenge
SAY @1424
IF ~~ GOTO mbnarrative
END

IF ~~ mbsilenceromance
SAY @1425
IF ~~ EXIT
END

IF ~~ mbsilence
SAY @1426
IF ~~ EXIT
END

IF ~~ mbgrowordie
SAY @1427
IF ~~ GOTO mbnarrative
END

IF ~~ mbbetterthani
SAY @1428
IF ~G("J#KelseyRomanceActive",2)~ GOTO mbbetterthani2rom
IF ~!G("J#KelseyRomanceActive",2)~ GOTO mbbetterthani2
END

IF ~~ mbbetterthani2
SAY @1429
++ @1430 + mbnofurther
++ @1431 + mbwary
++ @1432 + mblearnfrom
++ @1433 + mbhireelse
END

IF ~~ mbnofurther
SAY @1434
IF ~~ EXIT
END

IF ~~ mbwary
SAY @1435
IF ~~ EXIT
END

IF ~~ mblearnfrom
SAY @1436
IF ~~ EXIT
END

IF ~~ mbhireelse
SAY @1437
IF ~~ EXIT
END

IF ~~ mbbetterthani2rom
SAY @1438 = @1439
++ @1430 + mbnofurther2
++ @1431 + mbwary
++ @1432 + mblearnfrom2
++ @1433 + mbhireelse2
END

IF ~~ mbnofurther2
SAY @1440
IF ~~ EXIT
END

IF ~~ mblearnfrom2
SAY @1441
IF ~~ EXIT
END

IF ~~ mbhireelse2
SAY @1442
IF ~~ EXIT
END

IF ~~ mbnarrative
SAY @1443 = @1444 = @1445
IF ~G("J#KelseyRomanceActive",2)~ GOTO mbnarrativeendrom
IF ~!G("J#KelseyRomanceActive",2)~ GOTO mbnarrativeend
END

IF ~~ mbnarrativeend
SAY @1446
IF ~~ EXIT
END

IF ~~ mbnarrativeendrom
SAY @1447
IF ~~ EXIT
END







IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWExpKelseyPC1","LOCALS",0)~ THEN BEGIN kpc1_1
SAY @1088 = @1089
IF ~~ THEN REPLY @1090 GOTO kpc1_2
IF ~~ THEN REPLY @1091 GOTO kpc1_2
IF ~~ THEN REPLY @1092 GOTO kpc1_3
IF ~~ THEN REPLY @1093 GOTO kpc1_4
END

IF ~~ THEN BEGIN kpc1_2
SAY @1094
IF ~~ THEN GOTO kpc1_5
END

IF ~~ THEN BEGIN kpc1_3
SAY @1095
IF ~~ THEN GOTO kpc1_5
END

IF ~~ THEN BEGIN kpc1_4
SAY @1096
IF ~~ THEN GOTO kpc1_5
END

IF ~~ THEN BEGIN kpc1_5
SAY @1097 = @1098 = @1099
IF ~~ THEN DO ~SetGlobal("FWExpKelseyPC1","LOCALS",1)~ EXIT
END

IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("FWImoenPCRomcomment","LOCALS",0)
Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN BEGIN kelimpc1
SAY @1100
IF ~~ THEN DO ~SetGlobal("FWImoenPCRomcomment","LOCALS",1)~ EXTERN BIMOEN25 kelimpc_chain
END

CHAIN2 BIMOEN25 kelimpc_chain
@1101 == @1102 == @1103 == @1104 == @1105 == @1106 == @1107 = @1108 == @1109
== @1110 = @1111 == @1112 == @1113 == @1114 = @1115
END BIMOEN25 kelimpc_end

IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("FWExpAnomenServTalk","LOCALS",0)~ THEN BEGIN anomenserv1
SAY @1117
IF ~~ THEN DO ~SetGlobal("FWExpAnomenServTalk","LOCALS",1)~ EXTERN BANOME25 anomenservchain
END

IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("FWExpKelsey1","LOCALS",0)~ THEN BEGIN kelkor1
SAY @1
IF ~~ THEN DO ~SetGlobal("FWExpKelsey1","LOCALS",1)~ EXTERN BKORGA25 bkor1
END

IF ~~ THEN BEGIN anomenkelsey1end
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN keldornkelsey1end
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kelseymazzy1end
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN minsckelsey1_2
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriekelsey2_3
SAY @102
IF ~~ THEN EXTERN BAERIE25 aeriekelsey2_4
END

IF ~~ THEN BEGIN aeriekelsey2_5
SAY @104
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN naliakelsey1end
SAY @201
IF ~~ THEN EXIT
END


IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("FWExpKelsey2","LOCALS",0)~ THEN BEGIN kelval1
SAY @113
IF ~~ THEN DO ~SetGlobal("FWExpKelsey2","LOCALS",1)~ EXTERN BVALYG25 kelval1chain
END

CHAIN2 BVALYG25 kelval1chain
@114 == @115 == @116 == @117 == @118 = @119 == @120 == @121 = @122 == @123 == @1200
END BJ#KLS25 kelval1end

IF ~~ THEN BEGIN kelval1end
SAY @1201
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN edwinkelsey1_2
SAY @186
IF ~~ THEN EXTERN BEDWIN25 edwinkelsey1end
END

IF ~InParty("Aerie")
See("Aerie")
AreaType(City)
!StateCheck("Aerie",STATE_SLEEPING)
Global("FWExpKelseyAerie3","LOCALS",0)~ THEN BEGIN kelaernec1
SAY @1128
IF ~~ THEN DO ~SetGlobal("FWExpKelseyAerie3","LOCALS",1)~ EXTERN BAERIE25 kelaernec_chain
END

CHAIN2 BAERIE25 kelaernec_chain
@1129 = @1130 == @1131 == @1132 == @1133 == @1134 = @1135
END BJ#KLS25 kelaernecend

IF ~~ THEN BEGIN kelaernecend
SAY @1136
IF ~~ THEN EXIT
END



IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("FWExpKelsey3","LOCALS",0)~ THEN BEGIN kelsarevok1
SAY @159
IF ~~ THEN DO ~SetGlobal("FWExpKelsey3","LOCALS",1)~ EXTERN BSAREV25 kelsarevok1chain
END

CHAIN2 BSAREV25 kelsarevok1chain
@160 == @161 == @162 == @163 == @164 == @165 == @166
END BSAREV25 kelsarevok1end

IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("FWExpKelseyKeldorn2","LOCALS",0)~ THEN BEGIN kelskeld1
SAY @1146
IF ~~ THEN DO ~SetGlobal("FWExpKelseyKeldorn2","LOCALS",1)~ EXTERN BKELDO25 kelskeldchain
END

CHAIN2 BKELDO25 kelskeldchain
@1147 == @1148 == @1149 == @1150 == @1151 = @1152 == @1153
END BKELDO25 kelskeld1end

IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("FWExpKelsey4","LOCALS",0)~ THEN BEGIN keljaheira1
SAY @168
IF ~~ THEN DO ~SetGlobal("FWExpKelsey4","LOCALS",1)~ EXTERN BJAHEI25 keljaheira1chain
END

CHAIN2 BJAHEI25 keljaheira1chain
@169 == @170 == @171 == @172 == @173 == @174 == @175 == @176 == @177
== @178 == @179 == @180 == @181 == @182 == @183
END BJ#KLS25 keljaheira1end

IF ~~ THEN BEGIN keljaheira1end
SAY @184
IF ~~ THEN EXIT
END

IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("FWExpKelsey4","LOCALS",1)~ THEN BEGIN keljahjoke1
SAY @1137
IF ~~ THEN DO ~SetGlobal("FWExpKelsey4","LOCALS",2)~ EXTERN BJAHEI25 keljahjokechain
END

CHAIN3 BJAHEI25 keljahjokechain
@1138
== BJ#KLS25 @1139 = @1140
== BJAHEI25 IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @1141
== BJAHEI25 IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @1142
= @1143
== BJ#KLS25 @1144
END BJAHEI25 keljahjokeend





CHAIN3 BANOME25 anomenservchain
@1118
== BJ#KLS25 @1119
== BANOME25 @1120
== BJ#KLS25 @1121
= IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @1122
== BANOME25 @1123
== BJ#KLS25 @1124
== BANOME25 @1125
== BJ#KLS25 @1126
END BANOME25 anomenservend




CHAIN3 BJ#KLS25 klt22_chain1
@985 = @986 = @987
= IF ~Global("FWWillMarryKelsey","GLOBAL",1)~ THEN @988
= IF ~Global("FWKelseyBaby","GLOBAL",1)~ THEN @989
END BJ#KLS25 klt22_1_1

CHAIN3 BJ#KLS25 klt20_baby1 @832
= IF ~Global("FWKelseySaidBabyCulprit","GLOBAL",0) InParty("Jaheira")~ THEN @833 DO ~SetGlobal("FWKelseySaidBabyCulprit","GLOBAL",1)~
= IF ~Global("FWKelseySaidBabyCulprit","GLOBAL",0) InParty("Cernd")~ THEN @834 DO ~SetGlobal("FWKelseySaidBabyCulprit","GLOBAL",1)~
= IF ~Global("FWKelseySaidBabyCulprit","GLOBAL",0) IsValidForPartyDialog("Aerie")~ THEN @835 DO ~SetGlobal("FWKelseySaidBabyCulprit","GLOBAL",1) SetGlobal("FWKelseySaidAerieCulprit","GLOBAL",1)~
== BAERIE IF ~Global("FWKelseySaidAerieCulprit","GLOBAL",1) IsValidForPartyDialog("Aerie")~ THEN @836
== BJ#KLS25 IF ~Global("FWKelseySaidBabyCulprit","GLOBAL",0)~ THEN @837
== BJ#KLS25 @838
END BJ#KLS25 klt20_baby2


CHAIN3 BKORGA25 bkor1 @2
= IF ~InParty("Aerie")~ THEN @3
== BAERIE25 IF ~InParty("Aerie")~ THEN @4
== BKORGA25 IF ~!InParty("Aerie") InParty("Minsc")~ THEN @5
== BMINSC25 IF ~!InParty("Aerie") InParty("Minsc")~ THEN @6
== BKORGA25 IF ~!InParty("Aerie") !InParty("Minsc") InParty("Cernd")~ THEN @7
== BCERND25 IF ~!InParty("Aerie") !InParty("Minsc") InParty("Cernd")~ THEN @8
== BKORGA25 IF ~!InParty("Aerie") !InParty("Minsc") !InParty("Cernd")~ THEN @9
== BJ#KLS25 @10
END BKORGA25 bkor1end

CHAIN3 BIMOEN25 ilt4_chain @606
== BJ#KLS25 @607
== BIMOEN25 @608
== BJ#KLS25 @609
== BIMOEN25 @610
== BJ#KLS25 @611
== BIMOEN25 @612 = @613
== BIMOEN25 IF ~IsValidForPartyDialog("Nalia")~ THEN @614
== BNALIA25 IF ~IsValidForPartyDialog("Nalia")~ THEN @615
== BJ#KLS25 @616
== BIMOEN25 @617
== BJ#KLS25 @618
== BIMOEN25 @619
== BJ#KLS25 @620
END BIMOEN25 ilt4_end

CHAIN3 BIMOEN25 ilt16_chain @725
== BJ#KLS25 @726
== BVALYG25 IF ~IsValidForPartyDialog("Valygar")~ THEN @727
== BIMOEN25 @728
== BANOME25 IF ~IsValidForPartyDialog("Anomen")~ THEN @729
== BJ#KLS25 @730
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @731
== BIMOEN25 @732
== BHAERD25 IF ~IsValidForPartyDialog("HaerDalis")~ THEN @733
== BJ#KLS25 @734
== BSAREV25 IF ~IsValidForPartyDialog("Sarevok")~ THEN @735
== BIMOEN25 @736
== BKORGA25 IF ~IsValidForPartyDialog("Korgan")~ THEN @737
== BJ#KLS25 @738
== BJAN25 IF ~IsValidForPartyDialog("Jan")~ THEN @739
== BIMOEN25 @740
== BAERIE25 IF ~IsValidForPartyDialog("Aerie")~ THEN @741
== BJ#KLS25 @742
== BVICON25 IF ~IsValidForPartyDialog("Viconia")~ THEN @743
END BIMOEN25 ilt16_endchain



APPEND BKORGA25

IF ~~ THEN BEGIN bkor1end
SAY @11
IF ~~ THEN EXIT
END

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpKorgan1","LOCALS",0)~ THEN BEGIN korkel2
SAY @12
IF ~~ THEN DO ~SetGlobal("FWExpKorgan1","LOCALS",1)~ EXTERN BJ#KLS25 korkel2chain
END

IF ~~ THEN BEGIN korkel2end1
SAY @25
IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN BIMOEN25 korgan1
IF ~!IsValidForPartyDialog("Imoen2")~ THEN EXIT
END

IF ~~ THEN BEGIN korkel2end2
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN korgangod2
SAY @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt18_6_korgan
SAY @575
IF ~!IsValidForPartyDialog("Mazzy")~ THEN EXTERN BJ#KLS25 klt18_8
IF ~IsValidForPartyDialog("Mazzy")~ THEN EXTERN BMAZZY25 klt18_6_mazzy
END

CHAIN2 BJ#KLS25 korkel2chain
@13 == @14 == @15 = @16 = @17 == @18 == @19 == @20 == @21 == @22 = @23 == @24
END BKORGA25 korkel2end1

END


/* We put Imoen-initiated Kelsey/Imoen LOVETALKs in Imoen25J, rather than BIMOEN25, because
Ascension gives her some PC banters weighted to the top of her stack and we don't want to compete
or interfere with them. There's nothing particularly wrong with this approach, it's just unusual.
Nobody said loving Imoen was easy. */

APPEND IMOEN25J

IF WEIGHT #-1 ~Global("FWImoenLoveTalk","GLOBAL",2)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt2_1
SAY @594
IF ~~ THEN EXTERN BJ#KLS25 ilt2_chain
END

CHAIN2 BJ#KLS25 ilt2_chain
@595 == @596 = @597 == @598 == @599 == @600 == @601 = @602 == @603
END IMOEN25J ilt2_end

IF ~~ THEN BEGIN ilt2_end
SAY @604
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("FWImoenLoveTalk","GLOBAL",6)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt6_1
SAY @622
IF ~~ THEN EXTERN BJ#KLS25 ilt6_chain
END

CHAIN2 BJ#KLS25 ilt6_chain
@623 == @624 == @625 == @626 == @627 = @628 == @629 == @630 == @631 == @632 == @633 == @634 == @635 == @636
END IMOEN25J ilt6_end

IF ~~ THEN BEGIN ilt6_end
SAY @637
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~Global("FWImoenLoveTalk","GLOBAL",8)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt8_1
SAY @638
IF ~~ THEN EXTERN BJ#KLS25 ilt8_chain
END

CHAIN2 BJ#KLS25 ilt8_chain
@639 == @640 == @641 == @642 == @643 == @644 == @645 == @646 == @647 == @648 == @649
END IMOEN25J ilt8_end

IF ~~ THEN BEGIN ilt8_end
SAY @650
IF ~~ THEN EXIT
END

IF WEIGHT #-4 ~Global("FWImoenLoveTalk","GLOBAL",14)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt14_1
SAY @694
IF ~~ THEN EXTERN BJ#KLS25 ilt14_chain
END

CHAIN2 BJ#KLS25 ilt14_chain
@695 == @696 == @697 = @698
END BJ#KLS25 ilt14_1_1

IF WEIGHT #-5 ~Global("FWImoenLoveTalk","GLOBAL",18)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt18_1
SAY @751
IF ~~ THEN EXTERN BJ#KLS25 ilt18_chain
END

CHAIN2 BJ#KLS25 ilt18_chain
@752 == @753 = @754 == @755 == @756 == @757 == @758 = @1300 == @759 == @760
= @761 = @762 = @763 == @764 == @765 == @766
END IMOEN25J ilt18_end

IF ~~ THEN BEGIN ilt18_end
SAY @767
IF ~~ THEN DO ~SetGlobal("FWImoenRomanceActive","GLOBAL",2)
ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell("Imoen2",WIZARD_RESIST_FEAR)~ EXIT
END

IF WEIGHT #-6 ~Global("FWImoenLoveTalk","GLOBAL",20)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt20_1
SAY @768
IF ~~ THEN EXTERN BJ#KLS25 ilt20_chain
END

CHAIN2 BJ#KLS25 ilt20_chain
@769 == @770 == @771 == @772 == @773 == @774 == @775
END IMOEN25J ilt20_1_1

IF ~~ THEN BEGIN ilt20_1_1
SAY @776
IF ~~ THEN REPLY @777 EXTERN BJ#KLS25 ilt20_4
IF ~~ THEN REPLY @778 EXTERN BJ#KLS25 ilt20_2
IF ~~ THEN REPLY @779 EXTERN BJ#KLS25 ilt20_3
END

IF ~~ THEN BEGIN ilt20_4end
SAY @786
IF ~~ THEN DO ~RunAwayFrom("J#Kelsey",45)~ EXIT
END

IF WEIGHT #-7 ~Global("FWImoenLoveTalk","GLOBAL",22)
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN ilt22_1
SAY @787
IF ~~ THEN EXTERN BJ#KLS25 ilt22_chain
END

CHAIN2 BJ#KLS25 ilt22_chain
@788 == @789 == @790 == @791 = @792 == @793 = @794 == @795 == @796
== @797 == @798 == @799 == @800
END IMOEN25J ilt22_end

IF ~~ THEN BEGIN ilt22_end
SAY @801
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell("Imoen2",WIZARD_RESIST_FEAR)~ EXIT
END

END

CHAIN IF WEIGHT #-7
~Global("FWImoenLoveTalk","GLOBAL",28)
!StateCheck("J#Kelsey",STATE_SLEEPING)~
THEN IMOEN25J ilt28chain
@1403
== BJ#KLS25 @1404
== IMOEN25J @1405 = @1406
== BJ#KLS25 @1407
== IMOEN25J @1408
== BJ#KLS25 @1409
== IMOEN25J @1410
== BJ#KLS25 @1411
== IMOEN25J @1412
EXIT


APPEND BIMOEN25

IF WEIGHT #4
~GlobalGT("ExpBImoen10","LOCALS",1)
GlobalGT("FWImoenLoveTalk","GLOBAL",12)
!Global("FWImoenLoveTalk","GLOBAL",21)
InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWImoenKelseyPowerChat","LOCALS",0)~ THEN BEGIN kipower_1
SAY @1051
IF ~~ THEN DO ~SetGlobal("FWImoenKelseyPowerChat","LOCALS",1)~ EXTERN BJ#KLS25 kipower_chain
END

CHAIN2 BJ#KLS25 kipower_chain
@1052 == @1053 = @1054 == @1055 == @1056 == @1057 == @1058 == @1059 == @1060 = @1061
= @1062 == @1063 == @1064 == @1065 = @1066 == @1067 == @1068 = @1069 == @1070 == @1071
== @1072 = @1073 == @1074 = @1075 == @1076
END BJ#KLS25 kipower_end


IF ~~ THEN BEGIN korgan1
SAY @26
IF ~~ THEN EXTERN BKORGA25 korkel2end2
END

IF ~~ THEN BEGIN ilt4_end
SAY @621
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt10_end
SAY @669
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN ilt12_1_1
SAY @671
IF ~~ THEN EXTERN BJ#KLS25 ilt12_1_2
END

IF ~~ THEN BEGIN ilt12_2
SAY @676 = @677
IF ~~ THEN GOTO ilt12_5
END

IF ~~ THEN BEGIN ilt12_3
SAY @678 = @679
IF ~~ THEN GOTO ilt12_5
END

IF ~~ THEN BEGIN ilt12_4
SAY @680
IF ~~ THEN GOTO ilt12_5
END

IF ~~ THEN BEGIN ilt12_5
SAY @681
IF ~~ THEN EXTERN BJ#KLS25 ilt12_5_1
END

IF ~~ THEN BEGIN ilt12_6_1
SAY @686
IF ~~ THEN GOTO ilt12_8
END

IF ~~ THEN BEGIN ilt12_7_1
SAY @688
IF ~~ THEN GOTO ilt12_8
END

IF ~~ THEN BEGIN ilt12_8
SAY @690 = @691
IF ~~ THEN EXTERN BJ#KLS25 ilt12_8_1
END

IF ~~ THEN BEGIN ilt12_8_2
SAY @693
IF ~~ THEN DO ~ApplySpellRES("J#LoSpel","J#Kelsey")
ApplySpellRES("J#LoSpel","Imoen2")~ EXIT
END

IF ~~ THEN BEGIN ilt16_endchain
SAY @744
IF ~~ THEN REPLY @745 EXTERN BJ#KLS25 ilt16_2
IF ~~ THEN REPLY @746 EXTERN BJ#KLS25 ilt16_2
IF ~~ THEN REPLY @747 EXTERN BJ#KLS25 ilt16_2
END

IF ~~ THEN BEGIN ilt16_2end
SAY @750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ilt24_end
SAY @817
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell("Imoen2",WIZARD_RESIST_FEAR)~ EXIT
END

IF ~~ THEN BEGIN kelimpc_end
SAY @1116
IF ~~ THEN EXIT
END

END

APPEND BANOME25

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
!Alignment("Anomen",LAWFUL_GOOD)
Global("FWExpAnomen1","LOCALS",0)~ THEN BEGIN anomenkelsey1
SAY @28
IF ~~ THEN DO ~SetGlobal("FWExpAnomen1","LOCALS",1)~ EXTERN BJ#KLS25 anomenkelsey1chain
END

IF ~~ THEN BEGIN anomenservend
SAY @1127
IF ~~ THEN EXIT
END

CHAIN2 BJ#KLS25 anomenkelsey1chain
@29 == @30 == @31 == @32 == @33 = @34 == @35
END BJ#KLS25 anomenkelsey1end


END



APPEND BHAERD25

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpHD1","LOCALS",0)~ THEN BEGIN hdkelsey1
SAY @37
IF ~~ THEN DO ~SetGlobal("FWExpHD1","LOCALS",1)~ EXTERN BJ#KLS25 hdkelsey1chain
END

CHAIN2 BJ#KLS25 hdkelsey1chain
@38 == @39 == @40 == @41 = @42 == @43 == @44 == @45
END BHAERD25 hdkelsey1end

IF ~~ THEN BEGIN hdkelsey1end
SAY @46
IF ~~ THEN EXIT
END

END



APPEND BKELDO25

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpKeldorn1","LOCALS",0)~ THEN BEGIN keldornkelsey1
SAY @47
IF ~~ THEN DO ~SetGlobal("FWExpKeldorn1","LOCALS",1)~ EXTERN BJ#KLS25 keldornkelsey1chain
END

IF ~~ THEN BEGIN kelskeld1end
SAY @1154
IF ~~ THEN EXIT
END

END

CHAIN3 BJ#KLS25 keldornkelsey1chain
@48
== BKELDO25 @49
== BJ#KLS25 @50
== BKELDO25 @51 = @52
== BJ#KLS25 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @53
== BKELDO25 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @54
== BJ#KLS25 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @55
== BKELDO25 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @56
== BJ#KLS25 IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @57
== BKELDO25 IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @58
== BJ#KLS25 IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @59
== BJ#KLS25 IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @60
== BKELDO25 @61
END BJ#KLS25 keldornkelsey1end

APPEND BMAZZY25

IF ~!AreaCheck("AR4000")
!AreaCheck("AR4500")
InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpMazzy1","LOCALS",0)~ THEN BEGIN kelseymazzy1
SAY @63
IF ~~ THEN DO ~SetGlobal("FWExpMazzy1","LOCALS",1)~ EXTERN BJ#KLS25 kelseymazzy1chain
END

IF ~~ THEN BEGIN klt18_6_mazzy
SAY @576
IF ~~ THEN EXTERN BJ#KLS25 klt18_8
END

CHAIN2 BJ#KLS25 kelseymazzy1chain
@64 == @65 == @66 = @67 == @68 == @69 == @70 == @71 == @72 = @73
END BJ#KLS25 kelseymazzy1end

END

APPEND BMINSC25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpMinsc1","LOCALS",0)~ THEN BEGIN minsckelsey1
SAY @75
IF ~~ THEN DO ~SetGlobal("FWExpMinsc1","LOCALS",1)~ EXTERN BJ#KLS25 minsckelsey1_2
END

IF ~~ THEN BEGIN minsckelsey1end
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN klt18_6_minsc
SAY @574
IF ~!IsValidForPartyDialog("Korgan")~ THEN EXTERN BJ#KLS25 klt18_8
IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN BKORGA25 klt18_6_korgan
END

END

APPEND BAERIE25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpAerie1","LOCALS",0)~ THEN BEGIN aeriekelsey1
SAY @78
IF ~~ THEN DO ~SetGlobal("FWExpAerie1","LOCALS",1)~ EXTERN BJ#KLS25 aeriekelsey1chain
END

CHAIN2 BJ#KLS25 aeriekelsey1chain
@79 == @80 == @81 == @82 == @83 = @84 == @85 = @86 == @87
END BAERIE25 aeriekelsey1end

IF ~~ THEN BEGIN aeriekelsey1end
SAY @88
IF ~~ THEN EXIT
END

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpAerie1","LOCALS",1)~ THEN BEGIN aeriekelsey2
SAY @89
IF ~~ THEN DO ~SetGlobal("FWExpAerie1","LOCALS",2)~ EXTERN BJ#KLS25 aeriekelsey2chain
END

IF ~~ THEN BEGIN aeriekelsey2_2
SAY @101
IF ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN EXIT
IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)
!Global("FWImoenRomanceActive","GLOBAL",2)~ THEN EXTERN BJ#KLS25 aeriekelsey2_3
END

IF ~~ THEN BEGIN aeriekelsey2_4
SAY @103
IF ~~ THEN EXTERN BJ#KLS25 aeriekelsey2_5
END

CHAIN2 BJ#KLS25 aeriekelsey2chain
@90 == @91 == @92 == @93 = @94 == @95 == @96 == @97 = @98 == @99 == @100
END BAERIE25 aeriekelsey2_2

IF ~~ THEN BEGIN aeriegod2
SAY @145
IF ~~ THEN EXTERN BJAN25 aeriegod3
END

END

APPEND BVICON25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
Global("FWExpViconia1","LOCALS",1)~ THEN BEGIN viconiakelsey1
SAY @105
IF ~~ THEN DO ~SetGlobal("FWExpViconia1","LOCALS",2)~ EXTERN BJ#KLS25 viconiakelsey1chain
END

IF ~~ THEN BEGIN viconiakelsey1end
SAY @112
IF ~~ THEN EXIT
END

CHAIN2 BJ#KLS25 viconiakelsey1chain
@106 == @107 == @108 == @109 == @110 = @111
END BVICON25 viconiakelsey1end

END

APPEND BJAN25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpJan1","LOCALS",0)~ THEN BEGIN jankelsey1
SAY @124
IF ~~ THEN DO ~SetGlobal("FWExpJan1","LOCALS",1)~ EXTERN BJ#KLS25 jankelsey1chain
END

IF ~~ THEN BEGIN jankelsey1_2
SAY @141
IF ~!IsValidForPartyDialog("Sarevok")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Korgan")~ THEN EXIT
IF ~!IsValidForPartyDialog("Sarevok")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Korgan")~ THEN GOTO korgangod1
IF ~!IsValidForPartyDialog("Sarevok")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Jaheira")~ THEN GOTO jaheiragod1
IF ~!IsValidForPartyDialog("Sarevok")
IsValidForPartyDialog("Aerie")~ THEN GOTO aeriegod1
IF ~IsValidForPartyDialog("Sarevok")~ THEN GOTO sarevokgod1
END

IF ~~ THEN BEGIN korgangod1
SAY @150
IF ~~ THEN EXTERN BKORGA25 korgangod2
END

IF ~~ THEN BEGIN jaheiragod1
SAY @147
IF ~~ THEN EXTERN BJAHEI25 jaheiragod2
END

IF ~~ THEN BEGIN jaheiragod3
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sarevokgod1
SAY @142
IF ~~ THEN EXTERN BSAREV25 sarevokgod2
END

IF ~~ THEN BEGIN aeriegod1
SAY @144
IF ~~ THEN EXTERN BAERIE25 aeriegod2
END

IF ~~ THEN BEGIN aeriegod3
SAY @146
IF ~~ THEN EXIT
END


CHAIN2 BJ#KLS25 jankelsey1chain
@125 == @126 = @127 == @128 == @129 = @130 == @131 == @132 = @133 == @134 == @135 == @136
== @137 == @138 == @139 == @140
END BJAN25 jankelsey1_2

END

APPEND BSAREV25

IF ~~ THEN BEGIN sarevokgod2
SAY @143
IF ~~ THEN EXIT
END

IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpSarevok1","LOCALS",0)~ THEN BEGIN sarevokkelsey1
SAY @152
IF ~~ THEN DO ~SetGlobal("FWExpSarevok1","LOCALS",1)~ EXTERN BJ#KLS25 sarevokkelsey1chain
END

IF ~~ THEN BEGIN sarevokkelsey1end
SAY @158
IF ~~ THEN EXIT
END

CHAIN2 BJ#KLS25 sarevokkelsey1chain
@153 == @154 == @155 == @156 == @157
END BSAREV25 sarevokkelsey1end

IF ~~ THEN BEGIN kelsarevok1end
SAY @167
IF ~~ THEN EXIT
END

END

APPEND BJAHEI25
IF ~~ THEN BEGIN jaheiragod2
SAY @148
IF ~~ THEN EXTERN BJAN25 jaheiragod3
END

IF ~~ THEN BEGIN keljahjokeend
SAY @1145
IF ~~ THEN EXIT
END

END

APPEND BEDWIN25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpEdwin1","LOCALS",0)~ THEN BEGIN edwinkelsey1
SAY @185
IF ~~ THEN DO ~SetGlobal("FWExpEdwin1","LOCALS",1)~ EXTERN BJ#KLS25 edwinkelsey1_2
END

IF ~~ THEN BEGIN edwinkelsey1end
SAY @187
IF ~~ THEN EXIT
END

END

APPEND BNALIA25
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpNalia1","LOCALS",0)~ THEN BEGIN naliakelsey1
SAY @188
IF ~~ THEN DO ~SetGlobal("FWExpNalia1","LOCALS",1)~ EXTERN BJ#KLS25 naliakelsey1chain
END

END

CHAIN3 BJ#KLS25 naliakelsey1chain
IF ~!Global("J#KelseyRomanceActive","GLOBAL",2) !Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @189
== BNALIA25 IF ~!Global("J#KelseyRomanceActive","GLOBAL",2) !Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @190
== BJ#KLS25 IF ~OR(2) Global("J#KelseyRomanceActive","GLOBAL",2) Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @191
== BNALIA25 @192
== BJ#KLS25 @193
== BNALIA25 @194
== BJ#KLS25 @195
== BNALIA25 @196
== BJ#KLS25 @197
== BNALIA25 @198
== BJ#KLS25 @199
== BNALIA25 @200
END BJ#KLS25 naliakelsey1end

/* This is a duplicate. Why is this here? I don't know.
CHAIN3 BKORGA25 bkor1 @2
= IF ~InParty("Aerie")~ THEN @3
== BAERIE25 IF ~InParty("Aerie")~ THEN @4
== BKORGA25 IF ~!InParty("Aerie") InParty("Minsc")~ THEN @5
== BMINSC25 IF ~!InParty("Aerie") InParty("Minsc")~ THEN @6
== BKORGA25 IF ~!InParty("Aerie") !InParty("Minsc") InParty("Cernd")~ THEN @7
== BCERND25 IF ~!InParty("Aerie") !InParty("Minsc") InParty("Cernd")~ THEN @8
== BKORGA25 IF ~!InParty("Aerie") !InParty("Minsc") !InParty("Cernd")~ THEN @9
== BJ#KLS25 @10
END BKORGA25 bkor1end
*/

APPEND BJAN25

IF WEIGHT #-2 ~InParty("J#Kelsey")
Global("FWExpJan1","LOCALS",1)
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN JanKelOatTalk1
  SAY @1210
  IF ~~ THEN DO ~SetGlobal("FWExpJan1","LOCALS",2)~ EXTERN BJ#Kls25 JanKelOatTalk2
END
END

CHAIN3 BJ#Kls25 JanKelOatTalk2
IF ~~ THEN @1211
== BJAN25 @1212
== BJ#Kls25 @1213
== BJAN25 @1214
== BJ#Kls25 @1215
== BJAN25 @1216
== BJ#Kls25 @1217
== BJAN25 @1218
== BJAN25 @1219
== BJ#Kls25 @1220
== BJAN25 @1221
== BJ#Kls25 @1222
== BJAN25 @1223
== BJAN25 @1224
== BJ#Kls25 @1225
== BJAN25 @1226
== BJAN25 @1227
== BJ#Kls25 @1228
== BJAN25 @1229
== BJ#Kls25 @1230
== BJAN25 @1231
== BJ#Kls25 @1232
== BJAN25 @1233
== BJAN25 @1234
== BJAN25 @1235
== BJ#Kls25 @1236
== BJAN25 @1237
== BJ#Kls25 @1238
END BJ#Kls25 JanKelOatTalk3

APPEND BJ#Kls25
IF ~~ THEN BEGIN JanKelOatTalk3
  SAY @1239
  IF ~~ THEN DO ~SetGlobal("FWJanPolymorph","GLOBAL",1)
StartCutSceneMode()
StartCutScene("fwct005")~ EXIT
END
END


APPEND J#Kls25J
IF WEIGHT #-1 ~Global("FWJanPolymorph","GLOBAL",1)~ THEN BEGIN JanKelOatTalk4
  SAY @1240
  IF ~~ THEN EXTERN BJAN25 JanKelOatTalk5
END
END

APPEND JAN25J
IF ~~ THEN BEGIN JanKelOatTalk7
  SAY @1250
  IF ~~ THEN DO ~SetGlobal("FWJanPolymorph","GLOBAL",2)
StartCutSceneMode()
StartCutScene("fwct006")~ EXIT
END

IF WEIGHT #-1 ~Global("FWJanPolymorph","GLOBAL",2)~ THEN BEGIN JanKelOatTalk8
  SAY @1251
  IF ~~ THEN EXTERN BJAN25 JanKelOatTalk9
END
END

CHAIN3 BJAN25 JanKelOatTalk5 @1241
== BJAN25 @1242
== BJ#Kls25 @1243
== BJAN25 @1244
== BJ#Kls25 @1245
== BJAN25 @1246
== BJ#Kls25 @1247
== BJAN25 @1248
== BJ#Kls25 @1249
END JAN25J JanKelOatTalk7

CHAIN BJAN25 JanKelOatTalk9 @1252
== BJ#Kls25 @1253
END BJAN25 JanKelOatTalk10

APPEND BJAN25
IF ~~ THEN BEGIN JanKelOatTalk10
  SAY @1254
  IF ~~ THEN DO ~SetGlobal("FWJanPolymorph","GLOBAL",3)
TakePartyItemAll("FWOats01")
DestroyItem("FWOats01")~ EXIT
END
END

CHAIN IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpMinsc1","LOCALS",1)~ THEN BMINSC25 minsckelsey2point0
@1301 DO ~SetGlobal("FWExpMinsc1","LOCALS",2)~
== BJ#KLS25 @1302
== BMINSC25 @1303 = @1304
== BJ#KLS25 @1305
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @1306
== BMINSC25 @1307
== BJ#KLS25 @1308 = @1309
== BMINSC25 @1310 = @1311 = @1312
== BJ#KLS25 @1313
== BMINSC25 @1314
== BHAERD25 IF ~IsValidForPartyDialog("HaerDalis")~ THEN @1315
== BJ#KLS25 @1316 = @1317
== BMINSC25 @1318 = @1319
EXIT

CHAIN IF
~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWExpMazzy1","LOCALS",1)~ THEN BMAZZY25 kelseymazzy2point0 @1320
DO ~SetGlobal("FWExpMazzy1","LOCALS",2)~
== BMAZZY25 IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN @1321
== BMAZZY25 IF ~Global("FWImoenRomanceActive","GLOBAL",1)~ THEN @1322
== BMAZZY25 IF ~Global("FWImoenRomanceActive","GLOBAL",2)~ THEN @1323
== BMAZZY25 @1324
== BJ#KLS25 @1325
== BMAZZY25 @1326
== BJ#KLS25 @1327
== BMAZZY25 @1328 = @1329
== BJ#KLS25 @1330
== BMAZZY25 @1331
== BJ#KLS25 @1332
== BMAZZY25 @1333
== BJ#KLS25 @1334
== BMAZZY25 @1335 = @1336
== BJ#KLS25 @1337 = @1338 = @1339
== BMAZZY25 @1340
== BJ#KLS25 @1341
== BMAZZY25 @1342
EXIT

CHAIN BCERND25 nightcerndchain
@1345
== BJ#KLS25 @1346
== BCERND25 @1347
== BJ#KLS25 @1348
== BCERND25 @1349
== BJ#KLS25 @1350
== BCERND25 @1351
== BJ#KLS25 @1352
== BCERND25 @1353
== BCERND25 IF ~G("J#KelseyRomanceActive",2)~ THEN @1354
== BCERND25 IF ~G("FWImoenRomanceActive",2)~ THEN @1355
== BIMOEN25 IF ~G("FWImoenRomanceActive",2)~ THEN @1356
== BCERND25 IF ~!G("J#KelseyRomanceActive",2) !G("FWImoenRomanceActive",2)~ THEN @1357
== BCERND25 @1358
== BJ#KLS25 @1359
== BCERND25 @1360
END
+ ~G("J#KelseyRomanceActive",2)~ + @1361 EXTERN BJ#KLS25 irresistible
+ ~G("J#KelseyRomanceActive",2)~ + @1362 EXTERN BJ#KLS25 ridiculous
+ ~G("J#KelseyRomanceActive",2)~ + @1363 EXTERN BJ#KLS25 snoring
+ ~!G("J#KelseyRomanceActive",2)~ + @1364 EXTERN BJ#KLS25 veryfunny
+ ~!G("J#KelseyRomanceActive",2)~ + @1365 EXTERN BJ#KLS25 onpurpose
+ ~!G("J#KelseyRomanceActive",2)~ + @1366 + happenedtome
+ ~!G("J#KelseyRomanceActive",2) !Gender(Player1,FEMALE)~ + @1367 EXTERN BJ#KLS25 veryfunny
+ ~!G("J#KelseyRomanceActive",2) Gender(Player1,FEMALE)~ + @1368 EXTERN BJ#KLS25 veryfunny

CHAIN BIMOEN25 ilt26_chain
@1376
== BJ#KLS25 @1377
== BIMOEN25 @1378 = @1379 = @1380 = @1381 = @1382 = @1383 = @1384 = @1385 = @1386 = @1387 = @1388
== BJ#KLS25 @1389
== BIMOEN25 @1390
== BJ#KLS25 @1391
== BIMOEN25 @1392
== BJ#KLS25 @1393
== BIMOEN25 @1394 = @1395 = @1396
== BJ#KLS25 @1397 = @1398
== BIMOEN25 @1399 = @1400
== BJ#KLS25 @1401
== BIMOEN25 @1402
EXIT








APPEND BCERND25
IF ~~ happenedtome
SAY @1369
IF ~~ EXIT
END
END

APPEND BJ#KLS25
IF ~~ irresistible
SAY @1370
IF ~~ EXIT
END

IF ~~ ridiculous
SAY @1371
IF ~~ EXIT
END

IF ~~ snoring
SAY @1372
IF ~~ EXIT
END

IF ~~ veryfunny
SAY @1373
IF ~~ EXIT
END

IF ~~ onpurpose
SAY @1374
IF ~~ EXIT
END

END

CHAIN BJ#KLS25 oasis_tellthemnow
@1521 = @1522
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @1523
== BIMOEN25 IF ~IsValidForPartyDialog("Imoen2")~ THEN @1524
== BVALYG25 IF ~IsValidForPartyDialog("Valygar")~ THEN @1525
EXIT



