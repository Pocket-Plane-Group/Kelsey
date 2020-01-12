/* Attention Reader: This is the banter/lovetalk file for Kelsey-SOA.
It is also a TERRIBLE example of WeiDU coding. There are a lot of
reasons for this, most of which are not precisely our fault, but many of
which are. Although you may find some interesting nuggets in here, trust
us, if you plan to write .d code, you won't want a lot of it to look like this.
Far, far better examples of WeiDU coding can be found by combing through
projects such as Kelsey-TOB and Westley Weimer's Valen.

Enjoy the show, but remember, don't code like this at home. */


// Global("J#KelseyNookie","GLOBAL",1)

BEGIN ~BJ#KLSY~

IF ~Global("FWPostVampSleepTalk","LOCALS",2)~ THEN postvamp
SAY @3462
IF ~~ DO ~SetGlobal("FWPostVampSleepTalk","LOCALS",3)~ GOTO postvamp2
END

IF ~~ postvamp2
SAY @3463 = @3464 = @3465
++ @3466 + postvampnarr
+ ~Global("J#KelseyNookie","GLOBAL",1)~ + @3467 + postvampmakelove
+ ~!Global("J#KelseyNookie","GLOBAL",1)~ + @3467 + postvampmakelove2
++ @3468 + postvampnarr
++ @3469 + postvamptrade
++ @3470 + postvampducked
END

IF ~~ postvamptrade
SAY @3480
IF ~~ GOTO postvampnarr
END

IF ~~ postvampducked
SAY @3481
IF ~~ GOTO postvampnarr
END

IF ~~ postvampmakelove
SAY @3477 = @3478
IF ~~ GOTO postvampnarr
END

IF ~~ postvampmakelove2
SAY @3479 = @3478
IF ~~ GOTO postvampnarr
END

IF ~~ postvampnarr
SAY @3471 = @3472 = @3473 = @3474 = @3475 = @3476
++ @3482 + postvampdestroy
++ @3483 + postvampbhaal
++ @3484 + postvampdestroy
++ @3485 + postvamplearned
++ @3486 + postvampbed
END

IF ~~ postvampbhaal
SAY @3488
IF ~ReputationGT(Player1,15)~ GOTO postvamphighrep
IF ~ReputationLT(Player1,16)
ReputationGT(Player1,9)~ GOTO postvampmidrep
IF ~ReputationLT(Player1,10)~ GOTO postvamplowrep
END

IF ~~ postvamplearned
SAY @3489 = @3490
IF ~ReputationGT(Player1,15)~ GOTO postvamphighrep
IF ~ReputationLT(Player1,16)
ReputationGT(Player1,9)~ GOTO postvampmidrep
IF ~ReputationLT(Player1,10)~ GOTO postvamplowrep
END


IF ~~ postvampdestroy
SAY @3487
IF ~~ GOTO postvampbed
END

IF ~~ postvampbed
SAY @3491
IF ~ReputationGT(Player1,15)~ GOTO postvamphighrep
IF ~ReputationLT(Player1,16)
ReputationGT(Player1,9)~ GOTO postvampmidrep
IF ~ReputationLT(Player1,10)~ GOTO postvamplowrep
END

IF ~~ postvamphighrep
SAY @3492 = @3493 = @3494 = @3495
++ @3496 + postvampsleep
++ @3497 + postvampstrength
++ @3498 + postvampflatter
++ @3499 + postvampfromyou
END

IF ~~ postvampsleep
SAY @3500
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvampstrength
SAY @3501
IF ~~ GOTO postvampneedrest
END

IF ~~ postvampneedrest
SAY @3502 = @3536
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvampflatter
SAY @3504
IF ~~ GOTO postvampneedrest
END

IF ~~ postvampfromyou
SAY @3505
IF ~~ GOTO postvampneedrest
END

IF ~~ postvampmidrep
SAY @3506 = @3507 = @3508 = @3509
++ @3496 + postvampsleep
++ @3499 + postvampfromyou
++ @3510 + postvampfraid
++ @3511 + postvampdramatic
++ @3512 + postvampfriends
END

IF ~~ postvampfraid
SAY @3513 = @3514 = @3503
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvampdramatic
SAY @3515
IF ~~ GOTO postvampneedrest
END

IF ~~ postvampfriends
SAY @3516 = @3517
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvamplowrep
SAY @3518 = @3519 = @3520 = @3521
++ @3511 + postvampdramatic
++ @3522 + postvampgetout
++ @3510 + postvampfraid2
++ @3512 + postvampfriends2
++ @3523 + postvampsohard
++ @3533 + postvampiwill
END

IF ~~ postvampsohard
SAY @3537 = @3538
IF ~~ GOTO postvampnolose
END

IF ~~ postvampiwill
SAY @3539
IF ~~ GOTO postvampnolose
END

IF ~~ postvampfraid2
SAY @3532 = @3534
IF ~~ GOTO postvampnolose
END

IF ~~ postvampfriends2
SAY @3535
IF ~~ GOTO postvampnolose
END

IF ~~ postvampnolose
SAY @3536
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvampgetout
SAY @3524
++ @3525 + postvampdamn
++ @3526 + postvampsorry
++ @3527 + postvampspineless
END

IF ~~ postvampdamn
SAY @3528
IF ~~ DO ~GivePartyAllEquipment()
SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ postvampsorry
SAY @3529
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ postvampspineless
SAY @3530 = @3531
IF ~~ DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3) RestParty()~ EXIT
END



IF ~!StateCheck(Player1,STATE_SLEEPING)
Global("J#NonLoveTalk","LOCALS",2)~ THEN BEGIN 539 // from:
  SAY @880 /* ~Have I told you how I wound up an adventurer?~ [FWKLSYB1] #75274 */
  IF ~~ THEN REPLY @881 /* ~No, and I don't have time for this.~ #75708 */ GOTO 540
  IF ~~ THEN REPLY @882 /* ~Not yet, but I suspect you're about to.~ #75709 */ GOTO 541
  IF ~~ THEN REPLY @883 /* ~No, but I'm curious.~ #75710 */ GOTO 541
END

IF ~~ THEN BEGIN 540 // from: 546.0 543.2 539.0
  SAY @884 /* ~Perhaps another time.~ #75275 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 541 // from: 539.2 539.1
  SAY @885 /* ~Well, as I think I mentioned, my family runs a fairly successful trading outfit, with posts and buyers across much of the human-settled world.~ #75276 */
  IF ~~ THEN GOTO 542
END

IF ~~ THEN BEGIN 542 // from: 541.0
  SAY @886 /* ~My fifteenth year was a difficult one...I discovered my sorcery entirely by accident when I spontaneously lit my hands on fire. Despite the obvious comedy value, it was pretty scary for everyone.~ #75277 */
  IF ~~ THEN GOTO 543
END

IF ~~ THEN BEGIN 543 // from: 542.0
  SAY @887 /* ~Not long after, my father died rather suddenly. I had worked closely with him for years, and my mother was an active part of the business as well, so between the two of us, we were prepared to keep things going.~ #75278 */
  IF ~~ THEN REPLY @888 /* ~Truly, heroic beginnings. (yawn.)~ #75711 */ GOTO 544
  IF ~~ THEN REPLY @889 /* ~How does this lead to you becoming an adventuring mage?~ #75712 */ GOTO 544
  IF ~~ THEN REPLY @890 /* ~I'm really not interested in the rest of the details.~ #75713 */ GOTO 540
END

IF ~~ THEN BEGIN 544 // from: 543.1 543.0
  SAY @891 /* ~Bear with me. So we ran the company well enough, I manifested a few extra minor powers and they came in handy to discourage some of the opportunistic liars who tried to muscle us after Father died.~ #75279 */
  IF ~~ THEN GOTO 545
END

IF ~~ THEN BEGIN 545 // from: 544.0
  SAY @892 /* ~But then my uncle Birinar, my mother's younger brother, ingratiated himself to her and wound up taking over as a co-managing partner. He was never really good at anything, so we wound up doing more work to make up for his incompetence and he drew a nice salary.~ #75280 */
  IF ~~ THEN GOTO 546
END

IF ~~ THEN BEGIN 546 // from: 545.0
  SAY @893 /* ~I couldn't convince her of his incompetence, though, and when I blew up at the both of them Birinar managed to convince Mother that I needed to get out and see the world, so they arranged to make me a sort of traveling sales manager.~ #75281 */
  IF ~~ THEN REPLY @894 /* ~And now I'm stuck with you. Terrific, no more detail necessary.~ #75714 */ GOTO 540
  IF ~~ THEN REPLY @895 /* ~Sounds like you got a raw deal.~ #75715 */ GOTO 547
END

IF ~~ THEN BEGIN 547 // from: 546.1
  SAY @896 /* ~Did I ever. Actually, I was able to do some good, but most of it was make-work to keep me away from the real action. And when it became clear that nobody really cared how fast I got to my next assignment, I decided to start taking the long way.~ #75282 */
  IF ~~ THEN GOTO 548
END

IF ~~ THEN BEGIN 548 // from: 547.0
  SAY @897 /* ~I'd sign up with an adventuring expedition heading in that general direction, or offer to provide support to a provincial militia or ranging patrol.~ #75283 */
  IF ~~ THEN GOTO 549
END

IF ~~ THEN BEGIN 549 // from: 548.0
  SAY @898 /* ~That usually worked, and got me where I was going more safely than traveling in a caravan with a few hirelings. Even in Amn, most captains are happy enough to have a mage on their side, licensed or not.~ #75284 */
  IF ~~ THEN GOTO 550
END

IF ~~ THEN BEGIN 550 // from: 549.0
  SAY @899 /* ~So that's more or less the story of my life the past few years. Someday, I'll face down Birinar and my mother and set things right, but for now I'm happy to help you on your quest.~ #75285 */
  IF ~~ THEN REPLY @900 /* ~And you're proving a valuable asset.~ #75716 */ GOTO 551
  IF ~~ THEN REPLY @901 /* ~You'll help for as long as I think you're useful, mage.~ #75717 */ GOTO 552
END

IF ~~ THEN BEGIN 551 // from: 550.0
  SAY @902 /* ~Thank you, <CHARNAME>.~ #75286 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 552 // from: 550.1
  SAY @903 /* ~(sigh) If I had a silver for every time I heard that line...~ #75287 */
  IF ~~ THEN EXIT
END


IF ~!StateCheck(Player1,STATE_SLEEPING)
Global("J#NonLoveTalk","LOCALS",4)
OR(2)
Global("Chapter","GLOBAL",%bg2_chapter_2%)
Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN BEGIN 553 // from:
  SAY @904 /* ~Dealing with rogues, mercenaries, sorcerers and Waukeen knows what else...Imoen must really be a special person for you to go through all this trouble.~ [FWKLSYA8] #75288 */
  IF ~~ THEN REPLY @905 /* ~She is, indeed, although I would do the same for any of my trusted companions in need.~ #75718 */ DO ~IncrementGlobal("J#NonLoveTalk","LOCALS",1)~ GOTO 554
  IF ~~ THEN REPLY @906 /* ~I've known Imoen a long time and we've been through so much together, I can't abandon her now.~ #75719 */ DO ~IncrementGlobal("J#NonLoveTalk","LOCALS",1)~ GOTO 554
  IF ~~ THEN REPLY @907 /* ~Actually, she's a bit of a punk but I seem to have an overdeveloped sense of duty.~ #75720 */ DO ~IncrementGlobal("J#NonLoveTalk","LOCALS",1)~ GOTO 566
  IF ~~ THEN REPLY @908 /* ~Imoen? This is hardly about her. I want to find out who this Irenicus character thinks he is.~ #75721 */ DO ~IncrementGlobal("J#NonLoveTalk","LOCALS",1)~ GOTO 561
  IF ~~ THEN REPLY @909 /* ~I am not interested in discussing my motivations with you.~ #75722 */ DO ~IncrementGlobal("J#NonLoveTalk","LOCALS",1)~ GOTO 567
END

IF ~~ THEN BEGIN 554 // from: 553.1 553.0
  SAY @910 /* ~I hope she appreciates what a good friend she has in you, then.~ #75289 */
  IF ~~ THEN GOTO 555
END

IF ~~ THEN BEGIN 555 // from: 566.0 554.0
  SAY @911 /* ~I've tried to stay as far away from even thinking about the Cowled Wizards as possible, but I will say that what I have heard about their abduction squads isn't very encouraging.~ #75290 */
  IF ~~ THEN GOTO 556
END

IF ~~ THEN BEGIN 556 // from: 555.0
  SAY @912 /* ~If you don't mind my saying so, for Imoen's sake we might want to get to the bottom of things as fast as possible.~ #75291 */
  IF ~~ THEN REPLY @913 /* ~Believe me, that's my plan.~ #75723 */ GOTO 557
  IF ~~ THEN REPLY @914 /* ~You are here to cast spells, not offer strategic counsel, Kelsey. Keep it to yourself.~ #75724 */ GOTO 558
  IF ~~ THEN REPLY @915 /* ~I plan to, but I also need to be sure we are equipped to fight off any resistance, both on our way in and back out again.~ #75725 */ GOTO 559
  IF ~~ THEN REPLY @916 /* ~Imoen is tougher than she looks. I am sure she will hold out until the <CHARNAME> Cavalry arrives.~ #75726 */ GOTO 560
  IF ~~ THEN REPLY @917 /* ~If she doesn't last, perhaps Irenicus will still provide a measure of...satisfaction.~ #75727 */ GOTO 561
END

IF ~~ THEN BEGIN 557 // from: 556.0
  SAY @918 /* ~Then lead on, <CHARNAME>!~ #75292 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 558 // from: 556.1
  SAY @919 /* ~Sorry, you're right. I'm just worried about your friend. I will try to stick to what I know instead.~ #75293 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 559 // from: 556.2
  SAY @920 /* ~I understand. I imagine Imoen wouldn't want you hurt trying to rescue her.~ #75294 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 560 // from: 556.3
  SAY @921 /* ~I certainly hope so. I'd like to meet her, and I hope she is still herself when I do.~ #75295 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 561 // from: 556.4 553.3
  SAY @922 /* ~Ah, the mysterious wizard. The way he tore effortlessly through the opposition, I suspect the man may be a sorcerer. I couldn't believe it when I heard that he stood down and allowed himself to be taken.~ #75296 */
  IF ~~ THEN REPLY @923 /* ~If he makes the same mistake with me, his life will be forfeit.~ #75728 */ GOTO 562
  IF ~~ THEN REPLY @924 /* ~Perhaps he burned himself out with the effort. No matter. He knows secrets and I will have them.~ #75729 */ GOTO 563
  IF ~~ THEN REPLY @925 /* ~I was surprised myself, but it hardly makes me more sympathetic to my tormentor.~ #75730 */ GOTO 564
  IF ~~ THEN REPLY @926 /* ~If you're cowed by his power, there's no reason for you to stay in my company.~ #75731 */ GOTO 565
END

IF ~~ THEN BEGIN 562 // from: 561.0
  SAY @927 /* ~Don't get overconfident. Powerful wizards have a lot of weapons at their disposal, and I'm sure-oh, never mind, I'm sure you know all this already. Pardon the interruption, <CHARNAME>.~ #75297 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 563 // from: 561.1
  SAY @928 /* ~I hope you find what you seek, both your friend and your answers.~ #75298 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 564 // from: 561.2
  SAY @929 /* ~I can certainly understand. I hope your next meeting with him is as unpleasant for him as your last meetings have been for you and Imoen.~ #75299 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 565 // from: 561.3
  SAY @930 /* ~Cowed? No. Apprehensive? A little. But it won't affect my resolve to help you, I assure you.~ #75300 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 566 // from: 553.2
  SAY @931 /* ~Really? I guess I couldn't pick up all the nuances of her personality from where I was standing.~ #75301 */
  IF ~~ THEN GOTO 555
END

IF ~~ THEN BEGIN 567 // from: 553.4
  SAY @932 /* ~My loss, I guess.~ #75302 */
  IF ~~ THEN EXIT
END


IF ~Global("J#LoveTalk","LOCALS",2)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 0 // from:
  SAY @1 /* ~So...I gather that your trip to Amn was not exactly by choice. Have you ever been in these lands before?~ #74743 */
  IF ~~ THEN REPLY @2 /* ~No, and I certainly would rather that the choice had been left up to me.~ #75392 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I saw little but Candlekeep until I came of age, and even then I've mostly just seen some of the choicer destinations along the Sword Coast.~ #75393 */ GOTO 8
  IF ~~ THEN REPLY @4 /* ~I don't have time to discuss my travel itinerary with you.~ #75394 */ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 156.0 155.0 153.0 16.0 15.0 0.0
  SAY @5 /* ~I can certainly understand that. Being somewhere you never intended to go, even an pleasant place, can be annoying enough. And I take it Irenicus was not exactly running a sweet shop.~ #74744 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 8.0 1.0
  SAY @6 /* ~For my money, Amn isn't the friendliest of lands even if you don't happen to be a spellcaster, but the climate is pleasant enough and the commerce of Athkatla and Trademeet keep bringing me back.~ #74745 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 /* ~Unfortunately, I travel so much that a lot of the places I've been seem to blend in my mind, one into the other. I'm really not sure how much use I'll be to you as a local guide.~ #74746 */
  IF ~~ THEN REPLY @8 /* ~That's all right. I am never afraid to stop and ask directions.~ #75395 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~I'm not here to buy land and settle down, I'm on a mission. The finer details will resolve themselves.~ #75396 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~For my purposes, a skilled mage will serve far better than a walking map.~ #75397 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~You're barely making the grade in any respect. Make yourself useful and be quiet.~ #75398 */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12 /* ~Oh, I get it, because the men in the party will be too proud to humble themselves for a map? Cute.~ #74747 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13 /* ~I admire your dedication. Still, I hope you can take some time out to tell me more of Candlekeep some day.~ #74748 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @14 /* ~Ah. Well, if I see one, I'll point him out to you. In the meantime, I'll fill in.~ #74749 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15 /* ~Kidding.~ #74750 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @16 /* ~Really? I almost wish I could have had such a cloistered upbringing. I spent half of my childhood travelling with my father, and recently I've done little but go from waypoint to waypoint.~ #74751 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 3.3 0.2
  SAY @17 /* ~Sorry for the intrusion, then.~ #74752 */
  IF ~~ THEN EXIT
END

IF ~Global("J#LoveTalk","LOCALS",4)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 10 // from:
  SAY @18 /* ~I know your arrival in Athkatla was inconvenient and upsetting, but I have to admit that I'm glad it gave me the opportunity to meet a new friend.~ #74753 */
  IF ~~ THEN REPLY @19 /* ~Since this madness started, two of my companions have lost their lives and a third is being detained with a psychopath. I would call that more than an "inconvenience," Kelsey.~ #75399 */ GOTO 11
  IF ~~ THEN REPLY @20 /* ~It's not quite as simple as you make it sound, Kelsey.~ #75400 */ GOTO 17
  IF ~~ THEN REPLY @21 /* ~Yes, well, the trip has not been without its rewards so far.~ #75401 */ GOTO 18
  IF ~~ THEN REPLY @22 /* ~I have way too much on my mind to talk to you now.~ #75402 */ GOTO 21
  IF ~~ THEN REPLY @23 /* ~I hope you're referring to somebody else. You're a tool, not a friend, sorcerer.~ #75403 */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 19.1 17.0 10.0
  SAY @24 /* ~I'm so sorry, I knew about Imoen but I hadn't heard of any other companions who didn't make it out. Anything you want to talk about?~ #74754 */
  IF ~IsValidForPartyDialog("Minsc")~ THEN REPLY @25 /* ~Dynaheir and Khalid, trusted companions and valued friends, both died before I could reach them.~ #75404 */ EXTERN ~BMINSC~ BMINSC_99
  IF ~IsValidForPartyDialog("Minsc")~ THEN REPLY @26 /* ~Dynaheir and Khalid were weak, so they succumbed to Irenicus and his minions.~ #75405 */ EXTERN ~BMINSC~ BMINSC_99
  IF ~~ THEN REPLY @27 /* ~Not really.~ #75406 */ GOTO 12
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Jaheira")~ THEN REPLY @28 /* ~Dynaheir and Khalid, trusted companions and valued friends, both died before I could reach them.~ #75404 */ EXTERN ~BJAHEIR~ BJAHEIR_461
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Jaheira")~ THEN REPLY @29 /* ~Dynaheir and Khalid, trusted companions and valued friends, both died before I could reach them.~ #75404 */ GOTO 13
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Jaheira")~ THEN REPLY @30 /* ~Dynaheir and Khalid were weak, so they succumbed to Irenicus and his minions.~ #75405 */ EXTERN ~BJAHEIR~ BJAHEIR_461
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Jaheira")~ THEN REPLY @31 /* ~Dynaheir and Khalid were weak, so they succumbed to Irenicus and his minions.~ #75405 */ GOTO 26
END

IF ~~ THEN BEGIN 12
SAY @32
IF ~~ THEN EXIT
END

APPENDI BMINSC
IF ~~ THEN BEGIN BMINSC_99
SAY @1036
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~BJAHEIR~ BJAHEIR_461
  IF ~!IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~BJ#KLSY~ 13
END
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_461
SAY @1037
IF ~~ THEN EXTERN BJ#KLSY 13
END
END

IF ~~ THEN BEGIN 13 // from: 23.0 11.4
  SAY @33 /* ~I'm so sorry. I have certainly seen my share of fallen companions, but I suppose I am fortunate not to have been close to many of them. I imagine it's only more difficult for a leader, such as yourself.~ #74756 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 26.0 13.0
  SAY @34 /* ~You truly have had a rough time of it lately, so I apologize if I came off as flippant. Although I, personally, would not trade for having met you, I would not be offended if you did not feel the same way.~ #74757 */
  IF ~~ THEN REPLY @35 /* ~I cannot bring back the dead, and the lost can always be found, so I am glad to make the most of it in your presence.~ #75407 */ GOTO 24
  IF ~~ THEN REPLY @36 /* ~Yes, well, no offense but I would rather we had met another time, another place.~ #75408 */ GOTO 25
  IF ~~ THEN REPLY @37 /* ~This is a pointless thought exercise.~ #75409 */ GOTO 21
END


IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @42 /* ~Of course, I didn't mean to sound callous about your friend Imoen.~ #74759 */
  IF ~~ THEN REPLY @43 /* ~It's not just Imoen. Two other companions lost their lives as well.~ #75410 */ GOTO 11
  IF ~~ THEN REPLY @44 /* ~Yes, well, be more careful in the future.~ #75411 */ GOTO 21
  IF ~~ THEN REPLY @45 /* ~Talking to you is taking up way too much of my valuable time.~ #75412 */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY @46 /* ~Truly, that's the nicest thing anybody's said to me all day.~ #74760 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @47 /* ~I'm curious about the people you've kept company with recently. Have I met everyone of importance yet?~ #74761 */
  IF ~~ THEN REPLY @48 /* ~Something like that, yes. ~ #75413 */ GOTO 20
  IF ~~ THEN REPLY @49 /* ~Not exactly. My former captor did more than just imprison and injure me, he cost some their lives.~ #75414 */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @50 /* ~Then I hope that any friend of yours will be a friend of mine, and vice versa. Or that all of your friends will be my friends. Or something like that. Never mind, I think I've just confused myself.~ #74762 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1 14.2 10.3
  SAY @51 /* ~Sorry, expert timing has never been one of my long suits.~ #74763 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 10.4
  SAY @52 /* ~Ah. So that's how it is. Fine, I'll not make that mistake twice.~ #74764 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @53 /* ~I'm so sorry. I have certainly seen my share of fallen companions, but I suppose I am fortunate not to have been close to many of them. I imagine it's only more difficult for a leader, such as yourself.~ #74756 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY @54 /* ~I am glad to hear you say that. It's not often I have a chance to meet a true friend.~ #74765 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1
  SAY @55 /* ~I more than understand. But I do hope you can grow to value my friendship, even it did not come to be under the brightest of skies.~ #74766 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.6
  SAY @56 /* ~I see. Perhaps they would have fared better if you had not been parted from them, then.~ #74767 */
  IF ~~ THEN GOTO 14
END

IF ~Global("J#LoveTalk","LOCALS",6)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 27 // from:
  SAY @57 /* ~I guess it really is true...some people are born to lead. I'm impressed by the way you have managed this group so far.~ [FWKLSY54] #74768 */
  IF ~!StateCheck("Anomen",STATE_DEAD)
InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",1)~ THEN EXTERN ~BANOMEN~ BANOMEN_587
  IF ~OR(3)
StateCheck("Anomen",STATE_DEAD)
!InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",1)~ THEN GOTO 28
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_587
SAY @1038
  IF ~~ THEN EXTERN ~BJ#KLSY~ 42
END
END


IF ~~ THEN BEGIN 28 // from: 43.0 27.1
  SAY @58 /* ~I've always wondered what makes good leaders. Do you think it was something you were born with, or have you had to learn?~ #74769 */
  IF ~~ THEN REPLY @59 /* ~Gorion taught me much about giving and earning respect. The rest is just experience, I suppose.~ #75415 */ GOTO 29
  IF ~~ THEN REPLY @60 /* ~People do what I say because they don't want my fist to connect with their teeth.~ #75416 */ GOTO 38
  IF ~~ THEN REPLY @61 /* ~I don't think of myself as a leader, and everyone in my company is free to come and go as they please.~ #75417 */ GOTO 39
  IF ~~ THEN REPLY @62 /* ~These talks bore me, mageling. Stick to what you know and leave me in peace.~ #75418 */ GOTO 40
  IF ~~ THEN REPLY @63 /* ~Let's discuss this when I'm not so busy.~ #75419 */ GOTO 41
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @64 /* ~Heredity and environment, eh? That makes sense.~ #74770 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 39.0 38.0 29.0
  SAY @65 /* ~I seem to make a much better functionary than a leader. Ever since my father died and I tried to replace him as director of the trading company, it seems that I have a hard time being taken seriously as an authority figure.~ #74771 */
  IF ~~ THEN REPLY @66 /* ~Yes, but you were barely old enough to grow a beard then, weren't you? Some people let appearances fool them, and I think you command respect of your own.~ #75420 */ GOTO 31
  IF ~~ THEN REPLY @67 /* ~Taking orders well is no disgrace. Leaders need followers, and vice versa.~ #75421 */ GOTO 36
  IF ~~ THEN REPLY @68 /* ~Some people have a hard time taking you seriously now, you wimp.~ #75422 */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @69 /* ~That's kind of you to say, <CHARNAME>...although the truth is I still can't grow much of a beard.~ #74772 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 36.0 31.0
  SAY @70 /* ~As for you...well, I know that there are still many battles left to fight, but I suppose I'm so impressed by what I've seen so far that I'm almost taking it for granted that if someone's missing, you'll find them, and if someone's hurt you, you'll double it coming back.~ #74773 */
  IF ~~ THEN REPLY @71 /* ~Thank you for the vote of confidence. You do realize that flattery does not earn you an extra share of party treasure, right?~ #75423 */ GOTO 33
  IF ~~ THEN REPLY @72 /* ~I only do what I must to keep myself and my friends safe.~ #75424 */ GOTO 34
  IF ~~ THEN REPLY @73 /* ~Yes, well, just watch yourself so that I neither have to rescue or punish you, then.~ #75425 */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @74 /* ~Ah, no, that wasn't my intention. I just wanted to let you know that I find you...impressive, and intriguing.~ #74774 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @75 /* ~And I'm glad for all of our sakes that you're good at what you do.~ #74775 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY @76 /* ~<CHARNAME>, I would never dream of crossing you. I hope we can become good enough friends that you won't doubt that.~ #74776 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.1
  SAY @77 /* ~I suppose, but it would be nice to have the...presence, or whatever it is, to be able to choose which to be.~ #74777 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 37 // from: 30.2
  SAY @78 /* ~That was a nasty thing to say. I take it all back, everything nice I've said about you.~ #74778 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 28.1
  SAY @79 /* ~Not everyone responds terribly well to that iron fist school of thought, but I won't deny that your bad side is a dangerous place to be. I think you're selling yourself short if you think that's the only way you can inspire people, though.~ #74779 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 39 // from: 28.2
  SAY @80 /* ~Yes, but the fact that people come, stay, and listen to you should certainly count for something. I think you are selling yourself short.~ #74780 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 40 // from: 28.3
  SAY @81 /* ~All right, I'll try to take orders in a manner you won't find so tedious and tiresome, then.~ #74781 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 28.4
  SAY @82 /* ~No problem.~ #74782 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @83 /* ~I was talking to HER, not to you.~ [FWKLSY55] #74783 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_588
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_588
SAY @1039
  IF ~~ THEN EXTERN ~BJ#KLSY~ 43
END
END

IF ~~ THEN BEGIN 43 // from:
  SAY @84 /* ~Speaking of which, I would say it is well past time you admitted you have lice in your beard. Perhaps while you shave it, I can finish my thought in peace.~ #74784 */
  IF ~~ THEN GOTO 28
END


IF ~Global("J#LoveTalk","LOCALS",8)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 85 // from:
  SAY @126 /* ~Do you ever wonder what motivates great or terrible people to become what they are? Where does ambition come from, do you think?~ [FWKLSY56] #74826 */
  IF ~~ THEN REPLY @127 /* ~Ambition comes from the left elbow, I believe.~ #75426 */ GOTO 86
  IF ~~ THEN REPLY @128 /* ~Everyone has a dream. Some people just work harder to achieve it.~ #75427 */ GOTO 103
  IF ~~ THEN REPLY @129 /* ~Strength breeds ambition. Power is wasted without vision.~ #75428 */ GOTO 104
  IF ~~ THEN REPLY @130 /* ~Ask somebody who cares.~ #75429 */ GOTO 105
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @131 /* ~Hah! I am trying to be serious, though.~ #74827 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 104.0 103.0 86.0
  SAY @132 /* ~I used to think that ambition was inbred, and that is why there are great

dynasties and noble families and so forth. But then I realized a lot of

important families breed wastrels.~ #74828 */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @133
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY @134
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @135
  IF ~~ THEN REPLY @136 GOTO 91
  IF ~~ THEN REPLY @137 GOTO 91
  IF ~~ THEN REPLY @138 GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.2 90.1 90.0
  SAY @139 /* ~I wonder, then, what that says about me? I mean, I would have been perfectly content to follow in my father's footsteps and run the trading company, if things were normal.~ #74832 */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @140
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @141 /* ~Then again, was I really born to make a difference? Is this all some big

joke, giving a small army's worth of magical energy to a kid who just wanted to balance the books and keep the customer happy?~ #74834 */
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @142 /* ~Should I be living my life as I was born, or as I became? Which is right? If I were as ambitious as you, wouldn't I know the answer?~ #74835 */
  IF ~~ THEN REPLY @143 /* ~Whatever feels right to you, Kelsey. I cannot tell you how to live.~ #75433 */ GOTO 95
  IF ~~ THEN REPLY @144 /* ~I have seen enough to know that your place is here, with us or with people
like us. You are a sorcerer. Be one.~ #75434 */ GOTO 98
  IF ~~ THEN REPLY @145 /* ~It sounds to me like you should go back behind that counter, if you can't

handle the pressure.~ #75435 */ GOTO 101
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY @146 /* ~I apologize, I was not trying to ask you to make up my mind for me.~ #74836 */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @147 /* ~I feel...I feel that I belong here, with you, although I am still uncomfortable with the idea of destiny.~ #74837 */
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY @148 /* ~Let us hope that all our decisions are our own.~ #74838 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.1
  SAY @149 /* ~Sometimes I have wanted to escape that reality, to make my powers someone else's problem, but you're right, I am and I should be one.~ #74839 */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY @150 /* ~I...want to stay here, for as long as possible. Thank you for making me feel welcome.~ #74840 */
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @151 /* ~I hope to learn more about your own ambitions someday, <CHARNAME>.~ #74841 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 94.2
  SAY @152 /* ~I am not sure that would actually solve anything. As much as I hate it sometimes, magic is part of who I am.~ #74842 */
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY @153 /* ~I think my problem is that I lack the drive and ambition people like you have to make decisions for themselves and never look back. But I will try to learn by example, if you will allow me to watch.~ #74843 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from: 85.1
  SAY @154 /* ~Not all dreams and dreamers are created equal, though. That's where

ambition-whatever it is-makes the difference, I think.~ #74844 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 104 // from: 85.2
  SAY @155 /* ~I'm not so sure that's always the right order. I think sometimes strength

follows ambition, when people look for the tools to achieve their goals.~ #74845 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 105 // from: 85.3
  SAY @156 /* ~I will, from now on.~ #74846 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END



IF ~Global("J#LoveTalk","LOCALS",10)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 106 // from:
  SAY @157 /* ~My favorite heroine...you look drawn. Is there anything I can do for you?~ #74847 */
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",1)~ THEN EXTERN ~BANOMEN~ BANOMEN_593
  IF ~OR(3)
Global("AnomenRomanceActive","GLOBAL",3)
Global("AnomenRomanceActive","GLOBAL",0)
!IsValidForPartyDialog("Anomen")~ THEN REPLY @158 /* ~Do what? What are you talking about?~ #75436 */ GOTO 107
  IF ~OR(3)
Global("AnomenRomanceActive","GLOBAL",3)
Global("AnomenRomanceActive","GLOBAL",0)
!IsValidForPartyDialog("Anomen")~ THEN REPLY @159 /* ~Sure! Clean my pack, sharpen my dagger, wash my laundry, mend my boots...~ #75437 */ GOTO 118
  IF ~OR(3)
Global("AnomenRomanceActive","GLOBAL",3)
Global("AnomenRomanceActive","GLOBAL",0)
!IsValidForPartyDialog("Anomen")~ THEN REPLY @160 /* ~You can bug off, I have no time to deal with you.~ #75438 */ GOTO 119
END


APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_593
SAY @1040
IF ~~ THEN EXTERN ~BJ#KLSY~ 121
END
END



IF ~~ THEN BEGIN 107 // from: 120.0 118.0 106.1
  SAY @161 /* ~I was thinking...would you mind if I gave you a small gift? I was the manager of the family's cosmetics account for a time and I learned quite a bit. I've been working on something that I think would look really nice on you.~ #74848 */
  IF ~~ THEN REPLY @162 /* ~Hey! Are you trying to tell me I'm ugly?~ #75439 */ GOTO 108
  IF ~~ THEN REPLY @163 /* ~I...didn't know you thought me homely...~ #75440 */ GOTO 109
  IF ~~ THEN REPLY @164 /* ~Things are bad enough for me without being mistaken for a whore.~ #75441 */ GOTO 110
  IF ~~ THEN REPLY @165 /* ~That sounds very nice.~ #75442 */ GOTO 111
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY @166 /* ~No! Nothing of the kind.~ #74849 */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 109 // from: 107.1
  SAY @167 /* ~No! Nothing of the kind.~ #74849 */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 110 // from: 107.2
  SAY @168 /* ~It's not like that at all. The effect should really be quite subtle.~ #74850 */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0 109.0 108.0 107.3
  SAY @169 /* ~Please don't take this the wrong way...gods, I think you're beautiful enough as it is. I've been experimenting with a cream I had an apothecary create for me on our last trip, and I've worked a minor enchantment on it as well.~ #74851 */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY @170 /* ~It should work with your natural tone and facial structure, but it will soften some of the dirt of the road and, if my magic works correctly, it should make people even more...susceptible to your suggestions. Nothing illegitimate, of course.~ #74852 */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY @171 /* ~Would you take it? I would really like to see it on you, if you don't mind...~ #74853 */
  IF ~~ THEN REPLY @172 /* ~I would be honored. This is a very sweet thought, Kelsey.~ #75443 */ GOTO 114
  IF ~~ THEN REPLY @173 /* ~I will take your gift but I can't promise you I will wear it.~ #75444 */ GOTO 115
  IF ~~ THEN REPLY @174 /* ~I am uncomfortable with the idea of magical makeup, Kelsey. Perhaps another time.~ #75445 */ GOTO 116
  IF ~~ THEN REPLY @175 /* ~This was a foolish project. I'm not interested.~ #75446 */ GOTO 117
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @176 /* ~Wonderful! Here you go. I hope you like it. I'm sorry there isn't more, but this is a new thing for me and I wasn't sure you would like it.~ #74854 */
  IF ~~ THEN DO ~ActionOverride(Player1,CreateItem("j#potn01",2,0,0))
AddXPObject("J#Kelsey",1000)~ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY @177 /* ~Oh, I don't want you to feel pressured. I really just want you to have it...if there isn't a good time to try it on for a while, I understand. A lot of the fun is just in the making and the giving anyway.~ #74855 */
  IF ~~ THEN DO ~ActionOverride(Player1,CreateItem("j#potn01",2,0,0))
AddXPObject("J#Kelsey",1000)~ EXIT
END

IF ~~ THEN BEGIN 116 // from: 113.2
  SAY @178 /* ~Oh. That's OK...you probably wouldn't have liked the color anyway. Sorry...I'll try to think of something better next time.~ #74856 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from: 113.3
  SAY @179 /* ~Oh. That's OK...you probably wouldn't have liked the color anyway. Sorry...I'll try to think of something better next time.~ #74856 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from: 120.1 106.2
  SAY @180 /* ~Well...I'm not a squire, you know. I had something a little different in mind, a little more in tune with my abilities...~ #74857 */
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 119 // from: 120.2 106.3
  SAY @181 /* ~I don't understand what's gotten in to you...but if that's the way you want to play it, I can live with that.~ #74858 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY @182 /* ~As I was saying...<CHARNAME>, can I do something for you?~ #74859 */
  IF ~~ THEN REPLY @183 /* ~Do what? What are you talking about?~ #75436 */ GOTO 107
  IF ~~ THEN REPLY @184 /* ~Sure! Clean my pack, sharpen my dagger, wash my laundry, mend my boots...~ #75437 */ GOTO 118
  IF ~~ THEN REPLY @185 /* ~You can bug off, I have no time to deal with you.~ #75438 */ GOTO 119
END

IF ~~ THEN BEGIN 121 // from:
  SAY @186 /* ~What makes you think any of us enjoy listening to your incessant bragging and strutting?~ #74860 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_594
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_594
SAY @1041
IF ~~ THEN EXTERN BJ#KLSY 122
END
END


IF ~~ THEN BEGIN 122 // from:
  SAY @187 /* ~You may swing a mean cudgel, but that hardly makes you anything special. Isn't there a god of bullying that would suit you better than Helm?~ #74861 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_595
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_595
SAY @1042
IF ~~ THEN EXTERN BJ#KLSY 123
END
END


IF ~~ THEN BEGIN 123 // from:
  SAY @188 /* ~Fine, I won't tread on your religion if you won't tread on my private conversations. Deal?~ #74862 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_596
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_596
SAY @1043
IF ~~ THEN EXTERN BJ#KLSY 120
END
END


IF ~Global("J#LoveTalk","LOCALS",12)
!StateCheck(Player1,STATE_SLEEPING)
OR(4)
StateCheck("Anomen",STATE_DEAD)
!InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",0)
Global("AnomenRomanceActive","GLOBAL",3)~ THEN BEGIN 124 // from:
  SAY @189 /* ~Spending time in your company certainly keeps my mind busy. I haven't thought of my family problems for days now.~ #74863 */
  IF ~~ THEN REPLY @190 /* ~Is that a good thing or a bad thing?~ #75447 */ GOTO 125
  IF ~~ THEN REPLY @191 /* ~Good. I need you focused.~ #75448 */ GOTO 126
  IF ~~ THEN REPLY @192 /* ~Oh, again with the whining. Really, knock it off.~ #75449 */ GOTO 127
END

IF ~~ THEN BEGIN 125 // from: 143.0 124.0
  SAY @193 /* ~Good! I think I spend entirely too much time brooding over it. Between your friendship and your exciting lifestyle, I'm completely occupied.~ #74864 */
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 126 // from: 143.1 124.1
  SAY @194 /* ~Yes, well, I have tried to be attentive to anything you need from me.~ #74865 */
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 143.2 124.2
  SAY @195 /* ~Hey, fine, if you don't want to talk, you won't have to worry about me distracting you.~ #74866 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 125.0
  SAY @196 /* ~Still, it galls me, the way Birinar drove me out. He reappears from nowhere, pretends he's comforting my mother, and she entrusts him with all of the important business decisions.~ #74867 */
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY @197 /* ~I can remember, when my father was still alive, my mother would talk about how much of a punk Birinar had been growing up. His sudden death must have really clouded her judgement.~ #74868 */
  IF ~~ THEN REPLY @198 /* ~Losing a loved one can be very troubling. Her brother may have provided the comfort of younger, happier days.~ #75450 */ GOTO 130
  IF ~~ THEN REPLY @199 /* ~Perhaps you should have been more assertive, as your father's son and heir.~ #75451 */ GOTO 139
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY @200 /* ~Maybe. But he seemed just as shifty and good-for-nothing as she described him when I met him, and he did nothing to change my opinion later.~ #74869 */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 139.0 130.0
  SAY @201 /* ~Birinar knows nothing. The company's profits have been dwindling since he showed up, and it's all I and a few loyal employees have been able to do keep him from ruining absolutely everything.~ #74870 */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY @202 /* ~And after a year or so, when I finally confronted her with a stack of evidence showing how his decisions were losing us money, she sided with him and they sent me away...seven, eight years ago? Gods, I've lost track!~ #74871 */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY @203 /* ~I think...I think that very soon, I will make my way back and settle this matter once and for all...either wrest my father's legacy away from them, or wash my hands of it entirely.~ #74872 */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @204 /* ~They're set up in a rather extravagant villa on the Deepwash...perhaps you might accompany me, after we've worked through your problems? At the very least, perhaps we can get in some canoeing.~ #74873 */
  IF ~~ THEN REPLY @205 /* ~It sounds to me like this uncle has poisoned your mother's mind. I would be honored to help you set things right.~ #75452 */ GOTO 135
  IF ~~ THEN REPLY @206 /* ~I am interested in the boat ride, I am not so sure I want to become part of some family feud. I have my own problems with relatives, so to speak.~ #75453 */ GOTO 136
  IF ~~ THEN REPLY @207 /* ~Do not speak so glibly of the future...we still have a long and dangerous road ahead of us.~ #75454 */ GOTO 137
  IF ~~ THEN REPLY @208 /* ~Doubtful. I am not interested in helping you win back some trading post or warehouse you were too weak to hold.~ #75455 */ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY @209 /* ~It may just be that. Hopefully a little unity and good sense is all it will take to settle matters. Thank you for the offer, <CHARNAME>. You're very generous to support me like this.~ #74874 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.1
  SAY @210 /* ~All right, we'll see the sights together. Who knows, perhaps I can settle everything while you select a pier to launch from.~ #74875 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from: 134.2
  SAY @211 /* ~I know, that's what has kept my mind off of this little family squabble. But I think it's time I paid more attention to the big picture.~ #74876 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from: 134.3
  SAY @212 /* ~Hey! That's a nasty thing to say. If you don't want to come along, then fine.~ #74877 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from: 129.1
  SAY @213 /* ~I did assert myself! But my father left the trading company to my mother...I was fifteen anyway, nobody was going to take me seriously on my own.~ #74878 */
  IF ~~ THEN GOTO 131
END

IF ~Global("J#LoveTalk","LOCALS",12)
!StateCheck(Player1,STATE_SLEEPING)
!StateCheck("Anomen",STATE_DEAD)
InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",1)~ THEN BEGIN 140 // from:
  SAY @214 /* ~Can I speak to you a moment? About my family?~ [FWKLSY59] #74879 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_597
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_597
SAY @1044
IF ~~ THEN EXTERN BANOMEN BANOMEN_598
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_598
SAY @1045
IF ~~ THEN EXTERN BJ#KLSY 141
END
END


IF ~~ THEN BEGIN 141 // from:
  SAY @215 /* ~Are all priests as petty and jealous as you are? I'm trying to have a conversation with a friend of mine. I don't see your name branded on her arm. Is there some reason you treat us all like your property?~ [FWKLSY60] #74880 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_599
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_599
SAY @1046
IF ~~ THEN EXTERN BJ#KLSY 142
END
END


IF ~~ THEN BEGIN 142 // from:
  SAY @216 /* ~Funny, I seem to be standing exactly there right now.~ #74881 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_600
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_600
SAY @1047
IF ~~ THEN EXTERN ~BJ#KLSY~ 143
END
END

IF ~~ THEN BEGIN 143 // from:
  SAY @217 /* ~As I was saying, spending time in your company certainly keeps my mind busy. I haven't thought of my family problems for days now.~ [FWKLSY61] #74882 */
  IF ~~ THEN REPLY @218 /* ~Is that a good thing or a bad thing?~ #75447 */ GOTO 125
  IF ~~ THEN REPLY @219 /* ~Good. I need you focused.~ #75448 */ GOTO 126
  IF ~~ THEN REPLY @220 /* ~Oh, again with the whining. Really, knock it off.~ #75449 */ GOTO 127
END




IF ~Global("J#LoveTalk","LOCALS",14)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 157 // from:
  SAY @243 /* ~Leading as dangerous and nomadic a life as you have recently, have you had much time to make and keep friends?~ [FWKLSY62] #74893 */
  IF ~~ THEN REPLY @244 /* ~Mostly among those I travel with, but yes, there are some I call "friend."~ #75461 */ GOTO 158
  IF ~~ THEN REPLY @245 /* ~Life is too unstable to count on anyone for long.~ #75462 */ GOTO 172
  IF ~~ THEN REPLY @246 /* ~Why, yes, despite all the blood and intrigue that surrounds me, I actually think I'm quite a people person.~ #75463 */ GOTO 173
  IF ~~ THEN REPLY @247 /* ~I don't have time to discuss my personal life.~ #75464 */ GOTO 174
  IF ~~ THEN REPLY @248 /* ~Oh, knock it off already. I don't enjoy these stupid chats.~ #75465 */ GOTO 175
END

IF ~~ THEN BEGIN 158 // from: 157.0
  SAY @249 /* ~Of course, they say you should keep your friends close and your enemies closer...but I think we have done it the right way. Friends close, enemies in sight but in their place.~ #74894 */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 173.0 172.0 158.0
  SAY @250 /* ~It's strange. I always thought as I grew older that it would be easier to find true friends, but with a few notable exceptions, that has not exactly been the case.~ #74895 */
  IF ~~ THEN REPLY @251 /* ~You didn't have many friends as a child, then?~ #75466 */ GOTO 160
  IF ~~ THEN REPLY @252 /* ~Truly, a sad story, but I have no time for the rest.~ #75467 */ GOTO 174
  ++ @3310 + lt14_solved1
  ++ @3311 + lt14_toohard
END

IF ~~ lt14_solved1
SAY @3312
IF ~~ GOTO 161
END

IF ~~ lt14_toohard
SAY @3313 = @3314
IF ~~ THEN GOTO 164
END


IF ~~ THEN BEGIN 160 // from: 159.0
  SAY @253 /* ~No. Travelling with my father as much as I did, it was difficult to form any real sense of bond or trust with other children. And as sleazy as some of the traders my father did business were, some of their offspring were even worse. And they were the most available.~ #74896 */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY @254 /* ~I assumed, though, that as I settled down and controlled more of my own comings and goings that things would improve, but I mostly found that petty, cruel children grew up to be even worse as young adults.~ #74897 */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY @255 /* ~And when I started working with militias and adventure companies...well, you know that good men are hard to find. Camaraderie wasn't nearly as important as getting paid to most of them.~ #74898 */
  IF ~~ THEN REPLY @256 /* ~How true.~ #75468 */ GOTO 163
  IF ~~ THEN REPLY @257 /* ~Look on the bright side, though...you didn't have to grow up with Imoen.~ #75469 */ GOTO 171
  ++ @3315 + lt14_straight
  ++ @3316 + lt14_friendsnow
END

IF ~~ lt14_straight
SAY @3317 = @3318
IF ~~ GOTO 163
END

IF ~~ lt14_friendsnow
SAY @3319 = @3320
IF ~~ GOTO 164
END


IF ~~ THEN BEGIN 163 // from: 171.0 162.0
  SAY @258 /* ~I did have the good fortune to meet Bryan Linn on one excursion along the Sword Coast, although it was a couple of years before your adventures there.~ #74899 */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY @259 /* ~I joined up with some Turmish trading company and noble retinue, as a combination junior negotiator and guard. They didn't really know what to do with me, I think, but they were intrigued enough to have me travel with them for a time, and I was working cheap.~ #74900 */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY @260 /* ~Linn was making his home in Turmish although he was clearly not a native. After a few days he introduced himself to me and told me very matter-of-factly that he was a fellow sorcerer and wanted to help me.~ #74901 */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY @261 /* ~It was like an answered prayer...he taught me the discipline I had never learned, and some magical combat tactics as well. He really was my friend.~ #74902 */
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY @262 /* ~But it didn't last...just a few weeks into the trip, Bryan got caught up in some crossfire during a routine scuffle with bandits. It wasn't life-threatening, but it could have been, and he decided to retire before he caught an arrow in the eye.~ #74903 */
  IF ~~ THEN REPLY @263 /* ~Well, better that your friend settled down rather than die in your arms or something equally terrible and poetic.~ #75470 */ GOTO 168
  IF ~~ THEN REPLY @264 /* ~That's the way it goes...see, people come and go.~ #75471 */ GOTO 169
  IF ~~ THEN REPLY @265 /* ~I hope you're not as cowardly.~ #75472 */ GOTO 170
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY @266 /* ~I know. But I miss him and his counsel...he's one of the few sorcerers I've ever met, at least that would admit to it. It's difficult having no peers, but I suppose you might understand that even better than I. At least we have each other, eh?~ #74904 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from: 167.1
  SAY @267 /* ~Oh, I don't know. You can count on me, and I certainly believe I can count on you. Perhaps you'll have a chance to meet him one day, if we travel that far east.~ #74905 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 170 // from: 167.2
  SAY @268 /* ~I don't think Bryan was a coward at all, just practical. He wanted to live and die on his own terms, not because somebody on his side couldn't aim straight.~ #74906 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 171 // from: 162.1
  SAY @269 /* ~Another joke at my expense...from what I know I would have considered myself lucky.~ #74907 */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 172 // from: 157.1
  SAY @270 /* ~I can understand why you might feel that way, but if you don't mind a little random flattery, I think you're a good counter-example.~ #74908 */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 173 // from: 157.2
  SAY @271 /* ~Hah! Cleverly put. You certainly have a way with some people I know.~ #74909 */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 174 // from: 159.1 157.3
  SAY @272 /* ~I thought you might welcome the distraction. Very well.~ #74910 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from: 180.2 157.4
  SAY @273 /* ~Then I will not bother you again.~ #74911 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END



IF ~Global("J#LoveTalk","LOCALS",16)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 176 // from:
  SAY @274 /* ~I like to think of myself as agreeable...I don't come across as particularly hostile or dangerously angry, do I?~ [FWKLSY63] #74912 */
  IF ~~ THEN REPLY @275 /* ~Are you kidding me? Sometimes I think we should check your pulse to make sure you still live.~ #75473 */ GOTO 177
  IF ~~ THEN REPLY @276 /* ~I would not say you are irate by nature, no.~ #75474 */ GOTO 178
  IF ~~ THEN REPLY @277 /* ~You seem at least as edgy as the next guy.~ #75475 */ GOTO 191
  IF ~~ THEN REPLY @278 /* ~You come across poorly in general, leave me be.~ #75476 */ GOTO 202
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY @279 /* ~Well...I may not be the biggest or the strongest, but we have fought side by side, surely I have made some sort of impression on you.~ #74913 */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0 176.1
  SAY @280 /* ~I wonder why it is that so many of the spells I cast are designed to hurt people. Especially before I met Bryan and he taught me how to better shape my magical energy to better protect myself, most of what I could do was designed for death and destruction.~ [FWKLSYD0] #74914 */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY @281 /* ~What does that say about me? That instinctually, I want to cause pain? I think I could have better dealt with the onset of my abilities if I first was able to see in the dark or put people to sleep.~ [FWKLSYD1] #74915 */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY @282 /* ~But no, I found out one day, entirely by accident, that I could start my hands on fire and burn anything nearby to a crisp. Terrific, right?~ #74916 */
  IF ~~ THEN REPLY @283 /* ~Don't knock it, fire is a powerful tool.~ #75477 */ GOTO 181
  IF ~~ THEN REPLY @284 /* ~I can certainly see how that would be unnerving, but it's not as though you grew a third arm.~ #75478 */ GOTO 181
  IF ~~ THEN REPLY @285 /* ~Can you not whine to someone else?~ #75479 */ GOTO 175
END

IF ~~ THEN BEGIN 181 // from: 180.1 180.0
  SAY @286 /* ~I'm sure it sounds like great fun, but when you're a fifteen-year old kid, it is a terrifying power, not to mention an unbelievable temptation.~ #74917 */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.0
  SAY @287 /* ~It is a very difficult feeling. I can defend myself and my friends against threats, and I feel good about that. But it has its costs. Do you have any idea what it feels like to constantly be able to shoot a deadly ball of flame across a room at a moment's notice?~ #74918 */
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183 // from: 182.0
  SAY @288 /* ~Sometimes, I'm tempted to do it just to see what happens. Isn't that awful?~ #74919 */
  IF ~~ THEN REPLY @289 /* ~It should feel like a rush of power, Kelsey. Loosen up.~ #75480 */ GOTO 184
  IF ~~ THEN REPLY @290 /* ~Perhaps you were simply destined to be valuable in dangerous times.~ #75481 */ GOTO 187
  IF ~~ THEN REPLY @291 /* ~I am sorry it troubles you so.~ #75482 */ GOTO 189
END

IF ~~ THEN BEGIN 184 // from: 183.0
  SAY @292 /* ~Loosen up? How can you say that, <CHARNAME>? Haven't you been listening to me at all?~ #74920 */
  IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY @293 /* ~I can't stand being this dangerous! I feel like my own worst nightmare, like someone who can't be trusted, who is a threat to himself and everyone around him, and you tell me to loosen up?~ #74921 */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 190.0 188.0 185.0
  SAY @294 /* ~I...have an incredible headache right now, so I am going to stop talking to you now before I say something I don't really mean.~ [FWKLSYD2] #74922 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 187 // from: 183.1
  SAY @295 /* ~Oh, yes, I am certain that's it. I was destined to be here to shoot bolts of death at your enemies when it suits you.~ #74923 */
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY @296 /* ~Lucky me. What would I have done if <CHARNAME> had not brought the wrath of the world my way? I would have been useless.~ #74924 */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 189 // from: 183.2
  SAY @297 /* ~You say that now, but honestly, <CHARNAME>, I don't think you would have me around if I wasn't a walking bringer of death for you.~ #74925 */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY @298 /* ~I don't think you really care how I feel. I'm just another piece on the tactical map to you.~ #74926 */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 191 // from: 176.2
  SAY @299 /* ~Truly? Perhaps my own perspective on my soul is out of focus, then.~ #74927 */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY @300 /* ~I thought of myself as a fairly calm and friendly person, but you may be right. Perhaps that explains why so much of the magic I developed, before Bryan taught me how to better shape it, was designed to hurt and to kill.~ #74928 */
  IF ~~ THEN REPLY @301 /* ~Could be. You really should learn to relax.~ #75483 */ GOTO 193
  IF ~~ THEN REPLY @302 /* ~Indeed. Everyone's soul has a dark side, magic may be how yours expresses itself.~ #75484 */ GOTO 199
  IF ~~ THEN REPLY @303 /* ~Only cowards dither about their obvious strengths.~ #75485 */ GOTO 200
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY @304 /* ~It's hard to relax when you've been shooting fire out of your fingertips on command for the better part of a decade, <CHARNAME>. I do seem to be getting used to it, which is scary in itself.~ #74929 */
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 201.0 199.0 193.0
  SAY @305 /* ~That doesn't mean I have to like it. Yet I seem to be good at what I do. I feel like whatever blackness is guiding my magic is also being fed by that same magic, and I am defined more and more by it.~ #74930 */
  IF ~~ THEN REPLY @306 /* ~I don't agree at all. You are more than just your magic.~ #75486 */ GOTO 195
  IF ~~ THEN REPLY @307 /* ~If you don't like your life, change it. Nobody is stopping you.~ #75487 */ GOTO 197
  IF ~~ THEN REPLY @308 /* ~Well, complaining to me isn't going to help much.~ #75488 */ GOTO 198
END

IF ~~ THEN BEGIN 195 // from: 194.0
  SAY @309 /* ~Really? I think you only let me travel with you because my magic is useful. In your eyes, I may as well just BE a fireball.~ #74931 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 198.0 197.0 195.0
  SAY @310 /* ~I'm going to stop talking now before I make the mood even worse.~ [FWKLSYD3] #74932 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 197 // from: 194.1
  SAY @311 /* ~That's easier said than done, when everything and everyone around me just sees an asset or a pawn or a throwaway.~ #74933 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 198 // from: 194.2
  SAY @312 /* ~You see what I mean? If I go beyond following orders and casting spells, nobody wants to hear about it. I'm not even a person to you anymore.~ #74934 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 199 // from: 192.1
  SAY @313 /* ~I think you are on to something. I used to fear that the magical energy had to come from somewhere, and it was coming from my soul, that I was somehow burning it up. Perhaps you're right.~ #74935 */
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 200 // from: 192.2
  SAY @314 /* ~Coward? I won't pretend I have the glory or recognition you and some of your famous friends have earned, but I don't think a little introspection is cowardly.~ #74936 */
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY @315 /* ~I look at myself, and I see a man who is growing comfortable with power, maybe too comfortable.~ #74937 */
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 202 // from: 176.3
  SAY @316 /* ~Fine, I'll discuss my thoughts with someone else and leave you to yours.~ #74938 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",18)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 203 // from:
  SAY @317 /* ~I owe you an apology. I have been very inconsiderate...you have been a good and understanding friend and I snapped at you. I'm sorry, <CHARNAME>.~ [FWKLSY64] #74939 */
  IF ~~ THEN REPLY @318 /* ~It's all right. I can tell when someone is truly angry and when someone is just letting off steam.~ #75489 */ GOTO 204
  IF ~~ THEN REPLY @319 /* ~You're right, you were inconsiderate. Just what is it you expect from me?~ #75490 */ GOTO 219
  IF ~~ THEN REPLY @320 /* ~Forget it, brother. Tell it to someone else.~ #75491 */ GOTO 220
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",1)~ THEN EXTERN BANOMEN klt18conf
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY @321 /* ~No, no, I do not want to use an easy excuse.~ #74940 */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 219.0 204.0
  SAY @322 /* ~There is no excuse for turning on people who are only trying to listen and be helpful, but that is what I did to you.~ #74941 */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY @323 /* ~I don't think I realized how lonely I have been these last few years, with very few friendly faces to talk to, until we met.~ #74942 */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY @324 /* ~I trust you, <CHARNAME>, and I feel like I can talk to you about anything. I WANT to talk to you about anything, <CHARNAME>. I just...forgot that courtesy isn't only for listeners, it's for talkers as well.~ #74943 */
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY @325 /* ~So I can only hope you're still willing to talk...and to listen.~ #74944 */
  IF ~~ THEN REPLY @326 /* ~No, I cannot put up with this.~ #75492 */ GOTO 220
  IF ~~ THEN REPLY @327 /* ~Against my better judgement, I'm still listening.~ #75493 */ GOTO 209
  IF ~~ THEN REPLY @328 /* ~It will take more than a few cross words to make me stop being your friend, Kelsey.~ #75494 */ GOTO 218
END

IF ~~ THEN BEGIN 209 // from: 208.1
  SAY @329 /* ~Thank you...I will try to earn your continued patience.~ #74945 */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 218.0 209.0
  SAY @330 /* ~I think the worst part is that I did not mean what I said about being unappreciated.~ #74946 */
  IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY @331 /* ~On the contrary, you are the best friend I have had in a long time, and I feel more accepted here than I have...well, probably anywhere, since I developed my magic.~ #74947 */
  IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY @332 /* ~Why have you been so nice to me? It can't just be for the magic, you could have someone else stand back here and cast spells at your enemies.~ #74948 */
  IF ~~ THEN REPLY @333 /* ~Why? Why not? Don't spoil it.~ #75495 */ GOTO 213
  IF ~~ THEN REPLY @334 /* ~Because I like you, Kelsey, and I value your company.~ #75496 */ GOTO 214
  IF ~~ THEN REPLY @335 /* ~Because I think there's probably a special person under all that angst, and I'm trying to dig him out.~ #75497 */ GOTO 216
  IF ~~ THEN REPLY @336 /* ~Now that you ask, I can't think of a good reason.~ #75498 */ GOTO 217
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY @337 /* ~Okay, you're the boss, boss.~ #74949 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 214 // from: 212.1
  SAY @338 /* ~I...like you a lot too, <CHARNAME>.~ #74950 */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 214.0
  SAY @339 /* ~Ahem. I shouldn't distract you for long stretches like this...lead on.~ #74951 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 216 // from: 212.2
  SAY @340 /* ~Ah, so I'm a project? Sounds good to me! Let me know when you find something in here you like.~ #74952 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from: 212.3
  SAY @341 /* ~I think I have just asked one question too many...a traditional deal-killer. *Sigh*~ #74953 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 218 // from: 208.2
  SAY @342 /* ~I am glad to hear it. Hopefully I will not test those limits again.~ #74954 */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 219 // from: 203.1
  SAY @343 /* ~I should know better. I only hoped that by talking through my problems with a friend, I would feel better, but I got out of control.~ #74955 */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 220 // from: 208.0 203.2
  SAY @344 /* ~I see I dug the grave for our relationship...~ #74956 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",20)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 227 // from:
  SAY @351 /* ~I cannot decide if I think the world is entirely too big or entirely too small.~ [FWKLSY65] #74963 */
  IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228 // from: 227.0
  SAY @352 /* ~On the one hand, there are races and civilizations all over the land, and below it, and above it. On the other hand, they all seem to object to our continued existence and know where to find us.~ [FWKLSY66] #74964 */
  IF ~~ THEN REPLY @353 /* ~It is a dangerous life we lead, no argument here.~ #75499 */ GOTO 229
  IF ~~ THEN REPLY @354 /* ~The world isn't big enough to keep you from pestering me, it seems. Take a hike.~ #75500 */ GOTO 240
  IF ~~ THEN REPLY @355 /* ~I cannot make the world a safer place, I can only hope we survive.~ #75501 */ GOTO 229
  IF ~~ THEN REPLY @356 /* ~Land, sea, or air, I am not afraid of conflict, you should know that by now.~ #75502 */ GOTO 241
END

IF ~~ THEN BEGIN 229 // from: 241.0 228.2 228.0
  SAY @357 /* ~I worry about you. I know that you are capable and strong and don't really need my concern, but I don't want to see anything happen to you.~ #74965 */
  IF ~~ THEN REPLY @358 /* ~Yeah, right. Admit it, you're afraid for your own skin!~ #75503 */ GOTO 230
  IF ~~ THEN REPLY @359 /* ~Your concern is touching, in its way, but hardly necessary.~ #75504 */ GOTO 238
  IF ~~ THEN REPLY @360 /* ~I appreciate that, Kelsey, but I think we do a good job of looking out for each other.~ #75505 */ GOTO 239
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY @361 /* ~It's nothing like that at all! <CHARNAME>, if I was afraid for myself, could I not have left already? This is not a buildup to a resignation speech, I am trying to tell you how I feel about you.~ #74966 */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 239.0 238.0 230.0
  SAY @362 /* ~I am...very fond of you, and I want to know you better and perhaps...grow even more fond of you. But I can't do that if the Eleventh Ogre Battalion crushes you under a rockslide because they don't like your hairstyle, so I'm just saying that I hope nothing like that happens.~ #74967 */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY @363 /* ~I know that you have to be yourself, and current circumstances seem to demand a large dose of aggression and violence...just promise me that you'll remember that someone enjoys seeing you in one piece after a battle, okay?~ [FWKLSYD4] #74968 */
  IF ~~ THEN REPLY @364 /* ~As long as you do the same for me, we have a deal, trader Kelsey.~ #75506 */ GOTO 233
  IF ~~ THEN REPLY @365 /* ~I had no idea you cared so much.~ #75507 */ GOTO 236
  IF ~~ THEN REPLY @366 /* ~Don't be so naïve. Death will come for all of us, sooner or later. Your wishes don't hold much weight.~ #75508 */ GOTO 237
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY @367 /* ~So we do!~ #74969 */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 237.0 236.0 233.0
  SAY @368 /* ~Meeting you has given me a much more positive outlook on life. That's why I resent these dark clouds that hang over us so much...they're getting in the way of the light I've only started seeing recently.~ #74970 */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY @369 /* ~So! If you do see that hypothetical Ogre Battalion, let's run the other way, shall we? I'll cover our strategic withdrawl with a cleverly placed fireball and we can sneak away in the confusion. There's no sense in dirtying your pretty features in a fight we don't actually need to fight, right?~ #74971 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 236 // from: 232.1
  SAY @370 /* ~Well, I do.~ #74972 */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 237 // from: 232.2
  SAY @371 /* ~You can be a fatalist if you like, just be a careful one and I'll be satisfied.~ #74973 */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 238 // from: 229.1
  SAY @372 /* ~It seems to me that makes it all the more worth saying, so I will say it again. I don't want to see anything happen to you.~ #74974 */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 239 // from: 229.2
  SAY @373 /* ~I...think we make a pretty good team too, <CHARNAME>.~ #74975 */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 240 // from: 228.1
  SAY @374 /* ~Fine, keep your own counsel, then.~ #74976 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 228.3
  SAY @375 /* ~I know it well. I am...somewhat concerned, <CHARNAME>, that your eagerness to prove your strength sometimes puts you in harm's way unnecessarily.~ #74977 */
  IF ~~ THEN GOTO 229
END


IF ~Global("J#LoveTalk","LOCALS",22)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 242 // from:
  SAY @376 /* ~<CHARNAME>? What are you thinking?~ [FWKLSY67] #74978 */
  IF ~~ THEN REPLY @377 /* ~Nothing, really. Just trying to focus on the road ahead without actually thinking about it too much, you know?~ #75509 */ GOTO 243
  IF ~~ THEN REPLY @378 /* ~I'm glad you asked, but to be honest, it's nothing I can really place into words. Things seem like such a jumbled mess sometimes.~ #75510 */ GOTO 243
  IF ~~ THEN REPLY @379 /* ~I'm thinking that I'm sick of the sound of your voice, loser.~ #75511 */ GOTO 255
  IF ~~ THEN REPLY @380 /* ~I'm thinking about death, vengeance, a glass of wine and being on the receiving end of a long backrub, in no particular order.~ #75512 */ GOTO 256
END

IF ~~ THEN BEGIN 243 // from: 256.0 242.1 242.0
  SAY @381 /* ~Well, I've been doing some thinking, and it seems to me that you and I have something in common, and I was hoping we could talk about it.~ #74979 */
  IF ~~ THEN REPLY @382 /* ~Oh? What's that?~ #75513 */ GOTO 244
  IF ~~ THEN REPLY @383 /* ~Don't take this the wrong way, but I don't think we're all that much alike.~ #75514 */ GOTO 244
  IF ~~ THEN REPLY @384 /* ~Yes, we both have the same problem--you. Go try your pitiful lines on the courtesans, I don't get paid enough to listen to this.~ #75515 */ GOTO 255
END

IF ~~ THEN BEGIN 244 // from: 243.1 243.0
  SAY @385 /* ~Being...what I am is not easy for me. Magic is a weird thing, but most mages know all about how it works, because they study constantly trying to figure it out. For me, it's a piece of cake.~ #74980 */
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245 // from: 244.0
  SAY @386 /* ~Think of any powerful wizard in the Realms. He might have enough power to slay a whole army, but he has to prepare carefully. If he wants to disintegrate someone today, he had to be planning it last night. Same thing with casting a fireball, or hurling a ball of glue. Those guys have to plan.~ #74981 */
  IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY @387 /* ~But me? I wake up every morning, and sometimes it's like I can FEEL this overload of magical energy soaking my body, and I can do almost anything I want with it. No preparation, no nothing.~ #74982 */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY @388 /* ~And every so often, I go to sleep, wake up, and I know how to shape that energy in a new way. I'm told that for every sorcerer it's a little different, but we consciously and subconsciously shape the new spells we "learn" based on what we know and what we want in life.~ #74983 */
  IF ~~ THEN REPLY @389 /* ~Is this going somewhere?~ #75516 */ GOTO 248
  IF ~~ THEN REPLY @390 /* ~Kelsey, honey, you're getting all worked up...what are you trying to say?~ #75517 */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 247.1 247.0
  SAY @391 /* ~My point is--you know what this is like too, don't you? You've had power come upon you in a rush, taking you by surprise, right? You've had to deal with this just like me!~ #74984 */
  IF ~~ THEN REPLY @392 /* ~Yes, Kelsey, you're right. I'm a child of Bhaal, and although it's not always a walk in the park, it has had some fringe benefits.~ #75518 */ GOTO 249
  IF ~~ THEN REPLY @393 /* ~Yes, Kelsey, I guess that's true enough, I have grown stronger over time, but that's easy enough to deal with.~ #75519 */ GOTO 254
  IF ~~ THEN REPLY @394 /* ~I don't know what you're talking about.~ #75520 */ GOTO 254
END

IF ~~ THEN BEGIN 249 // from: 254.1 254.0 248.0
  SAY @395 /* ~What's it like, for you? How did you find out about your powers?~ #74985 */
  IF ~~ THEN REPLY @396 /* ~It's unpleasant for me to think about, Kelsey. It's enough that you know I have them.~ #75521 */ GOTO 250
  IF ~~ THEN REPLY @397 /* ~They came to me in dreams...very unpleasant ones, and when I woke up, I just knew how to do new things by thinking about them. It became second nature after a while.~ #75522 */ GOTO 250
  ++ @3321 + lt22_annoy
  ++ @3322 + lt22_nature
END


IF ~~ lt22_annoy
SAY @3323
IF ~~ EXIT
END

IF ~~ lt22_nature
SAY @3324 = @3325
IF ~~ GOTO 251
END


IF ~~ THEN BEGIN 250 // from: 249.1 249.0
  SAY @398 /* ~I see. Do they ever scare you? Do you worry about what using them does to you? My powers kind of scare me. When I was younger, I used to hope that it would fade as I got older, or if I just cast one more magic missile at a tree I could use up all the power for good and it would never come back.~ #74986 */
  IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251 // from: 250.0
  SAY @399 /* ~But, of course, that didn't happen...on the contrary, the more I use my magic, the more power I GAIN over time. So I have to wonder...if my magic is getting stronger, where is that power coming from? What am I giving up in return?~ #74987 */
  IF ~~ THEN REPLY @400 /* ~I can't answer that, Kelsey. But I don't think you're inhuman or a monster or anything like that.~ #75523 */ GOTO 252
  IF ~~ THEN REPLY @401 /* ~Magic can certainly corrupt people, but I think you're a good person and it's not a problem. And I'll slap you silly if I see you stray, ok?~ #75524 */ GOTO 252
  IF ~~ THEN REPLY @402 /* ~I don't know. Power carries the responsibility of vigilance. No one can watchdog you better than you can.~ #75525 */ GOTO 253
END

IF ~~ THEN BEGIN 252 // from: 251.1 251.0
  SAY @403 /* ~I'm glad to hear you say that. I know it sounds silly, but it's nice to know that I'm not alone. You make me feel like I'm not alone. Thank you, <CHARNAME>.~ #74988 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 253 // from: 251.2
  SAY @404 /* ~I suppose you're right. I hope you don't mind me bothering you about this, but it helps me to know that someone else might understand how I feel.~ #74989 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 254 // from: 248.2 248.1
  SAY @405 /* ~<CHARNAME>...I'm almost certain that you're one of Bhaal's children. I've seen you in action, I've heard stories about Sarevok and Baldur's Gate. And that gives you certain special powers, doesn't it? Things ordinary people can't do?~ #74990 */
  IF ~~ THEN REPLY @406 /* ~I had hoped to protect you from my secret, but yes, I am a child of Bhaal.~ #75526 */ GOTO 249
  IF ~~ THEN REPLY @407 /* ~You're quite the detective, Kelsey. I plead guilty and throw myself upon the mercy of the court.~ #75527 */ GOTO 249
  IF ~~ THEN REPLY @408 /* ~Why, you little snake in the grass! Mind your own damn business!~ #75528 */ GOTO 255
END

IF ~~ THEN BEGIN 255 // from: 254.2 243.2 242.2
  SAY @409 /* ~I just wanted to have a mature conversation, but I guess I had you pegged wrong. Don't worry, your secret is safe with me.~ #74991 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 256 // from: 242.3
  SAY @410 /* ~Oh! Maybe I can help you with some of the items towards the end of that list, if you don't mind...but first...~ #74992 */
  IF ~~ THEN GOTO 243
END


IF ~Global("J#LoveTalk","LOCALS",24)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 257 // from:
  SAY @411 /* ~I am truly a lucky man to be in your company and on your good side.~ [FWKLSY68] #74993 */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY @412 /* ~Despite your incredible good looks and pleasant countenance, you're a terrifying leader in combat. I'm amazed most of our enemies even bother getting up in the morning anymore.~ [FWKLSY69] #74994 */
  IF ~~ THEN REPLY @413 /* ~Did anybody ask you? Stop bothering me with these nonsense blabbings.~ #75529 */ GOTO 259
  IF ~~ THEN REPLY @414 /* ~Awww, that's the nicest thing anyone's said to me all week.~ #75530 */ GOTO 260
  IF ~~ THEN REPLY @415 /* ~When it comes to my enemies, I have no room for sympathy. They deserve what they get, no matter what you or they think about me.~ #75531 */ GOTO 260
  IF ~~ THEN REPLY @416 /* ~I'm glad we got to know one another as friends instead of enemies as well.~ #75532 */ GOTO 260
END

IF ~~ THEN BEGIN 259 // from: 260.2 258.0
  SAY @417 /* ~Fine, I'll do that.~ #74995 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 260 // from: 258.3 258.2 258.1
  SAY @418 /* ~Do you remember the first time you were in a real fight? Not just where you raised your hand in anger, but where you were fighting for your life?~ #74996 */
  IF ~~ THEN REPLY @419 /* ~Not long after Gorion died...but there has been so much fighting since that the specifics are all a blur now, Kelsey.~ #75533 */ GOTO 261
  IF ~~ THEN REPLY @420 /* ~It was just after Gorion was killed. Imoen and I did what we had to in order to stay alive.~ #75534 */ GOTO 261
  IF ~~ THEN REPLY @421 /* ~I'm tired of these pointless chats. Leave me in peace.~ #75535 */ GOTO 259
END

IF ~~ THEN BEGIN 261 // from: 260.1 260.0
  SAY @422 /* ~I imagine it was very hard for you, being so sheltered by Gorion for all those years...but who am I kidding? My damsel in distress defeated an army almost single-handedly and turned the Sword Coast upside down!~ #74997 */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY @423 /* ~I'll never forget the first time I really tried to kill someone. For a while after I started developing my spells, I would use them for show, for practice...~ #74998 */
  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263 // from: 262.0
  SAY @424 /* ~Every once in a while my family or a caravan driver we'd be working with would ask me to fire warning shots at a suspicious gang in the distance, or I'd go on a hunt or defend against an attacking wild animal.~ #74999 */
  IF ~~ THEN REPLY @425 /* ~Then what happened? Obviously you got into more personal confrontations.~ #75536 */ GOTO 264
  IF ~~ THEN REPLY @426 /* ~Get to the point, please.~ #75537 */ GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.1 263.0
  SAY @427 /* ~One day, however, when I was minding one of our shops in Westgate, a pair of bandits strode in, full daylight, and started breaking up the place. There were a couple of customers but no guards on duty or nearby, and I was afraid for their lives and for mine.~ #75000 */
  IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265 // from: 264.0
  SAY @428 /* ~Without thinking, I fired an Acid Arrow spell at the closer bandit...it was a spell I had just realized I could cast a couple of weeks earlier, and I wasn't aware of its full potential yet.~ #75001 */
  IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY @429 /* ~The arrow, by freak chance, caught the bandit full in the neck, and the magic acid I'd created out of thin air did its work, very quickly.~ #75002 */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY @430 /* ~The image...I can't get the sight of that man's neck dissolving out of my head, but the sounds were worse. Oh, <CHARNAME> it was horrible.~ #75003 */
  IF ~~ THEN REPLY @431 /* ~Ugh, Kelsey, stop. This is too much.~ #75538 */ GOTO 268
  IF ~~ THEN REPLY @432 /* ~Go on, I'm still listening if it helps you to talk about it.~ #75539 */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 271.2 267.0
  SAY @433 /* ~(Shudder) You're right, I shouldn't make you think about such things. I'm sorry, I'll try not to be so morbid.~ #75004 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.1
  SAY @434 /* ~The noises he made...I can't even describe them. Anyway, his "friend" stopped slapping around a lady in the store to see what had happened.~ #75005 */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY @435 /* ~I think he expected that I was getting what I had coming to me. When he saw his friend's head...disintegrating, he turned white almost instantly and passed out.~ #75006 */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271 // from: 270.0
  SAY @436 /* ~The customers in the store weren't exactly pleased with the sight, either. It took quite a while for the guards to revive the other bandit and his would-be victim.~ #75007 */
  IF ~~ THEN REPLY @437 /* ~Oh, Kelsey, that IS horrible. I'm sorry I can't help you erase that painful memory.~ #75540 */ GOTO 272
  IF ~~ THEN REPLY @438 /* ~Well, I'm glad to see that the experience toughened you, at least.~ #75541 */ GOTO 272
  IF ~~ THEN REPLY @439 /* ~I've got enough death to deal with in one day...please, no more.~ #75542 */ GOTO 268
END

IF ~~ THEN BEGIN 272 // from: 271.1 271.0
  SAY @440 /* ~Once the adrenaline wore off and everything was almost back to normal, I had a chance to really think about what had happened, how I had sent someone to a terrifying death.~ #75008 */
  IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273 // from: 272.0
  SAY @441 /* ~I became hysterical. I wanted to kill myself, I wanted to find a way to get rid of my powers or make a deal with myself to never use them again for any reason. Even though he was in the wrong, I ended his life, and not humanely by any stretch of the imagination.~ #75009 */
  IF ~~ THEN REPLY @442 /* ~You did what you had to do to protect yourself and others, there's nothing wrong with that.~ #75543 */ GOTO 274
  IF ~~ THEN REPLY @443 /* ~It pleases me that you did not intend or revel in his suffering, but his death is not your fault, Kelsey.~ #75544 */ GOTO 274
  IF ~~ THEN REPLY @444 /* ~He messed with the wrong man. I'm proud of you for making him pay.~ #75545 */ GOTO 276
  IF ~~ THEN REPLY @445 /* ~If your response had been any less severe, all you would have done is tell the world that you were a weakling and a pushover.~ #75546 */ GOTO 276
END

IF ~~ THEN BEGIN 274 // from: 273.1 273.0
  SAY @446 /* ~I know that, now. But it made me more afraid than ever of what I could be capable of, and how I could really hurt someone I love if I don't direct my powers carefully.~ #75010 */
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 274.0
  SAY @447 /* ~I care about you, <CHARNAME>, and I could never forgive myself if I failed you, or hurt you in any way. Thank you for listening...I've never been able to tell that story to anyone before.~ #75011 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 276 // from: 273.3 273.2
  SAY @448 /* ~Really? I suppose you're right...I've certainly done much more violent things to much more violent people since then, but as I think back, I can't help but think that I overreacted, that I panicked, or worse, that I really was just looking for an excuse to kill someone in the heat of battle.~ #75012 */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY @449 /* ~Don't get me wrong...I care very much about you, <CHARNAME>, as well as your quest, and I would do almost anything you ask to help you.~ #75013 */
  IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY @450 /* ~But as I think back to that sixteen year old sorcerer and the dissolving bandit...I sometimes wish the world was a safer place for you and I, that's all.~ #75014 */
  IF ~~ THEN EXIT
END

// end of LT26 conflict precedes the actual LT26

IF ~~ lt26cont
SAY @3563
IF ~~ GOTO 287
END

IF ~Global("J#LoveTalk","LOCALS",26)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 285 // from:
  SAY @457 /* ~I don't suppose you and I could simply grab a good book and lock ourselves up in a cabin for a day or two and let everything blow over, could we?~ #75021 */
  IF ~~ THEN REPLY @458 /* ~Well--~ #75547 */ GOTO 286
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",1)~ EXTERN BANOMEN klt26conf
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY @459 /* ~Of course not. That wasn't a real question, I am surprised I even said it out loud.~ #75022 */
  IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY @460 /* ~I realize that what we are doing together is important, <CHARNAME>. But I worry about you. I worry that Irenicus and guild wars and intrigue are wearing you thin.~ #75023 */
  IF ~~ THEN REPLY @461 /* ~What makes you think I am so weak?~ #75548 */ GOTO 288
  IF ~~ THEN REPLY @462 /* ~I can handle it. It sounds to me like we're talking about your problems.~ #75549 */ GOTO 302
  IF ~~ THEN REPLY @463 /* ~I appreciate your concern, Kelsey, but we will get through it all.~ #75550 */ GOTO 303
  IF ~~ THEN REPLY @464 /* ~Stash your concern in a cool dry place, sorcerer.~ #75551 */ GOTO 304
END

IF ~~ THEN BEGIN 288 // from: 287.0
  SAY @465 /* ~Weak? No, you are one of the strongest people in Faerun. But everyone has limits, everyone faces exhaustion.~ #75024 */
  IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 303.0 302.0 288.0
  SAY @466 /* ~I have been...watching you, as you sleep, these past few evenings. You do not sleep well, even if you feel you wake refreshed.~ #75025 */
  IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY @467 /* ~Your face starts so peaceful and beautiful, and then I see the dreams come...dreams, I imagine, of Irenicus and what he has done, or worse...and I see the way your face twists.~ #75026 */
  IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY @468 /* ~Whether it is recollection or premonition that your dreams torture you with, I do not know, but I do know they torture you. And I want to make that stop.~ #75027 */
  IF ~~ THEN REPLY @469 /* ~Perhaps I would sleep better if I wasn't being spied upon!~ #75552 */ GOTO 292
  IF ~~ THEN REPLY @470 /* ~I assure you, I am Irenicus's worst nightmare, not the other way around.~ #75553 */ GOTO 299
  IF ~~ THEN REPLY @471 /* ~Dreams can bring power and knowledge as well as pain. I do not fear them.~ #75554 */ GOTO 300
  IF ~~ THEN REPLY @472 /* ~I am truly touched by your concern, but all we can do is press on.~ #75555 */ GOTO 301
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY @473 /* ~<CHARNAME>, I am not spying, I am worried! Is it so bad that I want to look at you? Or that I am concerned by what I see?~ #75028 */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293 // from: 301.0 300.0 299.0 292.0
  SAY @474 /* ~The fact remains, when I look at you I am not seeing someone enriched and enlightened by sleep, I see someone I care about in great pain.~ #75029 */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY @475 /* ~I want to help you solve your problems with more than fireballs and strategic counsel. I want to help you feel better, <CHARNAME>.~ #75030 */
  IF ~~ THEN REPLY @476 /* ~Your concern for me is enough. I feel better already.~ #75556 */ GOTO 295
  IF ~~ THEN REPLY @477 /* ~Then sleep a little closer this eve. Your presence, and your watchful eyes, are not unwelcome.~ #75557 */ GOTO 296
  IF ~~ THEN REPLY @478 /* ~You are doing everything you can, if not too much, Kelsey. I can take care of myself beyond that. ~ #75558 */ GOTO 298
END

IF ~~ THEN BEGIN 295 // from: 294.0
  SAY @479 /* ~...all right, <CHARNAME>. I am sorry if you feel I am being too pushy. If the worst thing I do all week is to care too much about you, I can live with myself.~ #75031 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.1
  SAY @480 /* ~Oh! I would be...let's see...I think I would be honored, ecstatic, and thrilled.~ #75032 */
  IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297 // from: 296.0
  SAY @481 /* ~And, uh, I'll also be discreet.~ #75033 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 298 // from: 294.2
  SAY @482 /* ~Why are you fighting me so much? I am only trying to show that I care, and to help you. But I will try to give you your space.~ #75034 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 299 // from: 291.1
  SAY @483 /* ~I do not doubt that he will only live to regret your next meeting with him...I have faith in you.~ #75035 */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 300 // from: 291.2
  SAY @484 /* ~Perhaps your nature allows you special powers in the land of dreams. If so, perhaps you are lucky, perhaps these dreams affect you less than they would someone else.~ #75036 */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 301 // from: 291.3
  SAY @485 /* ~Aye, I agree, because hiding in that cabin would solve nothing.~ #75037 */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 302 // from: 287.1
  SAY @486 /* ~While I am certainly more...challenged here than I ever have been before, no, I am really talking about you.~ #75038 */
  IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 303 // from: 287.2
  SAY @487 /* ~I hope so. But I know that even someone as special as yourself does not have limitless endurance.~ #75039 */
  IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 304 // from: 287.3
  SAY @488 /* ~You have some real intimacy issues, <CHARNAME>, and I just can't deal with this anymore.~ #75040 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("J#LoveTalk","LOCALS",28)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 305 // from:
  SAY @489 /* ~I feel that you and I have really grown, as people, in the time we have been together.~ [FWKLSY71] #75041 */
  IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY @490 /* ~I can tell that we've also grown as adventurers...we have better equipment, we perform better in combat. As well we should, because the challenges only seem to become more serious.~ #75042 */
  IF ~~ THEN GOTO 307
END

IF ~~ THEN BEGIN 307 // from: 306.0
  SAY @491 /* ~But our current problems will only be problems for so long. I wonder just how easy it will be to turn it off once we finally have Irenicus out of your life.~ #75043 */
  IF ~~ THEN REPLY @492 /* ~Who said anything about turning it off? I plan to keep growing my powers.~ #75559 */ GOTO 308
  IF ~~ THEN REPLY @493 /* ~What we learn is just a part of who we are. I don't see it becoming a problem.~ #75560 */ GOTO 309
  IF ~ReputationGT(Player1,9)~ THEN REPLY @494 /* ~I am sure we will not abuse our powers the way others have.~ #75561 */ GOTO 310
  IF ~ReputationLT(Player1,10)~ THEN REPLY @495 /* ~I am sure we will not abuse our powers the way others have.~ #75561 */ GOTO 311
  IF ~~ THEN REPLY @496 /* ~I haven't seen any improvement in you, particularly in these inane interruptions.~ #75562 */ GOTO 312
END

IF ~~ THEN BEGIN 308 // from: 307.0
  SAY @497 /* ~To what end, <CHARNAME>? The way I see it, our powers can be used to defend, or to destroy. If no one is threatening you, what then?~ #75044 */
  IF ~~ THEN REPLY @498 /* ~You are incredibly naïve if you think I put all this together just because of Irenicus. I have plans that will make Sarevok look short-sighted.~ #75563 */ GOTO 313
  IF ~~ THEN REPLY @499 /* ~One never knows where the next threat will come from, Kelsey. I prefer being prepared.~ #75564 */ GOTO 314
  IF ~~ THEN REPLY @500 /* ~Strength can be used to defend others, as well. We can do much for the defenseless.~ #75565 */ GOTO 317
END

IF ~~ THEN BEGIN 309 // from: 307.1
  SAY @501 /* ~Knowledge is its own reward? Perhaps.~ #75045 */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 310 // from: 307.2
  SAY @502 /* ~I know you make good use of the tools at your disposal, <CHARNAME>. But I worry about what may come.~ #75046 */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 311 // from: 307.3
  SAY @503 /* ~<CHARNAME>, it seems to me that we are already abusing our capabilities.~ #75047 */
  IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 312 // from: 307.4
  SAY @504 /* ~If you hated the sound of my voice that much, you could have said something earlier.~ #75048 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 313 // from: 308.0
  SAY @505 /* ~I see that what I feared has already begun. I will leave you to your scheming, but I cannot endorse it.~ #75049 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 314 // from: 308.1
  SAY @506 /* ~Pragmatic, as I would expect from my favorite heroine. But I doubt we are the first to think such a thing.~ #75050 */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 320.0 318.0 314.0 310.0
  SAY @507 /* ~It seems to me that abusing power is not just about having bad intentions.~ #75051 */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY @508 /* ~Perhaps you are stronger than I, but I sometimes think about the ways I could use my magic for personal gain, or just a cheap reign of terror.~ #75052 */
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 317 // from: 308.2
  SAY @509 /* ~I...I don't know that I wouldn't rather settle down with you at some point, rather than marching up and down the countryside righting wrongs.~ #75053 */
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318 // from: 319.0 317.0
  SAY @510 /* ~It's a good thought, but I think it has its own risks.~ #75054 */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 319 // from: 309.0
  SAY @511 /* ~But certainly you've seen that people have accumulated power through research and gone on to cause terrible destruction, intentional or not.~ #75055 */
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 320 // from: 311.0
  SAY @512 /* ~I'm not exactly comfortable with all of the decisions we have made, and that makes me even more concerned about the future.~ #75056 */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 321 // from: 316.0
  SAY @513 /* ~Are you truly not tempted?~ #75057 */
  IF ~~ THEN REPLY @514 /* ~No. Truly. I use force when I must, not for fun.~ #75566 */ GOTO 322
  IF ~~ THEN REPLY @515 /* ~Of course. Nobody's perfect. But I am confident in my self-control.~ #75567 */ GOTO 324
  IF ~~ THEN REPLY @516 /* ~You do make it sound awfully inviting. I could control not only my own destiny, but many others.~ #75568 */ GOTO 328
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY @517 /* ~Right, because so far you have been put in situations where you must use force to survive.~ #75058 */
  IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY @518 /* ~My point, exactly, is that without such a pressing need, we will idly exercise our powers for less-than-noble purposes, just because we can and we don't have anything to fear.~ #75059 */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 324 // from: 321.1
  SAY @519 /* ~I know it is extensive, because you have been through so much in a short period of time.~ #75060 */
  IF ~~ THEN GOTO 325
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY @520 /* ~But with forces even you don't fully understand guiding your power and your destiny, I fear what will happen when the imminent crisis is over.~ #75061 */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0 323.0
  SAY @521 /* ~Please don't take offense if it sounds as though I doubt you or your sincerity.~ #75062 */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY @522 /* ~I believe in you, <CHARNAME>, and I think that as long as we stick together, we can keep each other on the right path.~ #75063 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 328 // from: 321.2
  SAY @523 /* ~Ack! That was not my intention at all! <CHARNAME>, please don't give in to the greed for power.~ #75064 */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY @524 /* ~I...I will do my best to be strong and help you overcome the temptation.~ #75065 */
  IF ~~ THEN EXIT
END


IF ~Global("J#LoveTalk","LOCALS",30)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 330 // from:
  SAY @525 /* ~I told you about my family, but I'm ashamed of myself, I did not once mention my brother.~ [FWKLSY72] #75066 */
  IF ~~ THEN REPLY @526 /* ~Why is that? Is he dead?~ #75569 */ GOTO 331
  IF ~~ THEN REPLY @527 /* ~Are you still talking to me? Take your foolish tales elsewhere.~ #75570 */ GOTO 332
  IF ~~ THEN REPLY @528 /* ~Tell me about him now, then, if it's important to you.~ #75571 */ GOTO 333
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY @529 /* ~No, my brother isn't dead. I just don't...think of him much.~ #75067 */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 332 // from: 330.1
  SAY @530 /* ~Fine, my foolish tales won't bother you any more.~ #75068 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.2
  SAY @531 /* ~Yes, I think it is.~ #75069 */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 334 // from: 333.0 331.0
  SAY @532 /* ~Kelvim is my only brother, he is about seven years my younger. I think it was a bad gap of time...we were not so close of an age that we could play together, nor was I so much older than him that I could be like a second father to him.~ #75070 */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY @533 /* ~So we never really got to know each other. When I started travelling with my father on business, he stayed home with my mother, and I think that may have been the problem...we did not really share a bond through Father.~ #75071 */
  IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY @534 /* ~When Father died, Kelvim was much more accepting of it. Perhaps because he did not know him as well.~ #75072 */
  IF ~~ THEN REPLY @535 /* ~You can't blame your brother, he was just a child. Death is difficult enough to face for adults.~ #75572 */ GOTO 337
  IF ~~ THEN REPLY @536 /* ~Perhaps not. If your father was as kind as you make him out to be, that's Kelvim's loss.~ #75573 */ GOTO 340
  IF ~~ THEN REPLY @537 /* ~Are you going somewhere with this?~ #75574 */ GOTO 338
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY @538 /* ~No, no, I don't blame Kelvim for anything, he was quite mature and understanding for his age. Father was a real enough person to him, but he did not feel his loss because he was accustomed to his absence.~ #75073 */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 340.0 337.0 336.2
  SAY @539 /* ~I think what I'm really saying is that I envy everyone I see with strong bonds of family and loyalty. I haven't enjoyed them in a long, long while...not since Father died.~ #75074 */
  IF ~~ THEN GOTO 339
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY @540 /* ~I was already exhibiting my magic when Father died, which put a lot of people at arm's length, even Mother and Kelvim...and of course, you remember how she and my uncle sent me away.~ #75075 */
  IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN GOTO 341
  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN GOTO 349
END

IF ~~ THEN BEGIN 340 // from: 336.1
  SAY @541 /* ~My father was not terminally jovial, but yes, he was a good man and it is a shame he and Kelvim did not really know one another.~ #75076 */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 341 // from: 339.0
  SAY @542 /* ~I envy loving spouses, I envy brothers and sisters I see playing in the streets, I even envy the obvious connection you and Imoen share, even if you think your foster sister was a brat sometimes.~ #75077 */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 342 // from: 349.0 341.0
  SAY @543 /* ~And I think there must be something wrong with me...I haven't even seen Kelvim for three years now, and we never grew close, even after he grew into more of a man. What's wrong with me?~ #75078 */
  IF ~~ THEN REPLY @544 /* ~Nothing's wrong. Family can be a real bitch...you know all about my father and the mess he created.~ #75575 */ GOTO 343
  IF ~~ THEN REPLY @545 /* ~Everybody wishes they were nicer to their siblings or more respectful to their elders. Regret is a part of life, but keep it a small part.~ #75576 */ GOTO 344
  IF ~~ THEN REPLY @546 /* ~If you have something to say to your brother, say it to him. I can't help you with that.~ #75577 */ GOTO 345
  IF ~~ THEN REPLY @547 /* ~It sounds to me like you have some unresolved issues that should be resolved sooner rather than later.~ #75578 */ GOTO 345
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY @548 /* ~There is that. I don't think my feelings are quite as mixed as yours must be, but you're right. I am myself, not what my family makes of me.~ #75079 */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 347.0 346.0 343.0 342.1
  SAY @549 /* ~Still, I do have regrets. I think that some day, soon, I will take the time to get properly acquainted with Kelvim...as much time as it takes for brothers to sort these things out. Perhaps when your pressing matters are laid to rest, we might go see him, together...~ #75080 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 345 // from: 342.3 342.2
  SAY @550 /* ~You may have a point. Do you think...oh, perhaps I should not put this off any longer. Should I go to him now? I would hate to leave our work half-done, but I don't know how much this feeling will nag at me now.~ #75081 */
  IF ~~ THEN REPLY @551 /* ~You're making your own life here, Kelsey. Don't go until we've accomplished all that we set out to do together.~ #75579 */ GOTO 346
  IF ~~ THEN REPLY @552 /* ~It's your decision.~ #75580 */ GOTO 347
  IF ~~ THEN REPLY @553 /* ~Yes, I think you should go.~ #75581 */ GOTO 348
  IF ~~ THEN REPLY @554 /* ~You're clearly not going to be of any more use to me pining over these family problems. Go.~ #75582 */ GOTO 348
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY @555 /* ~You're right, darling. Leaving you now would be just another form of exile, and a whole new set of guilt to deal with. I will stay loyally by your side.~ #75082 */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 347 // from: 345.1
  SAY @556 /* ~Then...then Kelvim can wait. He's family, but you have given me so much more, and not out of blood obligations. I promise to stay focused on your needs for now.~ #75083 */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 348 // from: 345.3 345.2
  SAY @557 /* ~I am sorry I have become so distracted like this. But I think it will be for the best to finally try to lay these family demons to rest. Farewell, <CHARNAME>. I will listen eagerly for tales of my favorite heroine as I travel, and try to find you when I have made things right in my house.~ #75084 */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 349 // from: 339.1
  SAY @558 /* ~I envy loving spouses, I envy brothers and sisters I see playing in the streets, and above all I envy the obvious bond you and Imoen have, even if you do deny it sometimes.~ #75085 */
  IF ~~ THEN GOTO 342
END


IF ~Global("J#LoveTalk","LOCALS",32)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 350 // from:
  SAY @559 /* ~Can I tell you a story? It's not a very pleasant one, but I really need to talk, and I want you to know more about me from before we met.~ [FWKLSY73] #75086 */
  IF ~~ THEN REPLY @560 /* ~I don't mind sad stories, just long ones.~ #75583 */ GOTO 351
  IF ~~ THEN REPLY @561 /* ~Certainly, Kelsey. I'm here for you.~ #75584 */ GOTO 351
  IF ~~ THEN REPLY @562 /* ~Frankly, no. I am not your mother and I am not your conscience and I am not interested.~ #75585 */ GOTO 355
END

IF ~~ THEN BEGIN 351 // from: 350.1 350.0
  SAY @563 /* ~Two years ago, while working my way back from a long trip east, I signed on for a short term with a Cormyrian militia company.~ #75087 */
  IF ~~ THEN GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY @564 /* ~Shortly after I signed on, the group got a new commander, a man who exuded nastiness, named Pellan. In retrospect, I should have known something was up when the company lieutenant immediately got himself transferred out.~ #75088 */
  IF ~~ THEN GOTO 353
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY @565 /* ~We were assigned to patrol the Lake of Dragons, to check on the trading ships coming close to the shore, make sure nobody was running contraband, that sort of thing.~ #75089 */
  IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY @566 /* ~Pellan started out plausibly enough but after a week or so it was clear he was harassing honest people for no good reason. Before long, he had us engaging in outright plunder. Then he upped the stakes to rape, then outright murder.~ #75090 */
  IF ~~ THEN REPLY @567 /* ~Kelsey, I deal with enough death on a daily basis, can't we talk about something a little more pleasant?~ #75586 */ GOTO 356
  IF ~~ THEN REPLY @568 /* ~Sounds like a crooked man and a half.~ #75587 */ GOTO 357
  IF ~~ THEN REPLY @569 /* ~Sounds like a decent living.~ #75588 */ GOTO 373
END

IF ~~ THEN BEGIN 355 // from: 350.2
  SAY @570 /* ~I'm sorry for mistaking you for someone who cares.~ #75091 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 356 // from: 354.0
  SAY @571 /* ~...I'm afraid I don't have anything more pleasant in mind right now, but I will respect your wishes.~ #75092 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 357 // from: 354.1
  SAY @572 /* ~He certainly was...but I...well, I'll get to that.~ #75093 */
  IF ~~ THEN GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 373.0 357.0
  SAY @573 /* ~Anyway, a few men started deserting, but Pellan had enough loyal to him that they were caught, and made into rather gruesome examples.~ #75094 */
  IF ~~ THEN GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY @574 /* ~I was hoping that we would meet up with another patrol and we could turn Pellan in, so I stuck it out at first because Pellan was content to let me get off with light duty...he would have me fireball ships when he was done plundering them. He liked to watch them burn.~ #75095 */
  IF ~~ THEN GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY @575 /* ~I tried to make sure the ships were deserted first, but even so, that sometimes meant he was putting people to the sword and then giving me the order. I couldn't take it anymore.~ #75096 */
  IF ~~ THEN GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY @576 /* ~So one night, when the company was asleep and Pellan's men were patrolling the outskirts of the camp, I gave him a taste of his own medicine. I fireballed his filthy tent.~ #75097 */
  IF ~~ THEN GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY @577 /* ~It was...so easy. It only took a second. The camp went into a panic, and the camp guards went rushing to help their screaming leader...it was the easiest thing in the world to just start walking away. I think I must have walked for nearly 24 hours before I finally collapsed.~ [FWKLSYD5] #75098 */
  IF ~~ THEN GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.0
  SAY @578 /* ~The next few days are sort of a blur, but I know I finally came upon a village and got myself cleaned up and came to terms with what I had done. I never heard a word about it from anyone. I guess nobody mourned that bastard, which is as it should be.~ [FWKLSYD6] #75099 */
  IF ~~ THEN REPLY @579 /* ~I think you did the right thing, Kelsey. That sort of evil cannot go unpunished.~ #75589 */ GOTO 364
  IF ~~ THEN REPLY @580 /* ~Vigilantism is extremely dangerous, Kelsey. Pellan was a terrible man but it was not your place to pass sentence.~ #75590 */ GOTO 366
  IF ~~ THEN REPLY @581 /* ~It sounds to me like you wasted a potential ally with your high-minded notions. Way to go.~ #75591 */ GOTO 368
  IF ~~ THEN REPLY @582 /* ~That sort of corruption is unfortunate. I am sorry you found yourself in that situation in the first place.~ #75592 */ GOTO 369
  IF ~~ THEN REPLY @583 /* ~Well, try to be careful with your fireballs when you're in this party.~ #75593 */ GOTO 371
END

IF ~~ THEN BEGIN 364 // from: 363.0
  SAY @584 /* ~I am...relieved to hear you say that. Part of me has always known it was the right thing to do, but there is so much doubt...was it my place? Should I have done more to prevent the crimes I could not undo? Should I have just run?~ #75100 */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 365 // from: 364.0
  SAY @585 /* ~Life is so confusing. You make me feel at ease, though. Thank you.~ #75101 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 366 // from: 363.1
  SAY @586 /* ~I tried to give someone else the chance, but they never came. They never came, <CHARNAME>! And I just couldn't stay there waiting for my number to be called to start robbing and killing innocent people. No...I am no executioner, but I do know when to take a stand.~ #75102 */
  IF ~~ THEN GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY @587 /* ~I am glad that I could tell you this story...I feel at ease around you, even if we do not always think alike. Thank you for listening, <CHARNAME>.~ #75103 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 368 // from: 363.2
  SAY @588 /* ~That is a disgusting thought, and I don't care if you were kidding or not.~ #75104 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 369 // from: 363.3
  SAY @589 /* ~It's more than unfortunate, it is inexcusable. Some people say that evil exists just to balance out the good. I don't see how that makes any sense...why do the sinners feel like they have to balance out the saints, or even the normal nice people who just don't want to get robbed and killed?~ #75105 */
  IF ~~ THEN GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY @590 /* ~I'm sorry, <CHARNAME>, I don't really expect you to have an answer for that, and I'm sorry if I spoiled your mood. You really put me at ease, and I should try to return the favor more often.~ #75106 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 371 // from: 363.4
  SAY @591 /* ~One way or another, I promise you that I will never let myself fall into that kind of situation again. And of course I'm careful...I wouldn't want my favorite heroine to get singed.~ #75107 */
  IF ~~ THEN GOTO 372
END

IF ~~ THEN BEGIN 372 // from: 371.0
  SAY @592 /* ~Thank you for listening to my tale, <CHARNAME>. I'm sorry if I spoiled your mood. You really put me at ease, and I should try to return the favor more often.~ #75108 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 373 // from: 354.2
  SAY @593 /* ~How can you say something like that?~ #75109 */
  IF ~~ THEN GOTO 358
END

IF ~Global("J#LoveTalk","LOCALS",34)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 374 // from:
  SAY @594 /* ~With mad mages to hunt, friends to rescue and a rogue's gallery of old and new enemies to fight, can I ever truly have a place in your life? I sometimes feel like I'm fighting all of the forces of nature just to spend a peaceful moment at your side.~ [FWKLSY74] #75110 */
  IF ~~ THEN REPLY @595 /* ~My life was simple enough once, it can be so again.~ #75594 */ GOTO 375
  IF ~~ THEN REPLY @596 /* ~Of course, Kelsey. I cannot promise you my constant and undivided attention, but you are not far from my eyes and my thoughts.~ #75595 */ GOTO 375
  IF ~~ THEN REPLY @597 /* ~Perhaps. The world is a complex place, so I will make my battles where I must and take my comfort where I can.~ #75596 */ GOTO 381
  IF ~~ THEN REPLY @598 /* ~Stop fighting it, because you have never been and will never be a part of my life.~ #75597 */ GOTO 383
END

IF ~~ THEN BEGIN 375 // from: 381.1 374.1 374.0
  SAY @599 /* ~That's a comforting thought...but...~ #75111 */
  IF ~~ THEN REPLY @600 /* ~...but?~ #75598 */ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 382.0 375.0
  SAY @601 /* ~But, truly, <CHARNAME>, how can I possibly compare in importance to Imoen, with whom you have shared so much? How can I ever possibly grab your attention away from the next thieves' guild war, or a supplicant from a town in need of a heroine?~ #75112 */
  IF ~~ THEN GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.0
  SAY @602 /* ~How can I ever seem important to someone whose very existence is the work of a god?~ #75113 */
  IF ~~ THEN REPLY @603 /* ~I don't need you to be any of those people, I only want you to be yourself.~ #75599 */ GOTO 378
  IF ~~ THEN REPLY @604 /* ~Opportunities come and go, but some bonds are stronger. Relax, everything will work out.~ #75600 */ GOTO 378
  IF ~~ THEN REPLY @605 /* ~Jealousy is a real turn-off, Kelsey.~ #75601 */ GOTO 379
  IF ~~ THEN REPLY @606 /* ~Come to think of it, you are pretty insignificant. Away with you, pest.~ #75602 */ GOTO 380
END

IF ~~ THEN BEGIN 378 // from: 377.1 377.0
  SAY @607 /* ~You really are special to me, you know? Thank you for being so understanding.~ #75114 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 379 // from: 377.2
  SAY @608 /* ~Jealous? I suppose I am. You have enough problems without me complaining about being overshadowed by them, though. I shouldn't be making it worse...I'm sorry.~ #75115 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.3
  SAY @609 /* ~I walked right into that one, I suppose. As you wish.~ #75116 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 381 // from: 374.2
  SAY @610 /* ~I'm not surprised to hear you say that. It's just that...I have enjoyed our time together so much that I would hate to see it come to an end. Ever, if I can help it.~ #75117 */
  IF ~~ THEN REPLY @611 /* ~Don't cling, Kelsey. I enjoy your company as well, but life is a long journey and I will not make you any promises.~ #75603 */ GOTO 382
  IF ~~ THEN REPLY @612 /* ~I have enjoyed our time together as well, and I do not think life will always be as chaotic as it seems now.~ #75604 */ GOTO 375
  IF ~~ THEN REPLY @613 /* ~Our time together ends when you fall in battle or stop being useful.~ #75605 */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY @614 /* ~I do not think of myself as the type who lives solely for the moment...I suppose that's my father's legacy, making me always think ahead to how today's actions affect tomorrow's prospects. But, if that is what I must do to keep pace with you, then that is what I will do.~ #75118 */
  IF ~~ THEN GOTO 376
END

IF ~~ THEN BEGIN 383 // from: 381.2 374.3
  SAY @615 /* ~Oh. Pardon me for overstepping my bounds, then...I thought we meant something to each other, but I see I was wrong.~ #75119 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",36)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 384 // from:
  SAY @616 /* ~I think I've told you too many tales of woe about the trading company and my time on the road. Although I'm happier now, with you, than I've ever been, I shouldn't give the impression that my life has just been one long waking nightmare.~ [FWKLSY75] #75120 */
  IF ~~ THEN REPLY @617 /* ~Why not? Mine has been.~ #75606 */ GOTO 385
  IF ~~ THEN REPLY @618 /* ~Well, you've only told me about the nasty and dreary parts.~ #75607 */ GOTO 386
  ++ @3326 + lt36_nosmile
  IF ~~ THEN REPLY @619 /* ~You are MY long waking nightmare. Get away from me.~ #75608 */ GOTO 392
  ++ @3327 + lt36_impression
END

IF ~~ lt36_nosmile
SAY @3328
IF ~~ GOTO 386
END

IF ~~ lt36_impression
SAY @3329 = @3330
IF ~~ GOTO 387
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY @620 /* ~It saddens me that my bad attitude seems to be rubbing off on you.~ #75121 */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0 384.1
  SAY @621 /* ~Really, it hasn't all been that bad. Some of it is just pleasantly routine. By your living-on-the-edge standards, there's no real adrenaline rush from talking a merchant into paying a 35 percent markup instead of just 30.~ #75122 */
  IF ~~ THEN GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY @622 /* ~Sometimes, a good trade can really improve someone's life. I remember a halfling I met way out in the northeast...Helman Whitewhittle. He sold a little of everything...scrimshaw, jewelry, trinkets. None of it was terribly good, as I remember, so we didn't have much to discuss.~ #75123 */
  IF ~~ THEN GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY @623 /* ~But in his little shop, I noticed that hung over every door was an absolutely gorgeous sling. He somehow wove these beautiful patterns out of horsehair into the leather straps, and the sling head itself was dyed as bright and fast as you can imagine.~ #75124 */
  IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY @624 /* ~I asked him about them, and he said that they really took no time at all to make, he had perfected the weaving and the dying process was actually quite easy, he just crumpled the head and dunked it in a few different pigments and let the colors work themselves out.~ #75125 */
  ++ @3331 + lt36_reallyuse
  ++ @3332 + lt36_dontsee
  IF ~~ THEN REPLY @625 /* ~So, let me guess, this halfling became a sling millionaire or something like that, right?~ #75609 */ GOTO 390
  IF ~~ THEN REPLY @626 /* ~That doesn't sound like a very practical weapon.~ #75610 */ GOTO 391
END

IF ~~ lt36_reallyuse
SAY @3333
IF ~~ GOTO 393
END

IF ~~ lt36_dontsee
SAY @3334
IF ~~ GOTO 393
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY @627 /* ~Er, yes, something like that.~ #75126 */
  IF ~~ THEN GOTO 393
END

IF ~~ THEN BEGIN 391 // from: 389.1
  SAY @628 /* ~No, you wouldn't think so. But I was surprised.~ #75127 */
  IF ~~ THEN GOTO 393
END

IF ~~ THEN BEGIN 392 // from: 384.2
  SAY @629 /* ~Thanks, Queen of Subtlety. I guess I'll go stand over here, then.~ #75128 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
RunAwayFrom(Player1,6)~ EXIT
END

IF ~~ THEN BEGIN 393 // from: 391.0 390.0
  SAY @630 /* ~Now, normally, you're lucky to be able to get much more than a few silvers for a battle-ready sling in a shop, because they're really not that hard to make. But these really were beautiful, and he proved that they were as sturdy and accurate as any.~ #75129 */
  IF ~~ THEN GOTO 394
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY @631 /* ~So I asked him to make a dozen and took them on consignment. He said he would take half of whatever I got. I'll be damned, but the total take for those dozen slings was close to a thousand gold! Some just wanted a little style in their rock-throwing, others wanted to decorate their doorways like old Helman had.~ #75130 */
  IF ~~ THEN GOTO 395
END

IF ~~ THEN BEGIN 395 // from: 394.0
  SAY @632 /* ~We eventually made it a regular trade route item and arranged formal pricing and compensation. Those little slings are so popular I hear Helman has himself set up like a Calimshan pasha these days.~ #75131 */
  IF ~~ THEN REPLY @633 /* ~So you made someone rich. That's hardly a noble accomplishment.~ #75611 */ GOTO 396
  IF ~!Race(Player1,HALFLING)~ THEN REPLY @634 /* ~It's nice to hear about one of the little folk making it big.~ #75612 */ GOTO 397
  IF ~~ THEN REPLY @635 /* ~Seems to me if those slings are so popular you should have just taken the design and made your own.~ #75613 */ GOTO 398
  IF ~Race(Player1,HALFLING)~ THEN REPLY @636 /* ~It's nice to hear about one of the little folk making it big.~ #75612 */ GOTO 399
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY @637 /* ~There are certainly more noble callings than making or selling decorative slings, sure. But everybody gets a fair deal, everybody is happy, and nobody gets hurt. To my mind, that's not a bad way to live one's life.~ #75132 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 397 // from: 395.1
  SAY @638 /* ~No kidding. Some people say they're not an industrious people, but if you'll pardon the expression, I think they sometimes just have a difficult time thinking big. He saw a pretty sling he knew how to make in his spare time, and never really thought anyone else would care.~ #75133 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 398 // from: 395.2
  SAY @639 /* ~That wouldn't have been very honest, not to mention the fact that I still don't know how his dyes work, exactly. But that's not the point. Done right, trade should benefit everybody, not just the strong-arm. I may never be the richest with that attitude, but I will sleep at night.~ #75134 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 399 // from: 395.3
  SAY @640 /* ~If you'll permit a dose of flattery, I would have thought you would feel content yourself, having made a name as an adventuress halfling. But yes, it was nice to help out someone who, if you'll forgive me, didn't really know how to think big about his potential.~ #75135 */
  IF ~~ THEN EXIT
END


IF ~Global("J#LoveTalk","LOCALS",38)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 400 // from:
  SAY @641 /* ~I know about Gorion and Imoen, but has there ever been anyone...you know, special...in your life before?~ [FWKLSY76] #75136 */
  IF ~~ THEN REPLY @642 /* ~I really don't think this is any of your business.~ #75614 */ GOTO 401
  IF ~~ THEN REPLY @643 /* ~Candlekeep was full of monks and old men, and you know how busy I have been since. What do you think?~ #75615 */ GOTO 403
  IF ~~ THEN REPLY @644 /* ~There was, after a fashion, but no one you know.~ #75616 */ GOTO 422
  IF ~~ THEN REPLY @645 /* ~If you mean what I think you mean, then no.~ #75617 */ GOTO 424
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY @646 /* ~Please, <CHARNAME>, I do not want to make you uncomfortable but it is important to me that we are open with each other.~ #75137 */
  IF ~~ THEN REPLY @647 /* ~If you must pry, then no, not in the way you mean.~ #75618 */ GOTO 424
  IF ~~ THEN REPLY @648 /* ~Yes, but it is not important now.~ #75619 */ GOTO 422
  IF ~~ THEN REPLY @649 /* ~I don't think this is worth talking about.~ #75620 */ GOTO 402
END

IF ~~ THEN BEGIN 402 // from: 401.2
  SAY @650 /* ~I see. I'm sorry, <CHARNAME>, but I can't stand secrets, not like this.~ #75138 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 403 // from: 400.1
  SAY @651 /* ~I think that you probably made some of those monks think twice about any vows they might have taken...but I can appreciate that you have not had much time or opportunity.~ #75139 */
  IF ~~ THEN GOTO 404
END

IF ~~ THEN BEGIN 404 // from: 424.0 423.0 403.0
  SAY @652 /* ~I know that my flattery must sound ridiculous sometimes, <CHARNAME>, but you truly are such a delight to be with that I could hardly have blinked if you had told me you had scores of suitors.~ #75140 */
  IF ~~ THEN GOTO 405
END

IF ~~ THEN BEGIN 405 // from: 404.0
  SAY @653 /* ~Maybe some bard or knight that lives for these speeches could say it better, but I can only say that...that you are more than I could ever want in a woman.~ #75141 */
  IF ~~ THEN REPLY @654 /* ~Ahem. Fair is fair. Don't I get to hear about your past now?~ #75621 */ GOTO 406
  IF ~~ THEN REPLY @655 /* ~You know, I'm sorry I let you get me started on this. You're not worth discussing my love life with.~ #75622 */ GOTO 421
END

IF ~~ THEN BEGIN 406 // from: 405.0
  SAY @656 /* ~Oh, of course. I meant to tell you, I just got distracted looking at you.~ #75142 */
  IF ~~ THEN REPLY @657 /* ~Uh huh.~ #75623 */ GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.0
  SAY @658 /* ~Honest!~ #75143 */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 408 // from: 407.0
  SAY @659 /* ~Anyway...no, I am not "new" to women.~ #75144 */
  IF ~~ THEN GOTO 409
END

IF ~~ THEN BEGIN 409 // from: 408.0
  SAY @660 /* ~I'm not exactly proud of all of it...in my younger days, shortly after I was sent on the road, I allowed a female buyer to use sex as a weapon, as a bargaining tool, and I succumbed. Then I did it again, just a couple of weeks later.~ #75145 */
  IF ~~ THEN GOTO 410
END

IF ~~ THEN BEGIN 410 // from: 409.0
  SAY @661 /* ~That ruined my outlook for a while, I must admit. It didn't feel particularly right or special, nor was it exactly smart, so I learned how to stay out of those situations and tell people when I could see through them.~ #75146 */
  IF ~~ THEN GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.0
  SAY @662 /* ~Growing up in general helped, as well. Since then, well, I haven't done a very good job of following my father's advice when he told me that a man should never be too busy to fall in love or stay in love.~ #75147 */
  IF ~~ THEN GOTO 412
END

IF ~~ THEN BEGIN 412 // from: 411.0
  SAY @663 /* ~I can't abide the "girl in every port" idea, so I don't do that.  But I have been travelling so much and with so many different people that there are few alternatives.~ #75148 */
  IF ~~ THEN GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY @664 /* ~I have tried to stay away from short-term relationships of convenience, but I will admit to sharing blankets and affections on a few cold nights with a like-minded woman on a caravan run.~ #75149 */
  IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY @665 /* ~That said, I have been looking for somebody special, and I have really found her this time. You.~ #75150 */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY @666 /* ~I hope you're not too disappointed in me, <CHARNAME>.~ #75151 */
  IF ~~ THEN REPLY @667 /* ~I would have hoped you were a stronger person.~ #75624 */ GOTO 416
  IF ~~ THEN REPLY @668 /* ~Not at all. I would be selfish to assume no one else had ever taken an interest in you.~ #75625 */ GOTO 419
  IF ~~ THEN REPLY @669 /* ~Quite a bit, as a matter of fact. Don't talk to me.~ #75626 */ GOTO 420
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY @670 /* ~What can I say? I wish I had been stronger too. Not to tell you sad stories, but it can really make a guy feel unloved when his father is dead and his mother rejects him.~ #75152 */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 419.0 416.0
  SAY @671 /* ~In any event, that is behind me now. I swear to you, I have not given any thought to anyone but you for some time now.~ #75153 */
  IF ~~ THEN REPLY @672 /* ~Good!~ #75627 */ GOTO 418
  IF ~~ THEN REPLY @673 /* ~Then we will be fine.~ #75628 */ GOTO 418
  IF ~~ THEN REPLY @674 /* ~I'm watching you like a hawk, Kelsey, so you had better be telling the truth.~ #75629 */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.2 417.1 417.0
  SAY @675 /* ~Although, since I'm spilling my guts I should tell you about one more thing...there was this girl I met outside Nashkel once. Claimed she was a direct descendant of Sune's avatar...no, no, just kidding!~ #75154 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 419 // from: 415.1
  SAY @676 /* ~I wish that it had not happened that way...I wish that I was a more noble man for you.~ #75155 */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 420 // from: 415.2
  SAY @677 /* ~I am very sorry I could not live up to your expectations, but I cannot change my past. Perhaps some day you will be able to accept me for who I am.~ #75156 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 421 // from: 405.1
  SAY @678 /* ~I never wanted to make you uncomfortable, <CHARNAME>, but if I am that insignificant to you, then I will keep to myself from now on.~ #75157 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 422 // from: 401.1 400.2
  SAY @679 /* ~I see.~ #75158 */
  IF ~~ THEN GOTO 423
END

IF ~~ THEN BEGIN 423 // from: 422.0
  SAY @680 /* ~If you think I'm disappointed...I'm not. I would have been a little surprised at any other answer, actually.~ #75159 */
  IF ~~ THEN GOTO 404
END

IF ~~ THEN BEGIN 424 // from: 401.0 400.3
  SAY @681 /* ~I understand. I am sorry you were so lonely, <CHARNAME>...you don't deserve the isolation you have had to endure.~ #75160 */
  IF ~~ THEN GOTO 404
END


IF ~Global("J#LoveTalk","LOCALS",40)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 425 // from:
  SAY @682 /* ~I feel...so peaceful right now. Thank you.~ [FWKLSY77] #75161 */
  IF ~~ THEN REPLY @683 /* ~What am I supposed to have done?~ #75630 */ GOTO 426
  IF ~~ THEN REPLY @684 /* ~Ummm...you're welcome?~ #75631 */ GOTO 427
  IF ~~ THEN REPLY @685 /* ~Glad to hear it.~ #75632 */ GOTO 427
  IF ~~ THEN REPLY @686 /* ~Oh, gods, are you still here? Shut up, already!~ #75633 */ GOTO 445
END

IF ~~ THEN BEGIN 426 // from: 425.0
  SAY @687 /* ~You have listened, you have heard, you have helped me.~ #75162 */
  IF ~~ THEN GOTO 427
END

IF ~~ THEN BEGIN 427 // from: 426.0 425.2 425.1
  SAY @688 /* ~I have been going over the last decade of my life...time spent learning about life, about business...then learning how to deal with loss, with betrayal, with rage...and I have decided that, on the whole, everything is all right now.~ #75163 */
  IF ~~ THEN GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY @689 /* ~For years...even when we first met...I have been brooding over my plans. I would save enough money, I would accumulate enough knowledge and power, to dispose of Birinar using any means necessary.~ #75164 */
  IF ~~ THEN GOTO 429
END

IF ~~ THEN BEGIN 429 // from: 428.0
  SAY @690 /* ~But that can't be right. Even before I began adventuring with you, I'm sure I could have killed Birinar easily with just a spell or two, if I truly wished to.~ #75165 */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 430 // from: 429.0
  SAY @691 /* ~Or I could have forced a confrontation with my mother. There was nothing stopping me. I am a man grown, so if she chose not to listen to me now, it would be her final decision and there would be nothing more to say on the matter.~ #75166 */
  IF ~~ THEN GOTO 431
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY @692 /* ~None of that feels very important anymore. I admit that may never truly be satisfied about the death of my father, however.~ #75167 */
  ++ @3336 + lt40_thepast
  IF ~~ THEN REPLY @693 /* ~Yes, how exactly did he die? You have not been very explicit.~ #75634 */ GOTO 432
  IF ~~ THEN REPLY @694 /* ~You'll follow him shortly if you don't leave me alone for once.~ #75635 */ GOTO 445
  ++ @3335 + lt40_mystery
END

IF ~~ lt40_thepast
SAY @3337
IF ~~ EXIT
END

IF ~~ lt40_mystery
SAY @3338
IF ~~ GOTO 433
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY @695 /* ~I still do not know. Just two months after I began casting, he was struck with a terrible weakness and could barely get out of bed. Within a week, he had wasted and died.~ #75168 */
  IF ~~ THEN GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY @696 /* ~The evening before, he had been healthy and even happy...I recall that we had a fight, when I thought he was making fun of my magic, but he laughed it off and said I was simply overwrought with the emotion of being fifteen.~ #75169 */
  IF ~~ THEN GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.0
  SAY @697 /* ~The healers could do little but prolong his agony. It was as though his entire body turned against him, or his life were being sucked out through a tube.~ #75170 */
  IF ~~ THEN GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY @698 /* ~The rumormongers worked quickly, insinuating that my sorcery proved that I was not his true son but some sort of demonic conception, and that I was draining my father with my spellcasting.~ #75171 */
  IF ~~ THEN GOTO 436
END

IF ~~ THEN BEGIN 436 // from: 435.0
  SAY @699 /* ~And...for a while, what could I do but believe them? He was dead, but there I was, stronger and more powerful than ever.~ #75172 */
  IF ~~ THEN GOTO 437
END

IF ~~ THEN BEGIN 437 // from: 436.0
  SAY @700 /* ~My mother had very little to say on the subject. She had been more than a little afraid of me since I started casting. And that isolation just made it easier for my uncle to worm his way in and put a new, less scandalous face on the family.~ #75173 */
  IF ~~ THEN GOTO 438
END

IF ~~ THEN BEGIN 438 // from: 437.0
  SAY @701 /* ~And you have gathered the rest...Birinar hatched the scheme to send me out as a traveling sales manager, away from where the decisions affecting the entire family business were being made.~ #75174 */
  IF ~~ THEN GOTO 439
END

IF ~~ THEN BEGIN 439 // from: 438.0
  SAY @702 /* ~And I grew bored and drifted into side work, and then we met...quite a long road, but worthwhile.~ #75175 */
  IF ~~ THEN GOTO 440
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY @703 /* ~In truth, I think I have been ready to move beyond my disappointment with them for some time now. But there was nothing else to fit the hole where my family had been.~ #75176 */
  IF ~~ THEN REPLY @704 /* ~And now that emptiness is gone, is that what you're saying?~ #75636 */ GOTO 441
  IF ~~ THEN REPLY @705 /* ~I still say he should get it in the neck.~ #75637 */ GOTO 444
END

IF ~~ THEN BEGIN 441 // from: 440.0
  SAY @706 /* ~Exactly. And that is why I thank you.~ #75177 */
  IF ~~ THEN REPLY @707 /* ~Then you are welcome.~ #75638 */ GOTO 442
  IF ~~ THEN REPLY @708 /* ~Perhaps you should not write off your family entirely...we should try to look in on your brother some day.~ #75639 */ GOTO 443
  IF ~~ THEN REPLY @709 /* ~Birinar still sounds like he has a date with destiny at our hands.~ #75640 */ GOTO 444
END

IF ~~ THEN BEGIN 442 // from: 441.0
  SAY @710 /* ~That was all I really wanted to hear.~ #75178 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 443 // from: 441.1
  SAY @711 /* ~Yes, I do believe we should...but now is the time to work on your problems, <CHARNAME>. You have been more than supportive of mine.~ #75179 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 444 // from: 441.2 440.1
  SAY @712 /* ~Ah, but my favorite heroine, that would not be very heroic. Birinar isn't worth killing. Let us speak of him no more, and I will be happy.~ #75180 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 445 // from: 431.1 425.3
  SAY @713 /* ~There is definitely something wrong with you, <CHARNAME>...I will not open up to you any more.~ #75181 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",42)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 446 // from:
  SAY @714 /* ~I don't know if I believe in fate, or that the ends justify the means, but I do know one thing. I would be a fool to complain about anything that has happened in my life, because it has brought me here.~ [FWKLSY78] #75182 */
  IF ~~ THEN REPLY @715 /* ~What is that supposed to mean?~ #75641 */ GOTO 447
  ++ @3340 + lt42_nofool
  IF ~~ THEN REPLY @716 /* ~I am glad that we are together, too.~ #75642 */ GOTO 447
  IF ~~ THEN REPLY @717 /* ~Can it bring you somewhere else? I can't stand your chattering.~ #75643 */ GOTO 462
  ++ @3341 + lt42_brightspot
END

IF ~~ lt42_nofool
SAY @3342
IF ~~ GOTO 447
END

IF ~~ lt42_brightspot
SAY @3343
IF ~~ GOTO 447
END


IF ~~ THEN BEGIN 447 // from: 446.1 446.0
  SAY @718 /* ~I cannot think of anywhere, or anyone, I would rather be. And that is a difficult thing for me to say...not because it isn't true, but because of what it means.~ #75183 */
  IF ~~ THEN GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY @719 /* ~I am...I am happy to be what I am. I think I hated being a sorcerer because I didn't know what to do with magic but dazzle or hurt people.~ #75184 */
  IF ~~ THEN GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY @720 /* ~But now, I can use magic to help you, and to protect you. I like that. It makes not understanding it seem a lot less important.~ #75185 */
  IF ~~ THEN GOTO 450
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY @721 /* ~I...what am I talking about? I love you, <CHARNAME>! I love you, and for some reason that makes everything else make so much sense.~ [FWKLSYD7] #75186 */
  IF ~~ THEN GOTO 451
END

IF ~~ THEN BEGIN 451 // from: 450.0
  SAY @722 /* ~I have a very good memory...it's one of the reasons I make a decent trader. It is also why I can tell you, without a doubt, that I have never been this happy.~ [FWKLSYD8] #75187 */
  IF ~~ THEN REPLY @723 /* ~I love you too, Kelsey.~ #75644 */ GOTO 452
  IF ~~ THEN REPLY @724 /* ~Those are very pretty words. Don't lose yourself in them.~ #75645 */ GOTO 458
  IF ~~ THEN REPLY @725 /* ~I am flattered, but I cannot return the sentiment. We should stay friends.~ #75646 */ GOTO 461
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY @726 /* ~I...you...I...I have been turned into a babbling idiot, I think.~ #75188 */
  IF ~~ THEN GOTO 453
END

IF ~~ THEN BEGIN 453 // from: 452.0
  SAY @727 /* ~I should probably let you get back to the important business of running the group, otherwise I will do something silly like tickle you and repeat how much I love you.~ #75189 */
  IF ~~ THEN REPLY @728 /* ~Why don't you, then?~ #75647 */ GOTO 454
  IF ~~ THEN REPLY @729 /* ~I love a man who knows his limits.~ #75648 */ GOTO 456
  IF ~~ THEN REPLY @730 /* ~Try it and I'll break your wrists...nothing personal.~ #75649 */ GOTO 457
END

IF ~~ THEN BEGIN 454 // from: 453.0
  SAY @731 /* ~I think we would get some funny looks from the latter...maybe some other time.~ #75190 */
  IF ~~ THEN GOTO 455
END

IF ~~ THEN BEGIN 455 // from: 454.0
  SAY @732 /* ~But until then...I love you!~ #75191 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1
  SAY @733 /* ~Indeed, but I am learning that they are not nearly as limiting as I thought. I would have never suspected I could make this good of an impression on you before you helped teach me confidence.~ #75192 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 457 // from: 453.2
  SAY @734 /* ~You scare me when you say things like that, <CHARNAME>...~ #75193 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 458 // from: 451.1
  SAY @735 /* ~They are not just words, <CHARNAME>, I mean what I said. I do love you...but I understand if you do not feel you can return the words.~ #75194 */
  IF ~~ THEN REPLY @736 /* ~Good. I like you, but I do not want to be pressured.~ #75650 */ GOTO 459
  IF ~~ THEN REPLY @737 /* ~I do love you as well, Kelsey, but words can be dangerous.~ #75651 */ GOTO 460
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY @738 /* ~I was not trying to confront you, <CHARNAME>. But I want you to know how I feel. I hope that I will be able to make you comfortable with me, in time...~ #75195 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 460 // from: 458.1
  SAY @739 /* ~Not when they sound so right between two people, <CHARNAME>. If we love each other, what is the harm in saying so? I will say it again, just to tempt the fates...I love you, <CHARNAME>!~ #75196 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 461 // from: 451.2
  SAY @740 /* ~I suspected you might feel that way. What can I do but agree, if that is the way you truly feel? I may have to give up, but I do not think I will stop loving you, not for a long while.~ #75197 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 462 // from: 446.2
  SAY @741 /* ~And...to think...I was about to tell you how much I loved you! What was I thinking?~ #75198 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",44)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 463 // from:
  SAY @742 /* ~I know...or I hope...well, I know I hope we have decades together to worry about this sort of thing, but do you ever think about the future, retirement, that sort of thing? What is at the end of the road for my favorite heroine?~ [FWKLSY79] #75199 */
  IF ~~ THEN REPLY @743 /* ~My road leads to a throne of blood and power over millions, starting with you.~ #75652 */ GOTO 464
  IF ~~ THEN REPLY @744 /* ~I do not have the luxury of looking much past tomorrow.~ #75653 */ GOTO 467
  IF ~~ THEN REPLY @745 /* ~I really don't know. I'll probably die in the saddle, so to speak.~ #75654 */ GOTO 478
  IF ~ReputationGT(Player1,9)~ THEN REPLY @746 /* ~I would like to settle down some day, but that's a long way off. Gorion taught me a lot about living a more contemplative life.~ #75655 */ GOTO 479
  IF ~!Race(Player1,HUMAN)~ THEN REPLY @747 /* ~I hate to point this out, but because you are human, we may not still...be together when my retirement comes.~ #75656 */ GOTO 480
  IF ~ReputationLT(Player1,10)~ THEN REPLY @748 /* ~I would like to settle down some day, but that's a long way off. Gorion taught me a lot about living a more contemplative life.~ #75655 */ GOTO 481
END

IF ~~ THEN BEGIN 464 // from: 463.0
  SAY @749 /* ~Ummm...was that a tease, or a threat?~ #75200 */
  IF ~~ THEN REPLY @750 /* ~A tease, silly.~ #75657 */ GOTO 465
  IF ~~ THEN REPLY @751 /* ~A threat. Watch your step, mage.~ #75658 */ GOTO 466
  IF ~~ THEN REPLY @752 /* ~Oh, probably a little of both.~ #75659 */ GOTO 465
END

IF ~~ THEN BEGIN 465 // from: 464.2 464.0
  SAY @753 /* ~Ah. Well, I don't exactly think it's funny. All of this Bhaal business is scary enough for me, please don't lord it over me. It makes me uncomfortable.~ #75201 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 466 // from: 464.1
  SAY @754 /* ~Oh, I'll be watching it from a much greater distance from now on. I care about you, but I won't be bullied.~ #75202 */
  IF ~~ THEN DO ~SG("J#KelseyRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN 467 // from: 463.1
  SAY @755 /* ~Me, I would like to have some sort of plan. I've already started saving up for the future...since I can't exactly count on inheriting the trading company and I don't want to go on that one adventure too many.~ #75203 */
  IF ~~ THEN GOTO 468
END

IF ~~ THEN BEGIN 468 // from: 481.0 480.0 479.0 478.1 478.0 467.0
  SAY @756 /* ~I know that as a storyteller I'd probably make a great shopkeeper mage, but if you will please indulge me. I've been thinking about that future, and how I would like to see it turn out.~ #75204 */
  IF ~~ THEN GOTO 469
END

IF ~~ THEN BEGIN 469 // from: 468.0
  SAY @757 /* ~Perhaps I'll start up a small shop of my own...nothing ambitious, just a place where people can meet and gather and buy their spices and their breeches and gossip and giggle.~ #75205 */
  IF ~~ THEN GOTO 470
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY @758 /* ~We'll have a trophy case of our horde of treasure from our years on the road, and trade the odd piece with the adventurers that pass through town. You and I will swear that they're children, impossibly green, and that we were never that young, and you'll smile and I'll love you all over again.~ #75206 */
  IF ~~ THEN GOTO 471
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY @759 /* ~Or perhaps I'll build myself a small rickety tower and go just slightly off-kilter, puttering around up there with potions and a familiar. You'll come and remind me every day that I should eat lunch and change my socks, of course.~ [FWKLSYD9] #75207 */
  IF ~Class(Player1,MAGE_ALL)~ THEN GOTO 472
  IF ~!Class(Player1,MAGE_ALL)~ THEN GOTO 477
END

IF ~~ THEN BEGIN 472 // from: 471.0
  SAY @760 /* ~And I see you. You'll be a beautiful silver-haired seer, consulted by the rich and the poor, the powerful and the meek about everything from romance to high diplomacy.~ [FWKLSYE0] #75208 */
  IF ~~ THEN GOTO 473
END

IF ~~ THEN BEGIN 473 // from: 477.0 472.0
  SAY @761 /* ~Everyone will love you and respect you and trust you. No one will care that your blood once made people suspicious and afraid. They will see a truly great, wise woman, and they will never forget you and your great deeds and your kindness and insight.~ [FWKLSYE2] #75209 */
  IF ~~ THEN GOTO 474
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY @762 /* ~...I want to be there when that happens.~ [FWKLSYE3] #75210 */
  IF ~~ THEN REPLY @763 /* ~That's a very sweet story, Kelsey. I hope things really do turn out that way.~ #75660 */ GOTO 475
  ++ @3344 + lt44_youwill
  IF ~~ THEN REPLY @764 /* ~We can only see what we shall see, my love.~ #75661 */ GOTO 475
  ++ @3345 + lt44_shapeup
  IF ~~ THEN REPLY @765 /* ~I hardly think that's likely. One or both of us could be dead by dawn.~ #75662 */ GOTO 476
END

IF ~~ lt44_youwill
SAY @3346
IF ~~ EXIT
END

IF ~~ lt44_shapeup
SAY @3347
IF ~~ EXIT
END


IF ~~ THEN BEGIN 475 // from: 474.1 474.0
  SAY @766 /* ~I'm in no rush to grow old, you understand, but I can't think of a better way to do it than with you.~ #75211 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 476 // from: 474.2
  SAY @767 /* ~Perhaps, but I won't let your pessimism ruin my fantasy, <CHARNAME>. I believe in it.~ #75212 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 477 // from: 471.1
  SAY @768 /* ~And I see you. You will have hung up your weapons and rings of power and battle gear, but you will still be strong and beautiful and vibrant.~ [FWKLSYE1] #75213 */
  IF ~~ THEN GOTO 473
END

IF ~~ THEN BEGIN 478 // from: 463.2
  SAY @769 /* ~Truly? You love The Life that much that you can't imagine doing anything else?~ #75214 */
  ++ @3348 + lt44_whatelse
  IF ~~ THEN REPLY @770 /* ~More like I doubt there will ever be an end to my enemies.~ #75663 */ GOTO lt44_neverend
  IF ~~ THEN REPLY @771 /* ~It is the best way to control my own destiny.~ #75664 */ GOTO lt44_control
  ++ @3349 + lt44_betteroffer
END

IF ~~ lt44_neverend
SAY @3351
IF ~~ GOTO 468
END

IF ~~ lt44_control
SAY @3352
IF ~~ GOTO 468
END

IF ~~ lt44_betteroffer
SAY @3353
IF ~~ GOTO 468
END

IF ~~ lt44_whatelse
SAY @3350
IF ~~ GOTO 468
END



IF ~~ THEN BEGIN 479 // from: 463.3
  SAY @772 /* ~Truly? I think I'm relieved to hear you say that...as strong as I know you are, <CHARNAME>, I would hope you would get out of harm's way before harm has its way.~ #75215 */
  IF ~~ THEN GOTO 468
END

IF ~~ THEN BEGIN 480 // from: 463.4
  SAY @773 /* ~(sigh) As much as I try not to think about that...yes, I know, and as much as I hope to be with you forever, I hope that I don't become a burden to you before your time.~ #75216 */
  IF ~~ THEN GOTO 468
END

IF ~~ THEN BEGIN 481 // from: 463.5
  SAY @774 /* ~Truly? I think I'm relieved to hear you say that...I think the world will need a break from you eventually, for its own good.~ #75217 */
  IF ~~ THEN GOTO 468
END


IF ~Global("J#LoveTalk","LOCALS",46)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 482 // from:
  SAY @775 /* ~I don't think there will ever be a better time to ask...please, come sit with me.~ [FWKLSY80] #75218 */
  IF ~~ THEN REPLY @776 /* ~Very well. What is on your mind, Kelsey?~ #75665 */ GOTO 483
  ++ @3354 + lt46_soundnervous
  IF ~~ THEN REPLY @777 /* ~I am tired and in no mood for deep conversation.~ #75666 */ GOTO 491
  ++ @3355 + lt46_ofcourse
END

IF ~~ lt46_soundnervous
SAY @3356
IF ~~ GOTO 483
END

IF ~~ lt46_ofcourse
SAY @3357 = @3358
IF ~~ GOTO 483
END


IF ~~ THEN BEGIN 483 // from: 491.0 482.0
  SAY @778 /* ~You know that I love you, and I have tried to show you that I am at your service on the battlefield and as a friend.~ [FWKLSYE4] #75219 */
  IF ~~ THEN GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY @779 /* ~Now, I want to be more than that to you, <CHARNAME>. I would like...I would love...if we could spend the night together, as a man and woman.~ #75220 */
  IF ~~ THEN GOTO 485
END

IF ~~ THEN BEGIN 485 // from: 484.0
  SAY @780 /* ~Being able to touch and hold your body...would be an honor, to say the least.~ #75221 */
  IF ~~ THEN GOTO 486
END

IF ~~ THEN BEGIN 486 // from: 485.0
  SAY @781 /* ~I realize that this is probably not the most romantic setting, or the most seductive offer you could hope for, but please believe me when I say it is sincere, and I would not ask if I did not care deeply about you.~ [FWKLSYE5] #75222 */
  IF ~~ THEN GOTO 487
END

IF ~~ THEN BEGIN 487 // from: 486.0
  SAY @782 /* ~Will you take this step with me?~ #75223 */
  IF ~~ THEN REPLY @783 /* ~Yes, Kelsey. I want to share our love this way.~ #75667 */ GOTO 493
  IF ~~ THEN REPLY @784 /* ~I don't think the time is right for this.~ #75668 */ GOTO 494
  IF ~~ THEN REPLY @785 /* ~This is so sudden...I don't know how I feel.~ #75669 */ GOTO 488
  IF ~~ THEN REPLY @786 /* ~Me? Sleep with a weakling like you? Not in this lifetime.~ #75670 */ GOTO 490
END

IF ~~ THEN BEGIN 488 // from: 487.2
  SAY @787 /* ~I understand. I love you, <CHARNAME>, and I would never ask you to do something you did not truly feel.~ #75224 */
  IF ~~ THEN GOTO 489
END

IF ~~ THEN BEGIN 489 // from: 488.0
  SAY @788 /* ~You know my feelings now, so if there is any way I can make you more comfortable with...the idea, please tell me.~ #75225 */
  IF ~~ THEN REPLY @789 /* ~I do not need any more convincing, Kelsey. I will stay with you tonight.~ #75671 */ GOTO 493
  IF ~~ THEN REPLY @790 /* ~We shall see. Let's not rush anything.~ #75672 */ GOTO 494
  IF ~~ THEN REPLY @791 /* ~Keep on dreaming, because you will never be man enough for me.~ #75673 */ GOTO 490
END

IF ~~ THEN BEGIN 490 // from: 489.2 487.3
  SAY @792 /* ~If you had so low an opinion of me as a man, why could you not mention something a little sooner? Damn you for being so cruel, <CHARNAME>!~ #75226 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN 491 // from: 482.1
  SAY @793 /* ~Please...I know I try upon your patience at times, but this is important to me and I will not be able to sleep unless we talk.~ #75227 */
  IF ~~ THEN REPLY @794 /* ~All right. Speak your thoughts, then.~ #75674 */ GOTO 483
  IF ~~ THEN REPLY @795 /* ~I said I was tired and I meant it. Don't bother me.~ #75675 */ GOTO 492
END

IF ~~ THEN BEGIN 492 // from: 491.1
  SAY @796 /* ~Then what I wanted is probably impossible anyway...as difficult as it will be, I will leave you to yourself from now on.~ #75228 */
  IF ~~ THEN DO ~SG("J#KelseyRomanceActive",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN 493 // from: 489.0 487.0
  SAY @797 /* ~I am glad you feel as I do. I will...do my best to be gentle, and everything you deserve in a lover...~ #75229 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyNookie","GLOBAL",1)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN 494 // from: 489.1 487.1
  SAY @798 /* ~I can hardly disagree with your feelings. I do not resent your decision...but if you change your mind, please don't keep the news to yourself.~ #75230 */
  IF ~~ THEN GOTO 495
END

IF ~~ THEN BEGIN 495 // from: 494.0
  SAY @799 /* ~Good night, dear <CHARNAME>. I think I will sit up a while longer.~ #75231 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyNookie","GLOBAL",2)
RestParty()~ EXIT
END


IF ~Global("J#LoveTalk","LOCALS",48)
!StateCheck(Player1,STATE_SLEEPING)
Global("J#KelseyNookie","GLOBAL",1)~ THEN BEGIN lt48_1
  SAY @3018 = @3019
IF ~~ THEN REPLY @3020 GOTO lt48_2
IF ~~ THEN REPLY @3021 GOTO lt48_3
IF ~~ THEN REPLY @3022 GOTO lt48_4
IF ~~ THEN REPLY @3023 GOTO lt48_6
END

IF ~~ THEN BEGIN lt48_2
SAY @807
IF ~~ THEN GOTO lt48_5
END

IF ~~ THEN BEGIN lt48_3
SAY @3025 = @3026
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt48_4
SAY @808
IF ~~ THEN GOTO lt48_5
END

IF ~~ THEN BEGIN lt48_5
SAY @3028 = @3029 = @3030
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt48_6
SAY @3031
IF ~~ THEN GOTO lt48_5
END


IF ~Global("J#LoveTalk","LOCALS",48)
!StateCheck(Player1,STATE_SLEEPING)
!Global("J#KelseyNookie","GLOBAL",1)~ THEN BEGIN 502 // from:
  SAY @809 /* ~My dear, it is time to rise and face the day. I hope you are well rested.~ [FWKLSY82] #75238 */
  IF ~~ THEN REPLY @810 /* ~I hope you are not pouting about last night.~ #75679 */ GOTO 503
  IF ~~ THEN REPLY @811 /* ~Thank you, yes.~ #75680 */ GOTO 504
  IF ~~ THEN REPLY @812 /* ~I have not forgotten what you said to me...some night soon we may not rest quite so well.~ #75681 */ GOTO 505
END

IF ~~ THEN BEGIN 503 // from: 502.0
  SAY @813 /* ~Not at all, <CHARNAME>. I would be lying if I said I want you less this morning than I did last night, but there will be time enough to discuss that later. We have important work to do today.~ #75239 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 504 // from: 502.1
  SAY @814 /* ~Then let us be on our way, <CHARNAME>...I believe we have important work to do today.~ #75240 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 505 // from: 502.2
  SAY @815 /* ~Very little would make me happier, <CHARNAME>, but we should discuss it later. I believe we have important work to do today.~ #75241 */
  IF ~~ THEN EXIT
END

IF ~Global("J#LoveTalk","LOCALS",50)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 506 // from:
  SAY @816 /* ~Maybe this does not need to be said, perhaps I will jinx the magic between us, but I want you to hear it.~ [FWKLSY83] #75242 */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 507 // from: 506.0
  SAY @817 /* ~I want you to know that I am devoted to you, and I hope to never leave your side. I truly want us to be together forever.~ [FWKLSY84] #75243 */
  IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @818 /* ~I think I would like that.~ #75682 */ GOTO 508
  IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @819 /* ~That's good, since I don't plan to let you out of my sight.~ #75683 */ GOTO 508
  IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @820 /* ~Perhaps we should not get ahead of ourselves. Forever is a long time.~ #75684 */ GOTO 513
  IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @821 /* ~It's not like you were so great in bed that I couldn't stand living without you.~ #75685 */ GOTO 514
  IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @822 /* ~I think I would like that.~ #75682 */ GOTO 515
  IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @823 /* ~That's good, since I don't plan to let you out of my sight.~ #75683 */ GOTO 515
  IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @824 /* ~Perhaps we should not get ahead of ourselves. Forever is a long time.~ #75684 */ GOTO 516
END

IF ~~ THEN BEGIN 508 // from: 514.0 513.0 507.1 507.0
  SAY @825 /* ~I am so fully satisfied here, in mind, spirit, and body, that I simply cannot ever imagine wanting or needing to be elsewhere.~ #75244 */
  ++ @3359 + lt50_huntdown
  IF ~~ THEN REPLY @826 /* ~Are you asking me to marry you?~ #75686 */ GOTO 509
  IF ~~ THEN REPLY @827 /* ~Well, stay as long as you like, but I do not control the future.~ #75687 */ GOTO 512
  ++ @3360 + lt50_complete
END

IF ~~ lt50_huntdown
SAY @3361 = @3362
IF ~~ EXIT
END

IF ~~ lt50_complete
SAY @3363 = @3364 = @3365
IF ~~ EXIT
END

IF ~~ THEN BEGIN 509 // from: 515.0 508.0
  SAY @828 /* ~I do not believe that would be fair to you right now, <CHARNAME>...~ #75245 */
  IF ~~ THEN GOTO 510
END

IF ~~ THEN BEGIN 510 // from: 509.0
  SAY @829 /* ~There is still so much that needs to be done to set things right, and I would be lying if I did not say that my own problems make me a little leery of marriage. "Family" has not been a good word in my vocabulary for a long time.~ #75246 */
  IF ~~ THEN GOTO 511
END

IF ~~ THEN BEGIN 511 // from: 510.0
  SAY @830 /* ~For now, I think our relationship, as equals, is best. Perhaps we can discuss the idea when things have calmed down somewhat...~ #75247 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 512 // from: 515.1 508.1
  SAY @831 /* ~I will. I hope that in time you grow to cherish the idea as much as I do.~ #75248 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 513 // from: 507.2
  SAY @832 /* ~I know that! I am counting on it, in fact.~ #75249 */
  IF ~~ THEN GOTO 508
END

IF ~~ THEN BEGIN 514 // from: 507.3
  SAY @833 /* ~That wasn't what I was getting at, <CHARNAME>, and I think you know it.~ #75250 */
  IF ~~ THEN GOTO 508
END

IF ~~ THEN BEGIN 515 // from: 516.0 507.5 507.4
  SAY @834 /* ~I feel truly satisfied in mind and spirit with you, and I cannot ever imagine doing better elsewhere.~ #75251 */
  ++ @3359 + lt50_huntdown
  IF ~~ THEN REPLY @835 /* ~Are you asking me to marry you?~ #75686 */ GOTO 509
  IF ~~ THEN REPLY @836 /* ~Well, stay as long as you like, but I do not control the future.~ #75687 */ GOTO 512
  ++ @3360 + lt50_complete
END

IF ~~ THEN BEGIN 516 // from: 507.6
  SAY @837 /* ~I know that! I am counting on it, in fact.~ #75249 */
  IF ~~ THEN GOTO 515
END


// KELSEY AND ANOMEN DUKE IT OUT
// PUT THIS AFTER LTs but BEFORE BANTER


APPENDI ANOMENJ
IF WEIGHT #14 ~!StateCheck("J#Kelsey",STATE_SLEEPING)
InParty("J#Kelsey")
Global("J#AnomenChallengesKelseyOneShot","GLOBAL",0)
Global("J#AnomenKelseyFight","GLOBAL",0)
Global("J#AnomenStartedFight","LOCALS",1)~ THEN BEGIN BANOMEN_601 // from:
  SAY @1048 /* ~I have made a decision. It is time you were on your way, boy.~ */
  IF ~~ THEN DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",1)
SetGlobal("J#AnomenChallengesKelseyOneShot","GLOBAL",1)~ EXTERN ~BJ#KLSY~ 144
END
END

IF ~~ THEN BEGIN 144 // from:
  SAY @221 /* ~Are you talking to me?~ [FWKLSY85] #74883 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_602
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_602
SAY @1049
IF ~~ THEN EXTERN BJ#KLSY 145
END
END

IF ~~ THEN BEGIN 145 // from:
  SAY @222 /* ~Anomen, I didn't know you had a sense of humor.~ [FWKLSY86] #74884 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_603
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_603
SAY @1050
IF ~~ THEN EXTERN BJ#KLSY 146
END
END

IF ~~ THEN BEGIN 146 // from:
  SAY @223 /* ~<CHARNAME>, are you listening to this nonsense?~ #74885 */
  IF ~~ THEN REPLY @224 /* ~I will not be dragged into this insane posturing.~ #75456 */ EXTERN ~BANOMEN~ BANOMEN_604
  IF ~~ THEN REPLY @225 /* ~Anomen is right, Kelsey. I am sick of you.~ #75457 */ GOTO 147
  IF ~~ THEN REPLY @226 /* ~Anomen, this is my group to lead, I will decide who goes and who stays, and you are both welcome to stay.~ #75458 */ EXTERN ~BANOMEN~ BANOMEN_604
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_604
SAY @1051
IF ~~ THEN EXTERN BJ#KLSY 148
END
END


IF ~~ THEN BEGIN 147 // from: 146.1
  SAY @227 /* ~I can't believe you are siding with this bully! You are obviously not the woman I thought you were.~ #74886 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY @228 /* ~Well, at least you're being honest now. You're still an outrageous, overblown excuse for a suitor, though, if you think I'm going to keep my feelings to myself just because you don't like it.~ #74887 */
  IF ~Alignment("Anomen",LAWFUL_GOOD)~ THEN EXTERN ~BANOMEN~ BANOMEN_605
  IF ~Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN EXTERN ~BANOMEN~ BANOMEN_613
  IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN EXTERN ~BANOMEN~ BANOMEN_617
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_605
SAY @1052
IF ~~ THEN EXTERN BANOMEN BANOMEN_606
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_606
SAY @1053
  IF ~~ THEN REPLY @1054
DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXTERN ~BJ#KLSY~ 151
  IF ~~ THEN REPLY @1055
DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXTERN ~BJ#KLSY~ 151
  IF ~~ THEN REPLY @1056 /* ~Hah! Anomen, give it a rest. I far prefer Kelsey's affections to yours.~ */ EXTERN BANOMEN BANOMEN_607
  IF ~~ THEN REPLY @1057 /* ~If you must force a choice, then I choose Kelsey.~ */ EXTERN BANOMEN BANOMEN_607
  IF ~~ THEN REPLY @1058 /* ~Actually, I would much rather you do that duel-to-the-death thing. It would be a real turn-on.~ */ EXTERN BANOMEN BANOMEN_608
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_607
SAY @1059
  IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXIT
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_608
SAY @1060
IF ~~ THEN EXTERN BJ#KLSY 149
END
END

IF ~~ THEN BEGIN 149 // from:
  SAY @229 /* ~What?!?~ #74888 */
  IF ~~ THEN EXTERN ~BANOMEN~ BANOMEN_609
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_609
SAY @1061
IF ~~ THEN EXTERN BJ#KLSY 150
END
END

IF ~~ THEN BEGIN 150 // from:
  SAY @230 /* ~I'll do neither! You're obviously unstable, <CHARNAME>, and I will not wait around for you to unleash your next boyfriend on me!~ #74889 */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ EXTERN ~BANOMEN~ BANOMEN_610
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_610
SAY @1062
  IF ~ReputationGT(Player1,15)~ THEN EXTERN BANOMEN BANOMEN_611
  IF ~ReputationLT(Player1,16)~ THEN EXTERN BANOMEN BANOMEN_612
END

IF ~~ THEN BEGIN BANOMEN_611
SAY @1063
IF ~~ THEN EXIT
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_612
SAY @1064
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_613
SAY @1065
IF ~~ THEN EXTERN BANOMEN BANOMEN_614
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_614
SAY @1066
IF ~~ THEN REPLY @1054 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1055 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1056 EXTERN BANOMEN BANOMEN_607
IF ~~ THEN REPLY @1057 EXTERN BANOMEN BANOMEN_607
IF ~~ THEN REPLY @1058 EXTERN BANOMEN BANOMEN_615
END
END

IF ~~ THEN BEGIN 151 // from:
  SAY @231 /* ~Don't flatter yourself...I...I never really thought you took me seriously anyway. I think you two are just PERFECT for each other.~ #74890 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXIT
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_615
SAY @1067
IF ~~ THEN EXTERN BJ#KLSY 152
END
END

IF ~~ THEN BEGIN 152 // from:
  SAY @232 /* ~I can't believe we're going through with this...~ #74891 */
  IF ~~ THEN DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",1)
SetGlobalTimer("J#AnomenKelseyFightTimer","GLOBAL",18)~ EXIT
END

APPENDI J#KLSYJ
IF ~Global("J#AnomenKelseyFight","GLOBAL",3)
!Dead("Anomen")~ THEN BEGIN KAfightpost1
SAY @1068
IF ~~ THEN EXTERN BANOMEN BANOMEN_616
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_616
SAY @1069
IF ~~ THEN REPLY @1070 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1055 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1056 EXTERN BANOMEN BANOMEN_607
IF ~~ THEN REPLY @1057 EXTERN BANOMEN BANOMEN_607
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_617
SAY @1071
IF ~~ THEN EXTERN BJ#KLSY 154
END
END

IF ~~ THEN BEGIN 154 // from:
  SAY @235 /* ~I don't want to fight you, Anomen, but if you keep swinging that thing in my face I can put you in a world of hurt.~ #74892 */
  IF ~~ THEN REPLY @236 /* ~Go ahead, if you must be children about this.~ #75459 */ DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",2)
SetGlobalTimer("J#AnomenKelseyFightTimer","GLOBAL",18)~ EXIT
  IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @237 /* ~Wait! This will settle nothing!~ #75460 */ EXTERN ~BANOMEN~ BANOMEN_619
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @238 /* ~Wait! This will settle nothing!~ #75460 */ EXTERN ~BANOMEN~ BANOMEN_618
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_618
SAY @1072
IF ~~ THEN REPLY @1073 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1055 EXTERN BJ#KLSY 151
IF ~~ THEN REPLY @1056 EXTERN BANOMEN BANOMEN_607
IF ~~ THEN REPLY @1057 EXTERN BANOMEN BANOMEN_607
END
END

APPENDI BANOMEN
IF ~~ THEN BEGIN BANOMEN_619
SAY @1074
  IF ~~ THEN DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",1)
SetGlobalTimer("J#AnomenKelseyFightTimer","GLOBAL",18)~ EXIT
END
END

APPENDI J#KLSYJ
IF ~Global("J#AnomenKelseyFight","GLOBAL",3)
Dead("Anomen")~ THEN BEGIN KAfightpost2
  SAY @1075
  IF ~~ THEN DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXTERN J#KLSYJ KAfightpost3
END
END

APPENDI J#KLSYJ
IF ~~ THEN BEGIN KAfightpost3
SAY @1076
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
ActionOverride("Anomen",LeaveParty())~ EXIT
END
END

APPENDI ANOMENJ
IF WEIGHT #14 ~Dead("J#Kelsey")
Global("J#AnomenKelseyFight","GLOBAL",3)~ THEN BEGIN KAfightpost4
  SAY @1077
  IF ~~ THEN DO ~SetGlobal("J#AnomenKelseyFight","GLOBAL",4)~ EXTERN ANOMENJ KAfightpost5
END
END

APPENDI ANOMENJ
  IF ~~ THEN BEGIN KAfightpost5
    SAY @1078
    IF ~~ THEN DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)
ActionOverride("J#Kelsey",LeaveParty())~ EXIT
  END
END


// Kelsey banters with others

IF ~InParty("Valygar")
See("Valygar")
Global("FWKelseyValygarDocks","LOCALS",1)~ THEN BEGIN valydocks
  SAY @3444
  IF ~~ THEN DO ~SetGlobal("FWKelseyValygarDocks","LOCALS",2)~ EXTERN BVALYGA dockschain
END

IF ~!StateCheck(Player1,STATE_SLEEPING)
Dead("J#Ceara")
Global("FWHadCearaDeadTalk","LOCALS",0)~ THEN cearatale
SAY @3418 = @3419
+ ~OR(2) G("J#KelseyRomanceActive",1) G("J#KelseyRomanceActive",2)~ + @3420 DO ~SetGlobal("FWHadCearaDeadTalk","LOCALS",1)~ + cearalove
++ @3421 DO ~SetGlobal("FWHadCearaDeadTalk","LOCALS",1)~ + cearafargone
++ @3422 DO ~SetGlobal("FWHadCearaDeadTalk","LOCALS",1)~ + cearafargone
++ @3423 DO ~SetGlobal("FWHadCearaDeadTalk","LOCALS",1)~ + ceararegrets
++ @3424 DO ~SetGlobal("FWHadCearaDeadTalk","LOCALS",1)~ + cearatry
END

IF ~~ cearalove
SAY @3425
IF ~~ GOTO cearanarr
END

IF ~~ cearatry
SAY @3436
IF ~~ GOTO cearanarr
END

IF ~~ ceararegrets
SAY @3434
IF ~~ GOTO cearanarr
END

IF ~~ cearafargone
SAY @3433
IF ~~ GOTO cearanarr
END



IF ~~ cearanarr
SAY @3426 = @3427
++ @3428 + ceararesponsible
++ @3429 + cearaally
+ ~OR(2) G("J#KelseyRomanceActive",1) G("J#KelseyRomanceActive",2)~ + @3430 + cearalonely
++ @3431 + cearapotential
++ @3432 + cearanutty
++ @3435 + cearanutty
END

IF ~~ cearaally
SAY @3439
IF ~~ EXIT
END

IF ~~ cearanutty
SAY @3443
IF ~~ EXIT
END



IF ~~ cearapotential
SAY @3442
IF ~~ EXIT
END


IF ~~ cearalonely
SAY @3440 = @3441
IF ~~ EXIT
END



IF ~~ ceararesponsible
SAY @3437 = @3438
IF ~~ EXIT
END





IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("J#BKelsey1","LOCALS",0)~ THEN BEGIN 44 // from:
  SAY @85 /* ~Sir Keldorn...I hope you're not getting any funny ideas. I have no desire to hurt anyone, but I am not helpless to defend myself.~ [FWKLSYB6] #74785 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey1","LOCALS",1)~ EXTERN ~BKELDOR~ BKELDOR_149
END


APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_149
SAY @1200
IF ~~ THEN EXTERN BJ#KLSY 45
END
END

IF ~~ THEN BEGIN 45 // from:
  SAY @86 /* ~I know full well that you are a sworn Inquisitor, and I also know full well we are in Amn, where inquisitors and mage-hunters are given a very free hand.~ #74786 */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @87 /* ~All I'm saying is that I don't want to be part of helping you make your monthly quota for mage scalps.~ #74787 */
  IF ~~ THEN EXTERN ~BKELDOR~ BKELDOR_150
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_150
SAY @1201
IF ~~ THEN EXTERN BKELDOR BKELDOR_151
END
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_151
SAY @1202
IF ~~ THEN EXTERN BKELDOR BKELDOR_152
END
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_152
SAY @1203
IF ~~ THEN EXTERN BJ#KLSY 47
END
END

IF ~~ THEN BEGIN 47 // from:
  SAY @88 /* ~I am glad to hear it, but I can't believe you attained your rank in the Order by shaking hands with local potion-brewers.~ #74788 */
  IF ~~ THEN EXTERN ~BKELDOR~ BKELDOR_153
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_153
SAY @1204
IF ~~ THEN EXTERN BKELDOR BKELDOR_154
END
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_154
SAY @1205
IF ~~ THEN EXTERN BJ#KLSY 48
END
END


IF ~~ THEN BEGIN 48 // from:
  SAY @89 /* ~What of the Cowled Wizards? They are certainly no friends of mine, but I have seen their enforcers work with brutal efficiency. Why should a paladin get involved?~ #74789 */
  IF ~~ THEN EXTERN ~BKELDOR~ BKELDOR_155
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_155
SAY @1206
IF ~~ THEN EXTERN BJ#KLSY 49
END
END

IF ~~ THEN BEGIN 49 // from:
  SAY @90 /* ~Yes, I see your point...the Cowled Ones are nothing if not corrupt. You've given me a lot to think on. I apologize for insulting you, Sir Keldorn.~ #74790 */
  IF ~~ THEN EXTERN ~BKELDOR~ BKELDOR_156
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_156
SAY @1207
IF ~~ THEN EXIT
END
END

IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("J#BKelsey2","LOCALS",0)~ THEN BEGIN 50 // from:
  SAY @91 /* ~Valygar, do you have a moment to talk?~ [FWKLSY87] #74791 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey2","LOCALS",1)~ EXTERN ~BVALYGA~ BVALYGA_149
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_149
SAY @1208
IF ~~ THEN EXTERN BJ#KLSY 51
END
END

IF ~~ THEN BEGIN 51 // from:
  SAY @92 /* ~But I'd like to talk to you about you and your family. I know that magic...~ #74792 */
  IF ~~ THEN EXTERN ~BVALYGA~ BVALYGA_150
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_150
SAY @1209
IF ~~ THEN EXTERN BJ#KLSY 52
END
END

IF ~~ THEN BEGIN 52 // from:
  SAY @93 /* ~Look, I really...fine, I'll talk. You listen, and chime in if I say anything interesting.~ #74793 */
  IF ~~ THEN EXTERN ~BVALYGA~ BVALYGA_151
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_151
SAY @1210
IF ~~ THEN EXTERN BJ#KLSY 53
END
END

IF ~~ THEN BEGIN 53 // from:
  SAY @94 /* ~I know about you and your family, how magic is so dangerously strong in your blood. In my family, though, there's hardly any magic...I have a few cousins who are minor priests, but that's about it.~ #74794 */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @95 /* ~Then there's me, Kelsey the Sorcerer, Kelsey the Weirdo...nobody really seems to know why I am the way I am, or what it means.~ #74795 */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @96 /* ~I know you're afraid of magic and mages. You know what? I am too, which means I'm afraid of myself. And the more I hear about your family, the more afraid I am.~ #74796 */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @97 /* ~I used to worry that, because I didn't have to study magic like normal wizards, that my power must come from somewhere else...I thought maybe it was my soul being eaten away, but then I thought that was a silly idea.~ #74797 */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @98 /* ~Then I hear about your parents and Lavok, and now I'm even more worried. Every time I cast a magic missile at one of our enemies, am I becoming some sort of twisted monster inside? Am I going to wind up so power-mad some day that I'd...I'd turn on my own family? Am I...?~ #74798 */
  IF ~~ THEN EXTERN ~BVALYGA~ BVALYGA_152
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_152
SAY @1211
IF ~~ THEN EXTERN BJ#KLSY 58
END
END

IF ~~ THEN BEGIN 58 // from:
  SAY @99 /* ~What?~ #74799 */
  IF ~~ THEN EXTERN ~BVALYGA~ BVALYGA_153
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_153
SAY @1212
IF ~~ THEN EXTERN BVALYGA BVALYGA_154
END
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_154
SAY @1213
IF ~~ THEN EXTERN BJ#KLSY 59
END
END

IF ~~ THEN BEGIN 59 // from:
  SAY @100 /* ~I...see. Well, can I ask you a favor, then? At least while we're travelling together, do you think you could...keep an eye on me? Let me know if you think my magic is really making me lose touch with reality? After all, you've probably dealt with more corrupt mages than anyone, even <CHARNAME>.~ #74800 */
  IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN ~BAERIE~ BAERIE_449
  IF ~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Korgan")~ THEN EXTERN ~BKORGAN~ BKORGAN_134
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Korgan")~ THEN EXTERN ~BVALYGA~ BVALYGA_155
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_449
SAY @1216
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~BKORGAN~ BKORGAN_134
  IF ~!IsValidForPartyDialog("Korgan")~ THEN EXTERN ~BVALYGA~ BVALYGA_155
END
END

APPENDI BKORGAN
IF ~~ THEN BEGIN BKORGAN_134
SAY @1215
IF ~~ THEN EXTERN BVALYGA BVALYGA_155
END
END


APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_155
SAY @1214
IF ~~ THEN EXTERN BJ#KLSY 60
END
END

IF ~~ THEN BEGIN 60 // from:
  SAY @101 /* ~Ah. Well. I'm not sure I actually feel better having talked...~ #74801 */
  IF ~!Dead("LAVOK02")~ THEN EXTERN ~BVALYGA~ BVALYGA_157
  IF ~Dead("LAVOK02")~ THEN EXTERN ~BVALYGA~ BVALYGA_156
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_156
SAY @1217
IF ~~ THEN EXIT
END
END

APPENDI BVALYGA
IF ~~ THEN BEGIN BVALYGA_157
SAY @1218
IF ~~ THEN EXIT
END
END


IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("J#BKelsey3","LOCALS",0)~ THEN BEGIN 61 // from:
  SAY @102 /* ~Minsc, I know that some wizards keep an animal familiar, but I can honestly say I've never seen a warrior with a hamster.~ [FWKLSY88] #74802 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey3","LOCALS",1)~ EXTERN ~BMINSC~ BMINSC_101
END

APPENDI BMINSC
IF ~~ THEN BEGIN BMINSC_101
SAY @1219
IF ~~ THEN EXTERN BJ#KLSY 62
END
END

IF ~~ THEN BEGIN 62 // from:
  SAY @103 /* ~You know, evil wizards have imps and good wizards might have a hawk or a cat or something like that. I think of familiars as matching their master's personality, and I can't say I know any other berserker rangers, but I would have thought that a wolf or something like that would have been more fitting.~ #74803 */
  IF ~~ THEN EXTERN ~BMINSC~ BMINSC_102
END

APPENDI BMINSC
IF ~~ THEN BEGIN BMINSC_102
SAY @1220
IF ~~ THEN EXIT
END
END


IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("J#BKelsey4","LOCALS",0)~ THEN BEGIN 63 // from:
  SAY @104 /* ~Nalia, do you mind if I take a look at your spellbook?~ [FWKLSY90] #74804 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey4","LOCALS",1)~ EXTERN ~BNALIA~ BNALIA_52
END

CHAIN2 BNALIA BNALIA_52
@1221 == @105 == @1222 == @106 == @1223 == @107 == @1224 == @108 == @1225
END BJ#KLSY 68

IF ~~ THEN BEGIN 68 // from:
  SAY @109 /* ~Thanks for making me feel a little better, Nalia.~ #74809 */
  IF ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",3)
Global("J#KelseyRomanceActive","GLOBAL",0)~ THEN GOTO 69

  IF ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KelseyRomanceActive","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @110 /* ~By the way, because of my...special magic I sometimes have trouble casting spells from scrolls. Do you think you might give me a few pointers...over dinner...sometime?~ #74810 */
  IF ~~ THEN EXTERN ~BNALIA~ BNALIA_57
END

APPENDI BNALIA
IF ~~ THEN BEGIN BNALIA_57
SAY @1226
IF ~~ THEN EXIT
END
END


IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("J#BKelsey4","LOCALS",1)
Dead("Torgal")
OR(2)
Global("J#KelseyRomanceActive","GLOBAL",0)
Global("J#KelseyRomanceActive","GLOBAL",3)~ THEN BEGIN 70 // from:
  SAY @111 /* ~You have nice hands, Nalia. I've been watching you cast spells, and I couldn't help but notice.~ [FWKLSY91] #74811 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey4","LOCALS",2)~ EXTERN ~BNALIA~ BNALIA_58
END

CHAIN2 BNALIA BNALIA_58
@1227 == @112 == @1228 == @113 == @1229 == @114 == @1230 == @115 == @1231 == @116 == @1232 = @1233 == @117
END BNALIA BNALIA_65

APPENDI BNALIA
IF ~~ THEN BEGIN BNALIA_65
SAY @1234
IF ~~ THEN EXIT
END
END


IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("J#BKelsey5","LOCALS",0)~ THEN BEGIN 77 // from:
  SAY @118 /* ~You amaze me, Aerie.~ [FWKLSY92] #74818 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey5","LOCALS",1)~ EXTERN ~BAERIE~ BAERIE_450
END

CHAIN2 BAERIE BAERIE_450
@1235 == @119 = @120 == @1236 == @121 == @1237 == @122
END BAERIE BAERIE_453

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_453
SAY @1238
IF ~~ THEN EXIT
END
END


IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("J#BKelsey6","LOCALS",0)~ THEN BEGIN 82 // from:
  SAY @123 /* ~Jan, I've been warned not to ask you this, or anything for that matter, but...is there any history of sorcery in your family?~ [FWKLSY94] #74823 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey6","LOCALS",1)~ EXTERN ~BJAN~ BJAN_121
END

CHAIN2 BJAN BJAN_121
@1239 == @124 == @1240 = @1241 == @125
END BJAN BJAN_124

APPENDI BJAN
IF ~~ THEN BEGIN BJAN_124
SAY @1242
IF ~~ THEN EXIT
END
END



IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("J#BKelsey5","LOCALS",1)~ THEN BEGIN 221 // from:
  SAY @345 /* ~Aerie, have you given any thought to what you want to do when you grow up?~ [FWKLSY93] #74957 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey5","LOCALS",2)~ EXTERN ~BAERIE~ BAERIE_454
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_454
SAY @1243
IF ~~ THEN EXTERN BJ#KLSY 222
END
END

IF ~~ THEN BEGIN 222 // from:
  SAY @346 /* ~I am very sorry, Aerie. I did not mean it that way, I only meant that...well, I know you were a slave in the circus and that the wide-open world is new to you, and I wanted to know if you had any idea what you want to do with your freedom.~ #74958 */
  IF ~~ THEN EXTERN ~BAERIE~ BAERIE_455
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_455
SAY @1244
  IF ~IsValidForPartyDialog("Minsc")
Global("MinscWitch","GLOBAL",1)~ THEN EXTERN ~BMINSC~ BMINSC_103
  IF ~OR(2)
!IsValidForPartyDialog("Minsc")
!Global("MinscWitch","GLOBAL",1)~ THEN EXTERN ~BJ#KLSY~ 223
END
END

APPENDI BMINSC
IF ~~ THEN BEGIN BMINSC_103
SAY @1245
IF ~~ THEN EXTERN BJ#KLSY 223
END
END

IF ~~ THEN BEGIN 223 // from:
  SAY @347 /* ~Please don't cry, Aerie, I'm not trying to hurt your feelings, I'm just interested in what you're going to do now that...now that you are free to choose as well as any of us can.~ #74959 */
  IF ~~ THEN EXTERN ~BAERIE~ BAERIE_456
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_456
SAY @1246
  IF ~!Dead("Quayle")
!Dead("Quaylem")~ THEN EXTERN BAERIE BAERIE_457
  IF ~OR(2)
Dead("Quayle")
Dead("Quaylem")~ THEN EXTERN BAERIE BAERIE_458
END
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_457
SAY @1247
IF ~~ THEN EXTERN BJ#KLSY 224
END
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_458
SAY @1248
IF ~~ THEN EXTERN BJ#KLSY 224
END
END

IF ~~ THEN BEGIN 224 // from:
  SAY @348 /* ~Maybe if you start with what you're good at? Or what you like to do?~ #74960 */
  IF ~~ THEN EXTERN ~BAERIE~ BAERIE_459
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_459
SAY @1249
IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN BHAERDA BHAERDA_165
IF ~!IsValidForPartyDialog("HaerDalis")
!Dead("Quayle")
!Dead("Quaylem")~ THEN EXTERN BAERIE BAERIE_460
IF ~!IsValidForPartyDialog("HaerDalis")
OR(2)
Dead("Quayle")
Dead("Quaylem")~ THEN EXTERN BAERIE BAERIE_462
END
END

APPENDI BHAERDA
IF ~~ THEN BEGIN BHAERDA_165
SAY @1250
  IF ~!Dead("Quaylem")
!Dead("Quayle")~ THEN EXTERN ~BAERIE~ BAERIE_460
  IF ~OR(2)
Dead("Quaylem")
Dead("Quayle")~ THEN EXTERN ~BAERIE~ BAERIE_462
END
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_460
SAY @1251
IF ~~ THEN EXTERN BAERIE BAERIE_461
END
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_462
SAY @1252
IF ~~ THEN EXTERN BAERIE BAERIE_461
END
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_461
SAY @1253
IF ~~ THEN EXTERN BJ#KLSY 225
END
END

IF ~~ THEN BEGIN 225 // from:
  SAY @349 /* ~Hah! I'm afraid I don't know either, Aerie. And unlike you, I can't even do anything really useful like cure sick people. I certainly don't want to travel with MY uncle.~ #74961 */
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY @350 /* ~Why don't we make a deal? I will tell you if I think of any good career opportunities for you, and you tell me if you can think of something that would suit me. Deal?~ #74962 */
  IF ~~ THEN EXTERN ~BAERIE~ BAERIE_463
END

APPENDI BAERIE
IF ~~ THEN BEGIN BAERIE_463
SAY @1254
IF ~~ THEN EXIT
END
END


IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("J#BKelsey7","LOCALS",0)~ THEN BEGIN 279 // from:
  SAY @451 /* ~Yoshimo, I am going to try very hard not to offend you...~ [FWKLSYB7] #75015 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey7","LOCALS",1)~ EXTERN ~BYOSHIM~ BYOSHIM_84
END

CHAIN2 BYOSHIM BYOSHIM_84
@1255 == @452 == @1256 = @1257 = @1258 == @453 == @1259 = @1260 == @454 == @1261 = @1262 = @1263 == @455 == @1264 == @456
END BYOSHIM BYOSHIM_93

APPENDI BYOSHIM
IF ~~ THEN BEGIN BYOSHIM_93
SAY @1265
IF ~~ THEN EXIT
END
END

IF ~Global("J#BKelsey8","LOCALS",0)
InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)~ THEN BEGIN 517 // from:
  SAY @838 /* ~Korgan! Slow up, something just dropped out of your pack!~ [FWKLSYA2] #75252 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey8","LOCALS",1)~ EXTERN ~BKORGAN~ BKORGAN_135
END

CHAIN2 BKORGAN BKORGAN_135
@1266 == @839 == @1267 == @840 == @1268 == @841 == @1269 == @842
END BKORGAN BKORGAN_139

APPENDI BKORGAN
IF ~~ THEN BEGIN BKORGAN_139
SAY @1391
IF ~~ THEN EXIT
END
END

IF ~OR(2)
Global("J#KelseyRomanceActive","GLOBAL",0)
Global("J#KelseyRomanceActive","GLOBAL",3)
!StateCheck(Player1,STATE_SLEEPING)
Global("J#KelseyKillTalk","LOCALS",0)~ THEN BEGIN 522 // from:
  SAY @843 /* ~When did you get used to killing-or-being-killed?~ [FWKLSYA9] #75257 */
  IF ~~ THEN REPLY @844 /* ~It is not a question of when, Kelsey. I don't think it's something you should ever get used to.~ #75688 */ DO ~SetGlobal("J#KelseyKillTalk","LOCALS",1)~ GOTO 523
  IF ~~ THEN REPLY @845 /* ~I was...born for killing, Kelsey. I can't help it.~ #75689 */ DO ~SetGlobal("J#KelseyKillTalk","LOCALS",1)~ GOTO 528
  IF ~~ THEN REPLY @846 /* ~I was born for killing, and I wouldn't have it any other way.~ #75690 */ DO ~SetGlobal("J#KelseyKillTalk","LOCALS",1)~ GOTO 528
  IF ~~ THEN REPLY @847 /* ~Not long after Gorion's death, when I discovered that there were plenty of people who would never call me their friend.~ #75691 */ DO ~SetGlobal("J#KelseyKillTalk","LOCALS",1)~ GOTO 523
  IF ~~ THEN REPLY @848 /* ~Hush, I'm thinking about more important things.~ #75692 */ DO ~SetGlobal("J#KelseyKillTalk","LOCALS",1)~ GOTO 529
END

IF ~~ THEN BEGIN 523 // from: 522.3 522.0
  SAY @849 /* ~I have to admit, I think I'm too used to it myself. I find it a little distressing that I've shaped so much of my magic towards hurting others, but then again, I have to thank countless magic missiles and acid arrows for my continued good health and cheer.~ #75258 */
  IF ~~ THEN REPLY @850 /* ~Doing what you have to do is tough, but at least you get to live.~ #75693 */ GOTO 524
  IF ~~ THEN REPLY @851 /* ~Indeed. Plus, a lot of them probably have it coming.~ #75694 */ GOTO 525
  IF ~~ THEN REPLY @852 /* ~All you can do is hope, as I do, that eventually the world will be a more peaceful place.~ #75695 */ GOTO 526
  IF ~~ THEN REPLY @853 /* ~That's the spirit! Now, let's get back to work.~ #75696 */ GOTO 527
END

IF ~~ THEN BEGIN 524 // from: 523.0
  SAY @854 /* ~I suppose I do. I don't want to live just to kill, though. I think that would be a terrible fate.~ #75259 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 525 // from: 523.1
  SAY @855 /* ~Probably...but there are people who make war a game and killing a hobby, and I would hate to end up so accustomed to ending lives that I would feel the same way.~ #75260 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 526 // from: 523.2
  SAY @856 /* ~I have my doubts, but it's a nice thought, <CHARNAME>.~ #75261 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 527 // from: 523.3
  SAY @857 /* ~Gotcha.~ #75262 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 528 // from: 522.2 522.1
  SAY @858 /* ~Born for killing? What does that mean?~ #75263 */
  IF ~~ THEN REPLY @859 /* ~Nothing, forget it.~ #75697 */ GOTO 529
  IF ~~ THEN REPLY @860 /* ~It means I like to kill, and I start with those who ask me the most questions.~ #75698 */ GOTO 529
  IF ~~ THEN REPLY @861 /* ~Well, you HAVE seen how good I am at it, haven't you?~ #75699 */ GOTO 530
  IF ~~ THEN REPLY @862 /* ~It means I am the direct descendant of Bhaal, Lord of Murder, which supposedly entitles me to certain rights and responsibilities in the killing department.~ #75700 */ GOTO 531
END

IF ~~ THEN BEGIN 529 // from: 528.1 528.0 522.4
  SAY @863 /* ~All right, never mind.~ #75264 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 530 // from: 528.2
  SAY @864 /* ~That I have. It's impressive...but I'm not sure how I feel about saying that.~ #75265 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 531 // from: 528.3
  SAY @865 /* ~What? And I thought I had a suspect bloodline...uh, sorry, no offense, that wasn't what I meant!~ #75266 */
  IF ~~ THEN GOTO 532
END

IF ~~ THEN BEGIN 532 // from: 531.0
  SAY @866 /* ~It's just that...well, I would have thought life would be very difficult for someone in that situation. But then, life HAS been difficult, hasn't it?~ #75267 */
  IF ~~ THEN REPLY @867 /* ~You're a real master of the obvious, Kelsey.~ #75701 */ GOTO 533
  IF ~~ THEN REPLY @868 /* ~You could say that. But I assure you that I'm a fairly normal person despite my "suspect bloodline."~ #75702 */ GOTO 533
  IF ~~ THEN REPLY @869 /* ~It's getting more trying all the time.~ #75703 */ GOTO 533
END

IF ~~ THEN BEGIN 533 // from: 532.2 532.1 532.0
  SAY @870 /* ~I'll try not to complain quite so much about not understanding my heritage in the future. And if you'd ever like to talk about it, just let me know.~ #75268 */
  IF ~~ THEN EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,14)
Global("J#KelseyGoodRepTalk","LOCALS",0)~ THEN BEGIN 534 // from:
  SAY @871 /* ~I just wanted to thank you for including me in the group. We're doing the kinds of things I believe in, and you're a much better person than the adventurers and mercenary captains I normally wind up with.~ [FWKLSYB0] #75269 */
  IF ~~ THEN REPLY @872 /* ~We aim to please, Kelsey. You've been a valuable asset.~ #75704 */ DO ~SetGlobal("J#KelseyGoodRepTalk","LOCALS",1)~ GOTO 535
  IF ~~ THEN REPLY @873 /* ~Try not to break your arm patting yourself on the back, boy.~ #75705 */ DO ~SetGlobal("J#KelseyGoodRepTalk","LOCALS",1)~ GOTO 536
  IF ~~ THEN REPLY @874 /* ~I don't mind helping people in need, but there's a bigger picture to stay focused on, here.~ #75706 */ DO ~SetGlobal("J#KelseyGoodRepTalk","LOCALS",1)~ GOTO 537
  IF ~~ THEN REPLY @875 /* ~I'll thank you to be included quietly.~ #75707 */ DO ~SetGlobal("J#KelseyGoodRepTalk","LOCALS",1)~ GOTO 538
END

IF ~~ THEN BEGIN 535 // from: 534.0
  SAY @876 /* ~I'm glad to hear you say that. It's nice to be appreciated, rather than chided for not knowing this or that obscure spell, or not being able to swing an axe, or not having the agility to set 85 traps while suspended from a wire by my pinky toe.~ #75270 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 536 // from: 534.1
  SAY @877 /* ~I wasn't trying to take credit for it, I was trying to complement...never mind.~ #75271 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 537 // from: 534.2
  SAY @878 /* ~Of course, you call the tune, I'm just saying that I think it's been a good one. If there's one thing my father taught me, it's that a happy employee is a productive employee, so I hope you agree that I'm both.~ #75272 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 538 // from: 534.3
  SAY @879 /* ~Sorry, boss.~ #75273 */
  IF ~~ THEN EXIT
END


IF ~Global("J#BKelsey9","LOCALS",0)
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)~ THEN BEGIN 568 // from:
  SAY @933 /* ~Forgive me for prying, Cernd, but you're a lycanthrope...a werewolf...by choice?~ [FWKLSY96] #75303 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey9","LOCALS",1)~ EXTERN ~BCERND~ BCERND_100
END

CHAIN2 BCERND BCERND_100
@1270 == @934 == @1271 = @1272 == @935 == @1273 == @936 == @1274 == @937 = @938
END BCERND BCERND_105

APPENDI BCERND
IF ~~ THEN BEGIN BCERND_105
SAY @1275
IF ~~ THEN EXIT
END
END



IF ~Global("J#BKelsey10","LOCALS",0)
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)~ THEN BEGIN 574 // from:
  SAY @939 /* ~Viconia, is there any reason you've been staring at me for the past fifteen minutes?~ [FWKLSY97] #75309 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey10","LOCALS",1)~ EXTERN ~BVICONI~ BVICONI_576
END

CHAIN2 BVICONI BVICONI_576
@1276 = @1277 == @940 == @1278 = @1279 == @941 == @1280 = @1281 = @1282 == @942
END BVICONI BVICONI_583

APPENDI BVICONI
IF ~~ THEN BEGIN BVICONI_583
SAY @1400
IF ~~ THEN EXIT
END
END

IF ~Global("J#BKelsey11","LOCALS",0)
Dead("SHADEL")
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)~ THEN BEGIN 578 // from:
  SAY @943 /* ~Fair halfling, I cannot tell you how happy it makes me to see you sharpen your sword.~ [FWKLSY99] #75313 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey11","LOCALS",1)~ EXTERN ~BMAZZY~ BMAZZY_127
END

CHAIN2 BMAZZY BMAZZY_127
@1283 == @944 == @1284 = @1285 == @945 == @1286 = @1287 = @1288 == @946
END BMAZZY BMAZZY_133

APPENDI BMAZZY
IF ~~ THEN BEGIN BMAZZY_133
SAY @1289
IF ~~ THEN EXIT
END
END

IF ~Global("J#BKelsey12","LOCALS",0)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)~ THEN BEGIN 582 // from:
  SAY @947 /* ~Hey, Edwin, next time you work out a great plan to take over the world, you might want to make sure you don't give it all away while you're asleep.~ [FWKLSYA0] #75317 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey12","LOCALS",1)~ EXTERN ~BEDWIN~ BEDWIN_107
END

CHAIN2 BEDWIN BEDWIN_107
@1290 == @948 == @1291 == @949 == @1292
END BJ#KLSY KelseyEdwinExit1

IF ~~ THEN BEGIN KelseyEdwinExit1
SAY @950
IF ~~ THEN EXIT
END


IF ~Global("J#BKelsey13","LOCALS",0)
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)~ THEN BEGIN 586 // from:
  SAY @951 /* ~So, Jaheira, you've been in this group a long time, right?~ [FWKLSYA4] #75321 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey13","LOCALS",1)~ EXTERN ~BJAHEIR~ BJAHEIR_463
END

CHAIN2 BJAHEIR BJAHEIR_463
@1293 == @952 == @1294
END BJ#KLSY 588

IF ~~ THEN BEGIN 588 // from:
  SAY @953 /* ~Of course not. But surely there's some thread of truth in there, and whatever it is, it was a very difficult time for <PRO_HIMHER>. I imagine it was very valuable to have an experienced friend at hand amidst all the chaos and soul-searching losing your father and avenging his death would involve.~ #75323 */
  IF ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~BJAHEIR~ BJAHEIR_465
  IF ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)~ THEN EXTERN ~BJAHEIR~ BJAHEIR_466
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_465
SAY @1295
IF ~~ THEN EXTERN BJ#KLSY 589
END
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_466
SAY @1296
IF ~~ THEN EXTERN BJ#KLSY 589
END
END

IF ~~ THEN BEGIN 589 // from:
  SAY @954 /* ~I suppose I'm just a little envious. When I started manifesting my magic, all I had on hand to guide me was a widowed, distracted mother, an opportunistic uncle, and a brother too young to understand or be of much help.~ #75324 */
  IF ~~ THEN EXTERN ~BJAHEIR~ BJAHEIR_467
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_467
SAY @1297
IF ~~ THEN EXTERN BJ#KLSY 590
END
END

IF ~~ THEN BEGIN 590 // from:
  SAY @955 /* ~Ah, but a little help never hurts.~ #75325 */
  IF ~~ THEN GOTO 591
END

IF ~~ THEN BEGIN 591 // from: 590.0
  SAY @956 /* ~Attention, everyone! I propose that from this day forth, all young men and women coming of age in a confusing, hostile environment should be issued elven warrior priestesses, to serve as field general, wilderness guide, and outspoken advisor.~ #75326 */
  IF ~~ THEN REPLY @957 /* ~Hear hear!~ #75732 */ EXTERN ~BJAHEIR~ BJAHEIR_468
  IF ~~ THEN REPLY @958 /* ~I certainly could have done a lot worse than sticking by Jaheira, and I suggest you do the same.~ #75733 */ EXTERN ~BJAHEIR~ BJAHEIR_468
  IF ~~ THEN REPLY @959 /* ~You left out "nosy interloper" and "resident grouch." You're welcome to this one.~ #75734 */ EXTERN ~BJAHEIR~ BJAHEIR_470
  IF ~~ THEN REPLY @960 /* ~Be careful what you wish for, Kelsey. They're damnably hard to get refunds for once they've outlived their usefulness.~ #75735 */ EXTERN ~BJAHEIR~ BJAHEIR_470
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_468
SAY @1298
IF ~~ THEN EXTERN BJAHEIR BJAHEIR_469
END
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_470
SAY @1299
IF ~~ THEN EXTERN BJAHEIR BJAHEIR_469
END
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_469
SAY @1300 = @1301
IF ~~ THEN EXTERN BJ#KLSY 592
END
END

IF ~~ THEN BEGIN 592 // from:
  SAY @961 /* ~Yes, mistress.~ #75327 */
  IF ~~ THEN EXIT
END

IF ~Global("J#BKelsey13","LOCALS",1)
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)~ THEN BEGIN 593 // from:
  SAY @962 /* ~Have you ever considered having a child, Jaheira?~ [FWKLSYA5] #75328 */
  IF ~~ THEN DO ~SetGlobal("J#BKelsey13","LOCALS",2)~ EXTERN ~BJAHEIR~ BJAHEIR_471
END

CHAIN2 BJAHEIR BJAHEIR_471
@1302 == @963 == @1303 == @964 == @1304 = @1305 == @965 == @1306 == @966 = @967 == @1307
END BJ#KLSY 599

IF ~~ THEN BEGIN 599 // from:
  SAY @968 /* ~Look, I'm sorry I brought it up at all. It was supposed to be a compliment.~ #75334 */
  IF ~~ THEN EXIT
END


APPENDI BVICONI
IF ~See("J#Kelsey")
InParty("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("J#BViconia13","LOCALS",0)~ THEN BEGIN KelseyBVICONI1
SAY @1308
  IF ~~ THEN DO ~SetGlobal("J#BViconia13","LOCALS",1)~ EXTERN BJ#KLSY 600
END
END

IF ~~ THEN BEGIN 600
SAY @969
IF ~~ THEN EXTERN BVICONI BVKEL1
END

CHAIN2 BVICONI BVKEL1
@1309 == @970 = @971 == @1310 = @1311 == @972 == @1312 == @973 = @974
END BVICONI BVICONI_589

APPENDI BVICONI
IF ~~ THEN BEGIN BVICONI_589
SAY @1313
IF ~~ THEN EXIT
END
END

APPENDI BJAN
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("BJan9","LOCALS",0)~ THEN BEGIN JanKelsey2
SAY @1314
  IF ~~ THEN DO ~SetGlobal("BJan9","LOCALS",1)~ EXTERN ~BJ#KLSY~ 606
END
END

IF ~~ THEN BEGIN 606
SAY @975
IF ~~ THEN EXTERN BJAN BJANKELCHAIN1
END

CHAIN2 BJAN BJANKELCHAIN1
@1315 == @976 == @1316 == @977 == @1317 = @1318 = @1319 = @1320 == @978 == @1321 == @979
END BJAN BJAN_133

APPENDI BJAN
IF ~~ THEN BEGIN BJAN_133
SAY @1322
IF ~~ THEN EXIT
END
END

IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("J#BKelseyHaerdalis","LOCALS",0)~ THEN BEGIN 611 // from:
  SAY @980 /* ~Haer'Dalis...you are gaping in my direction. Is our bard tongue tied?~ [FWKLSYA7] #75346 */
  IF ~~ THEN DO ~SetGlobal("J#BKelseyHaerdalis","LOCALS",1)~ EXTERN ~BHAERDA~ BHAERDA_166
END

CHAIN2 BHAERDA BHAERDA_166
@1323 == @981 == @1324 == @982 == @1325 == @983 == @1326 == @984
END BHAERDA BHAERDA_170

APPENDI BHAERDA
IF ~~ THEN BEGIN BHAERDA_170
SAY @1327
IF ~~ THEN EXIT
END
END

APPENDI BEDWIN
IF ~!StateCheck("J#Kelsey",STATE_SLEEPING)
See("J#Kelsey")
Gender("Edwin",MALE)
Global("J#BEdwin20","LOCALS",0)
InParty("J#Kelsey")~ THEN BEGIN 110 // from:
SAY @1328
IF ~~ THEN DO ~SetGlobal("J#BEdwin20","LOCALS",1)~ EXTERN ~BJ#KLSY~ 616
END
END

IF ~~ THEN BEGIN 616
SAY @985
IF ~~ THEN EXTERN BEDWIN BEDWINKELCHAIN1
END

CHAIN2 BEDWIN BEDWINKELCHAIN1
@1329 == @986 = @987
END BEDWIN BEDWIN_112

APPENDI BEDWIN
IF ~~ THEN BEGIN BEDWIN_112
SAY @1330
IF ~~ THEN EXIT
END
END


APPENDI BKORGAN
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("BKorgan26","LOCALS",0)~ THEN BEGIN KelseyKorgan2_1
SAY @1331
  IF ~~ THEN DO ~SetGlobal("BKorgan26","LOCALS",1)~ EXTERN ~BJ#KLSY~ 619
END
END

IF ~~ THEN BEGIN 619 // from:
  SAY @988
  IF ~~ THEN EXTERN ~BKORGAN~ BKORGAN_141
END

APPENDI BKORGAN
IF ~~ THEN BEGIN BKORGAN_141
SAY @1332 = @1333
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~BJAHEIR~ BJAHEIR_477
  IF ~!IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~BJ#KLSY~ 620
END
END

APPENDI BJAHEIR
IF ~~ THEN BEGIN BJAHEIR_477
SAY @1334
IF ~~ THEN EXTERN BJ#KLSY 620
END
END

IF ~~ THEN BEGIN 620 // from:
  SAY @989
  IF ~~ THEN EXTERN ~BKORGAN~ BKORGAN_143
END

CHAIN2 BKORGAN BKORGAN_143
@1335 == @990 == @1336 == @991
END BKORGAN BKORGAN_145

APPENDI BKORGAN
IF ~~ THEN BEGIN BKORGAN_145
SAY @1337
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~BKELDOR~ BKELDOR_157
  IF ~!IsValidForPartyDialog("Keldorn")~ THEN EXIT
END
END

APPENDI BKELDOR
IF ~~ THEN BEGIN BKELDOR_157
SAY @1338
IF ~~ THEN EXIT
END
END



// IMOEN SHOULD GO IN BIMOEN2, NOT BIMOEN.

IF ~Global("J#ImoenKelsey","LOCALS",0)
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN BEGIN BIMOEN2_0
  SAY @1390
  IF ~~ THEN DO ~SetGlobal("J#ImoenKelsey","LOCALS",1)~ EXTERN IMOEN2J BIMOEN2_1
END

CHAIN2 IMOEN2J BIMOEN2_1
@1339 == @992 == @1340 == @993 == @1341 == @994 == @1342 == @995 == @1343 = @1344 = @1345 == @996 == @1346 == @997 == @1347 = @1348 == @998
== @1349 == @999
END IMOEN2J BIMOEN2_11

APPENDI IMOEN2J
IF ~~ THEN BEGIN BIMOEN2_11
SAY @1350
IF ~~ THEN EXIT
END
END


APPENDI BMINSC
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("BMinsc13","LOCALS",0)~ THEN BEGIN BMINSC_104 // from:
  SAY @1351
  IF ~~ THEN DO ~SetGlobal("BMinsc13","LOCALS",1)~ EXTERN ~BJ#KLSY~ 631
END
END

IF ~~ THEN BEGIN 631 // from:
  SAY @1000 /* ~I already told, uh, the both of you that I don't know any good recipes for crackers. You'll just have to buy more at the next tavern and try not to roll on them in your sleep this time.~ [FWKLSY89] #75366 */
  IF ~~ THEN EXTERN ~BMINSC~ BMINSC_105
END

CHAIN2 BMINSC BMINSC_105
@1352 == @1001 == @1353 = @1354 == @1002 = @1003 == @1355 == @1004 == @1356 == @1005 == @1357
END BJ#KLSY 637

IF ~~ THEN BEGIN 637 // from:
  SAY @1006 /* ~That's a relief.~ #75372 */
  IF ~~ THEN EXIT
END

IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("J#BKelseyImoen","LOCALS",0)
!Dead("C6Bodhi")~ THEN BEGIN 638 // from:
  SAY @1007 /* ~Imoen, are you okay?~ [FWKLSYF5] #75373 */
  IF ~~ THEN DO ~SetGlobal("J#BKelseyImoen","LOCALS",1)~ EXTERN IMOEN2J BIMOEN2_12
END

CHAIN2 IMOEN2J BIMOEN2_12
@1358 == @1008 == @1359
END IMOEN2J BIMOEN2_14

APPENDI IMOEN2J
IF ~~ THEN BEGIN BIMOEN2_14
SAY @1360
IF ~~ THEN EXIT
END
END


APPENDI BJAN
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("BJan9","LOCALS",1)~ THEN BEGIN BJAN_134
  SAY @1361
  IF ~~ THEN DO ~SetGlobal("BJan9","LOCALS",2)~ EXTERN ~BJ#KLSY~ 644
END
END

IF ~~ THEN BEGIN 644 // from:
  SAY @1013 /* ~It's "Kelsey", Jan, but...sure.~ #75376 */
  IF ~~ THEN EXTERN ~BJAN~ BJAN_135
END

CHAIN2 BJAN BJAN_135
@1362 == @1014 == @1363 = @1364 == @1015
END BJAN BJAN_138

APPENDI BJAN
IF ~~ THEN BEGIN BJAN_138
SAY @1365
  IF ~~ THEN DO ~GiveItemCreate("J#helm01","J#Kelsey",50,0,0)~ EXTERN ~BJ#KLSY~ 647
END
END

IF ~~ THEN BEGIN 647 // from:
  SAY @1016 /* ~I don't know what to say...except that getting a gift from you is both flattering and frightening at the same time.~ #75379 */
  IF ~~ THEN EXTERN ~BJAN~ BJAN_139
END

APPENDI BJAN
IF ~~ THEN BEGIN BJAN_139
SAY @1366
IF ~~ THEN EXIT
END
END



IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,18)
Global("J#KelseyGoodRepTalk2","LOCALS",0)~ THEN BEGIN 648 // from:
  SAY @1017 /* ~I just wanted to say, I'm impressed at how far you are willing to go out of your way to help people.~ [FWKLSYB2] #75380 */
  IF ~~ THEN GOTO 649
END

IF ~~ THEN BEGIN 649 // from: 648.0
  SAY @1018 /* ~You are proving yourself heroic in the best sense of the word, and I think anyone would be honored to work for you.~ #75381 */
  IF ~~ THEN DO ~SetGlobal("J#KelseyGoodRepTalk2","LOCALS",1)~ EXIT
END

APPENDI BYOSHIM
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("FWKelseyYoshimo2","LOCALS",0)~ THEN BEGIN KelseyYoshimo2_1
  SAY @1401
  IF ~~ THEN DO ~SetGlobal("FWKelseyYoshimo2","LOCALS",1)~ EXTERN BJ#KLSY KelseyYoshimo2_2
END
END

IF ~~ THEN BEGIN KelseyYoshimo2_2
SAY @1402
IF ~~ THEN EXTERN BYOSHIM KelseyYoshimo2_3
END

CHAIN2 BYOSHIM KelseyYoshimo2_3
@1403 == @1404 == @1405 == @1406 == @1407 == @1408 == @1409
END BJ#KLSY KelseyYoshimo2_4

IF ~~ THEN BEGIN KelseyYoshimo2_4
SAY @1410
IF ~~ THEN EXIT
END


IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("FWKelseyMazzy2","LOCALS",0)~ THEN BEGIN KelseyMazzy2_1
  SAY @1411
  IF ~~ THEN DO ~SetGlobal("FWKelseyMazzy2","LOCALS",1)~ EXTERN BMAZZY KelseyMazzy2_2
END

CHAIN2 BMAZZY KelseyMazzy2_2
@1412 == @1413 = @1414 == @1415 == @1416 == @1417 = @1418 = @1419 == @1420 == @1421 = @1422 == @1423 == @1424
END BJ#KLSY KelseyMazzy2_3

IF ~~ THEN BEGIN KelseyMazzy2_3
SAY @1425
IF ~~ THEN EXIT
END

CHAIN BVALYGA dockschain
@3445
== BJ#KLSY @3446
== BVALYGA @3447
== BJ#KLSY @3448
== BVALYGA @3449
== BJ#KLSY @3450
== BVALYGA @3451
== BJ#KLSY @3452
== BVALYGA @3453
== BJ#KLSY @3454
== BVALYGA @3455
== BJ#KLSY @3456
== BVALYGA @3457
== BJ#KLSY @3458 = @3459 = @3460
== BVALYGA @3461
EXIT


// new to SOA 2 romance conflict--setup

EXTEND_BOTTOM BANOMEN 285
IF ~Global("J#KelseyRomanceActive","GLOBAL",1)
IfValidForPartyDialogue("J#Kelsey")~ EXTERN BJ#KLSY ano24_1
END

CHAIN BJ#KLSY ano24_1
@3540
== BANOMEN @3541
== BJ#KLSY @3542
== BANOMEN @3543
== BJ#KLSY @3544
== BANOMEN @3545
END
IF ~Global("FWStartedKAConflictTimer","GLOBAL",0)~ DO ~RealSetGlobalTimer("J#AnomenChallengesKelsey","GLOBAL",2000) SetGlobal("FWStartedKAConflictTimer","GLOBAL",1)~ EXTERN BANOMEN ano24_x
IF ~Global("FWStartedKAConflictTimer","GLOBAL",1)~ EXTERN BANOMEN ano24_x

CHAIN BANOMEN klt18conf
@3547
== BJ#KLSY @3548
== BANOMEN @3549
== BJ#KLSY @3550
== BANOMEN @3551
== BJ#KLSY @3552
== BANOMEN @3553
== BJ#KLSY @3554 = @3555
END
  IF ~~ THEN REPLY @318 /* ~It's all right. I can tell when someone is truly angry and when someone is just letting off steam.~ #75489 */ EXTERN BJ#KLSY 204
  IF ~~ THEN REPLY @319 /* ~You're right, you were inconsiderate. Just what is it you expect from me?~ #75490 */ EXTERN BJ#KLSY 219
  IF ~~ THEN REPLY @320 /* ~Forget it, brother. Tell it to someone else.~ #75491 */ EXTERN BJ#KLSY 220

CHAIN BANOMEN klt26conf
@3556
== BJ#KLSY @3557
== BANOMEN @3558
== BJ#KLSY @3559
== BANOMEN @3560
== BJ#KLSY @3561
== BANOMEN @3562
END
IF ~Global("FWStartedKAConflictTimer","GLOBAL",0)~ DO ~RealSetGlobalTimer("J#AnomenChallengesKelsey","GLOBAL",2000) SetGlobal("FWStartedKAConflictTimer","GLOBAL",1)~ EXTERN BJ#KLSY lt26cont
IF ~Global("FWStartedKAConflictTimer","GLOBAL",1)~ EXTERN BJ#KLSY lt26cont


APPEND BANOMEN
IF ~~ ano24_x
SAY @3546
  IF ~~ THEN REPLY #35491 /* ~Very well, Anomen.  I suppose I can understand your situation.~ */ GOTO 286
  IF ~~ THEN REPLY #35492 /* ~Of course...it is no trouble.~ */ GOTO 286
  IF ~~ THEN REPLY #35493 /* ~Forget it, Anomen.  I've received enough abuse from you...and more than enough apologies.~ */ GOTO 289
  IF ~~ THEN REPLY #35494 /* ~Fine, fine...but let's get moving.  We haven't time for chit-chat right now.~ */ GOTO 292
END
END

