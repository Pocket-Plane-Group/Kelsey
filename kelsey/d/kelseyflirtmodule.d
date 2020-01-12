CHAIN J#KLSYJ leftpanting
@3224 = @3225 = @3226
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN @3227
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @3228
== BKORGAN IF ~IsValidForPartyDialog("Korgan")~ THEN @3229
== BCERND IF ~IsValidForPartyDialog("Cernd")~ THEN @3230
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN @3231
== IMOEN2J IF ~IsValidForPartyDialog("Imoen2")~ THEN @3232
== J#KLSYJ @3233
EXIT

APPEND J#KLSYJ

/* Atop J#Klsy.bcs, FWKelseyStartFlirtSOA is the flirt trigger. */

// Import the Kelsey morning after from TOB. There's only so many of these things I can write!

IF ~Global("FWKelseySOAMornAfter","LOCALS",3)~ TOBmornafter
SAY @6145 = @6146
++ @6147 DO ~SetGlobal("FWKelseySOAMornAfter","LOCALS",4)~ + maeverythingexpected
++ @6148 DO ~SetGlobal("FWKelseySOAMornAfter","LOCALS",4)~ + mamoreromantic
++ @6149 DO ~SetGlobal("FWKelseySOAMornAfter","LOCALS",4)~ + mawaswonderful
++ @6150 DO ~SetGlobal("FWKelseySOAMornAfter","LOCALS",4)~ + matreasure
END

IF ~~ maeverythingexpected
SAY @6151
IF ~~ GOTO maafterpart2
END

IF ~~ mamoreromantic
SAY @6152
IF ~~ GOTO maafterpart2
END

IF ~~ mawaswonderful
SAY @6153
IF ~~ GOTO maafterpart2
END

IF ~~ matreasure
SAY @6154
IF ~~ GOTO maafterpart2
END

IF ~~ maafterpart2
SAY @6155
++ @6156 + magiveithere
++ @6157 + maasgood
++ @6158 + masetthepace
++ @6159 + matimelyefficiency
++ @6160 + mashowyoutheplace
END

IF ~~ magiveithere
SAY @6161
IF ~~ EXIT
END

IF ~~ maasgood
SAY @6162 = @6163 = @6164
IF ~~ EXIT
END

IF ~~ masetthepace
SAY @6165
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ matimelyefficiency
SAY @6166 = @6167
IF ~~ EXIT
END

IF ~~ mashowyoutheplace
SAY @6168
IF ~~ EXIT
END




// early-stage initiated flirts

IF
~Global("FWDisableFlirts","GLOBAL",0)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",1)
!Global("J#LOVETALK","LOCALS",17)
GlobalGT("J#LOVETALK","LOCALS",6)
Global("FWKelseyStartFlirtSOA","GLOBAL",1)~
THEN BEGIN kelseyinitflirtbase
SAY @3164
 IF ~~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO shootsmile
 IF ~RandomNum(15,1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO friendlykiss
 IF ~RandomNum(15,2)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO playamulet
 IF ~RandomNum(15,3)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO shootsmile
 IF ~RandomNum(15,4)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO tellmeneed
 IF ~RandomNum(15,5)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO yourbehind

IF ~RandomNum(15,6) ReputationGT(Player1,10)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO rephigh1
IF ~RandomNum(15,6) ReputationLT(Player1,11)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO replow1

 IF ~RandomNum(15,7)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO tracecircles
 IF ~RandomNum(15,8)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO hairquitenice

 IF ~RandomNum(15,9) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO meetsomeone
 IF ~RandomNum(15,9) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO dryaddream

 IF ~RandomNum(15,10)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO yawn
 IF ~RandomNum(15,11)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO nevermind1

 IF ~RandomNum(15,12) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO woundflirt

 IF ~RandomNum(15,13)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO dayornight
 IF ~RandomNum(15,14)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO scribblebook

 IF ~RandomNum(15,15)
OR(2)
AreaType(OUTDOOR)
AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO gothisway

 IF ~GlobalGT("J#LoveTalk","LOCALS",24) Global("FWDidDryadFlirt","GLOBAL",0) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidDryadFlirt","GLOBAL",1)~ GOTO dryaddream

 IF ~GlobalGT("J#LoveTalk","LOCALS",26) Global("FWDidFirstHoneyFlirt","GLOBAL",0)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidFirstHoneyFlirt","GLOBAL",1)~ GOTO 1sthoneyflirt

 IF ~G("Chapter",%bg2_chapter_6%) G("FWDidKelseyOutUnderdark",0) G("FWKelseyWasInUD",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SG("FWDidKelseyOutUnderdark",1)~ GOTO outunderdark


END


// late-stage initiated flirts


IF
~Global("FWDisableFlirts","GLOBAL",0)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",2)
Global("FWKelseyStartFlirtSOA","GLOBAL",1)~
THEN BEGIN kelseyinitflirtbase
SAY @3203

 IF ~~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO howdark
 IF ~RandomNum(18,1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO safewithout
 IF ~RandomNum(18,2)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO nothingepic
 IF ~RandomNum(18,3)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO howdark
 IF ~RandomNum(18,4)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO journalagain
 IF ~RandomNum(18,5)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO leftpanting
 IF ~RandomNum(18,6)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO reassuring
 IF ~RandomNum(18,7)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO cutapple

 IF ~RandomNum(18,8)
CheckStatGT(Player1,12,STR)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO biggerhands
 IF ~RandomNum(18,8)
OR(2)
Race(Player1,HALFLING)
CheckStatLT(Player1,13,STR)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO smallerhands

 IF ~RandomNum(18,9)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO pullsarm
 IF ~RandomNum(18,10)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO sidlesbehind
 IF ~RandomNum(18,11)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO notcourtly

 IF ~RandomNum(18,12)
GlobalGT("J#KelseyVampire","GLOBAL",4)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO leaveforbodhi

 IF ~RandomNum(18,13)
Global("J#KelseyNookie","GLOBAL",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO pelvisthigh

 IF ~RandomNum(18,14)
GlobalGT("J#Lovetalk","LOCALS",42)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO anyman

 IF ~RandomNum(18,15)
!GlobalGT("J#Lovetalk","LOCALS",42)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO howdark
 IF ~RandomNum(18,15)
GlobalGT("J#Lovetalk","LOCALS",42)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO lovenote

 IF ~RandomNum(18,16)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO yourbehind
 IF ~RandomNum(18,17) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO dryaddream
 IF ~RandomNum(18,18)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO dayornight

 IF ~GlobalGT("J#LoveTalk","LOCALS",48)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1)~ GOTO hsr

IF ~GlobalGT("J#LoveTalk","LOCALS",44) Global("FWDidSingingFlirt","GLOBAL",0)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidSingingFlirt","GLOBAL",1)~ GOTO singritual
IF ~GlobalGT("J#LoveTalk","LOCALS",48) Global("FWDidSecondHoneyFlirt","GLOBAL",0)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidSecondHoneyFlirt","GLOBAL",1)~ GOTO 2ndhoneyflirt
IF ~Global("FWDidDryadFlirt","GLOBAL",0) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SetGlobal("FWDidDryadFlirt","GLOBAL",1)~ GOTO dryaddream

 IF ~G("Chapter",%bg2_chapter_6%) G("FWDidKelseyOutUnderdark",0) G("FWKelseyWasInUD",1)~ THEN DO ~IncrementGlobal("FWKelseyRandFlirt","LOCALS",1) SG("FWDidKelseyOutUnderdark",1)~ GOTO outunderdark

END

IF ~~ outunderdark
SAY @3387 = @3388
IF ~~ EXIT
END

IF ~~ THEN BEGIN hsr
SAY @3261
IF ~~ THEN REPLY @3262 GOTO hsr_1_2
IF ~~ THEN REPLY @3263 GOTO hsr_1_3
END

IF ~~ THEN BEGIN hsr_1_2
SAY @3264
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hsr_1_3
SAY @3265 = @3266 = @3267 = @3268 = @3269 = @3270 = @3271 = @3272
= @3273 = @3274 = @3275 = @3276 = @3277
IF ~~ THEN REPLY @3278 GOTO hsr_2
IF ~~ THEN REPLY @3279 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1)~ GOTO hsr_3
IF ~~ THEN REPLY @3280 GOTO hsr_4
END

IF ~~ THEN BEGIN hsr_2
SAY @3281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hsr_3
SAY @3282
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN hsr_4
SAY @3283
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN lovenote
SAY @3258 = @3259 = @3260
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN anyman
SAY @3257
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pelvisthigh
SAY @3256
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN leaveforbodhi
SAY @3255
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN notcourtly
SAY @3254
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidlesbehind
SAY @3253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullsarm
SAY @3251 = @3252
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN biggerhands
SAY @3248 = @3250
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smallerhands
SAY @3249 = @3250
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


IF ~~ THEN BEGIN 2ndhoneyflirt
SAY @3212
IF ~~ THEN REPLY @3213 GOTO 2ndhoneyflirt_2
IF ~~ THEN REPLY @3215 GOTO 2ndhoneyflirt_3
IF ~~ THEN REPLY @3216 GOTO 2ndhoneyflirt_4
END

IF ~~ THEN BEGIN 2ndhoneyflirt_3
SAY @3217
IF ~~ THEN GOTO 2ndhoneyflirt_5
END

IF ~~ THEN BEGIN 2ndhoneyflirt_4
SAY @3218 = @3219
IF ~~ THEN REPLY @3220 GOTO 2ndhoneyflirt_3
IF ~~ THEN REPLY @3221 EXIT
END

IF ~~ THEN BEGIN 2ndhoneyflirt_5
SAY @3222 = @3223
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2ndhoneyflirt_2
SAY @3214
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN journalagain
SAY @3211
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN howdark
SAY @3210
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nothingepic
SAY @3209
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN singritual
SAY @3205 = @3206 = @3207 = @3208
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN safewithout
SAY @3204
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN gothisway
SAY @3201 = @3202
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 1sthoneyflirt
SAY @3186
IF ~~ THEN REPLY @3187 GOTO 1sthoneyflirt_2
IF ~~ THEN REPLY @3188 GOTO 1sthoneyflirt_3
IF ~~ THEN REPLY @3189 GOTO 1sthoneyflirt_4
END

IF ~~ THEN BEGIN 1sthoneyflirt_2
SAY @3190
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1sthoneyflirt_3
SAY @3191
IF ~~ THEN GOTO 1sthoneyflirt_5
END

IF ~~ THEN BEGIN 1sthoneyflirt_4
SAY @3192
IF ~~ THEN GOTO 1sthoneyflirt_5
END

IF ~~ THEN BEGIN 1sthoneyflirt_5
SAY @3193 = @3194
IF ~~ THEN REPLY @3195 GOTO 1sthoneyflirt_6
IF ~~ THEN REPLY @3196 GOTO 1sthoneyflirt_7
IF ~~ THEN REPLY @3197 GOTO 1sthoneyflirt_8
END

IF ~~ THEN BEGIN 1sthoneyflirt_6
SAY @3198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1sthoneyflirt_7
SAY @3199
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1sthoneyflirt_8
SAY @3200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN scribblebook
SAY @3184 = @3185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN dayornight
SAY @3183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN woundflirt
SAY @3182
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nevermind1
SAY @3180 = @3181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yawn
SAY @3178 = @3179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN meetsomeone
SAY @3176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN dryaddream
SAY @3177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hairquitenice
SAY @3173 = @3174 = @3175
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracecircles
SAY @3172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rephigh1
SAY @3170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN replow1
SAY @3171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yourbehind
SAY @3169
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tellmeneed
SAY @3168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN shootsmile
SAY @3167
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN playamulet
SAY @3166
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN friendlykiss
SAY @3165
IF ~~ THEN EXIT
END

IF
~IsGabber(Player1)
CombatCounter(0)
Global("FWDisableFlirts","GLOBAL",0)
Global("J#KelseyRomanceActive","GLOBAL",1)
!Global("J#LOVETALK","LOCALS",17)
GlobalGT("J#LOVETALK","LOCALS",6)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FWFLIRTBASE1
SAY @1950  =
@1951
 IF ~RandomNum(4,1)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS1
 IF ~RandomNum(4,1)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS1
 IF ~RandomNum(4,2)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS2
 IF ~RandomNum(4,3)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS3
 IF ~RandomNum(4,4)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS4
 IF ~RandomNum(4,2)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS2
 IF ~RandomNum(4,3)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS3
 IF ~RandomNum(4,4)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS4
 IF ~RandomNum(4,1)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR1
 IF ~RandomNum(4,2)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR2
 IF ~RandomNum(4,3)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR3
 IF ~RandomNum(4,4)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR3
 IF ~RandomNum(4,1)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE1
 IF ~RandomNum(4,2)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE2
 IF ~RandomNum(4,3)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE3
 IF ~RandomNum(4,4)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE3
 IF ~RandomNum(4,1)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG1
 IF ~RandomNum(4,2)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG2
 IF ~RandomNum(4,3)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG3
 IF ~RandomNum(4,4)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG4
 IF ~RandomNum(4,1)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME1
 IF ~RandomNum(4,2)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME2
 IF ~RandomNum(4,3)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME3
 IF ~RandomNum(4,4)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME1
 IF ~RandomNum(4,1)~ THEN REPLY @1958 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYSWEET1
 IF ~RandomNum(4,2)~ THEN REPLY @1958 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYSWEET2
 IF ~RandomNum(4,3)~ THEN REPLY @1958 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYSWEET3
 IF ~RandomNum(4,4)~ THEN REPLY @1958 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYSWEET4
 IF ~RandomNum(4,1)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface1
 IF ~RandomNum(4,2)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface2
 IF ~RandomNum(4,3)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface3
 IF ~RandomNum(4,4)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface3
 IF ~RandomNum(4,1)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile1
 IF ~RandomNum(4,2)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile1
 IF ~RandomNum(4,3)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile2
 IF ~RandomNum(4,4)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile3
 IF ~RandomNum(4,1)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair1
 IF ~RandomNum(4,2)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair1
 IF ~RandomNum(4,3)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair2
 IF ~RandomNum(4,4)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair3
 IF ~RandomNum(4,1)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump1
 IF ~RandomNum(4,2)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump2
 IF ~RandomNum(4,3)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump3
 IF ~RandomNum(4,4)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump4
 IF ~RandomNum(4,1)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear1
 IF ~RandomNum(4,2)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear2
 IF ~RandomNum(4,3)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear4
 IF ~RandomNum(4,4)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear3
 IF ~RandomNum(4,1)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage1
 IF ~RandomNum(4,2)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage1
 IF ~RandomNum(4,3)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage2
 IF ~RandomNum(4,4)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage3
 IF ~RandomNum(4,1)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow1
 IF ~RandomNum(4,2)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow1
 IF ~RandomNum(4,3)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow2
 IF ~RandomNum(4,4)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow3
 IF ~RandomNum(4,1)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy1
 IF ~RandomNum(4,2)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy2
 IF ~RandomNum(4,3)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy2
 IF ~RandomNum(4,4)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy3
 IF ~RandomNum(4,1)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle1
 IF ~RandomNum(4,2)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle2
 IF ~RandomNum(4,3)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle3
 IF ~RandomNum(4,4)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle4
 IF ~~ THEN REPLY @3103 DO ~SetGlobal("FWDisableFlirts","GLOBAL",1)~ EXIT

 IF ~~ THEN REPLY @1959 EXIT
END

IF ~~ THEN BEGIN whistle1
SAY @3098
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN whistle2
SAY @3099
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN whistle3
SAY @3100
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN whistle4
SAY @3101 = @3102
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yummy1
SAY @3094
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yummy2
SAY @3095
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yummy3
SAY @3096
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN elbow1
SAY @3090
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN elbow2
SAY @3091
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN elbow3
SAY @3092
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage1
SAY @3085
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage2
SAY @3086 = @3087
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cleavage3
SAY @3088
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN blowear1
SAY @3070
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear2
SAY @3071
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear3
SAY @3072 = @3073 = @3074
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


IF ~~ THEN BEGIN bump1
SAY @3062 = @3063
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bump2
SAY @3064 = @3065
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bump3
SAY @3066 = @3067
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bump4
SAY @3068
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playhair1
SAY @3052 = @3053 = @3054
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playhair2
SAY @3055 = @3056 = @3057
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playhair3
SAY @3058 = @3059 = @3060
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1
SAY @3048
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile2
SAY @3049
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile3
SAY @3050
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

END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS1
SAY @1960
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS2
SAY @1961
IF ~~ THEN REPLY @1962 EXTERN J#KLSYJ KELSEYKISS2_1
IF ~~ THEN REPLY @1963 EXTERN J#KLSYJ KELSEYKISS2_3
IF ~~ THEN REPLY @1964 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",-2)~ EXTERN J#KLSYJ KELSEYKISS2_2
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS2_1
SAY @1965
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS2_2
SAY @1966
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS2_3
SAY @1967
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS3
SAY @1968
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYKISS4
SAY @1969
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS1
SAY @1970
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS2
SAY @1971
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS3
SAY @1972
IF ~~ THEN REPLY @1973 EXTERN J#KLSYJ KELSEYHANDS3_1
IF ~~ THEN REPLY @1974 EXTERN J#KLSYJ KELSEYHANDS3_2
IF ~~ THEN REPLY @1975 EXTERN J#KLSYJ KELSEYHANDS3_3
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS3_1
SAY @1976
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS3_2
SAY @1977
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS3_3
SAY @1978
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHANDS4
SAY @1979
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYREAR1
SAY @1980
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYREAR2
SAY @1981
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYREAR3
SAY @1982
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYTICKLE3
SAY @1983
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYTICKLE1
SAY @1984
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYTICKLE2
SAY @1985
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG1
SAY @1986 = @1987
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG2
SAY @1988 = @1989 =
@1990
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG3
SAY @1991
IF ~~ THEN REPLY @1992 EXTERN J#KLSYJ KELSEYHUG3_1
IF ~~ THEN REPLY @1993 EXTERN J#KLSYJ KELSEYHUG3_1
IF ~~ THEN REPLY @1994 EXTERN J#KLSYJ KELSEYHUG3_2
IF ~!Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @1995 EXTERN J#KLSYJ KELSEYHUG3_3
IF ~Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @1995 EXTERN J#KLSYJ KELSEYHUG3_4

END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG3_1
SAY @1996 =
@1997
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG3_2
SAY @1998
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG3_3
SAY @1999
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG3_4
SAY @2000
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYHUG4
SAY @2001
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSWEET1
SAY @2002
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSWEET2
SAY @2003
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSWEET3
SAY @2004  =
@2005
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSWEET4
SAY @2006 = @2007
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBME1
SAY @2008  = @2009
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBME2
SAY @2010  = @2011
IF ~~ THEN DO ~ApplySpell(Player1,WIZARD_LUCK)
ApplySpell("J#Kelsey",WIZARD_LUCK)~ EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBME3
SAY @2012  = @2013
IF ~~ THEN EXIT
END
END


APPEND J#KLSYJ

IF
~IsGabber(Player1)
CombatCounter(0)
Global("FWDisableFlirts","GLOBAL",0)
Global("J#KelseyRomanceActive","GLOBAL",2)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FWFLIRTBASE2
SAY @2014  =
@2015

 IF ~RandomNum(4,1)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @2016 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYEVENING1
 IF ~RandomNum(4,2)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @2016 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYEVENING2
 IF ~RandomNum(4,3)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @2016 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYEVENING3
 IF ~RandomNum(4,4)
Global("J#KelseyNookie","GLOBAL",1)~ THEN REPLY @2016 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYEVENING4

 IF ~Global("J#KelseyNookie","GLOBAL",2)~ THEN REPLY @2017 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYSLEEP1

 IF ~RandomNum(4,1)~ THEN REPLY @2018 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYDKISS1
 IF ~RandomNum(4,2)~ THEN REPLY @2018 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYDKISS2
 IF ~RandomNum(4,3)~ THEN REPLY @2018 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYDKISS3
 IF ~RandomNum(4,4)~ THEN REPLY @2018 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYDKISS4

 IF ~RandomNum(4,1)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS1
 IF ~RandomNum(4,2)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS2
 IF ~RandomNum(4,3)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS3
 IF ~RandomNum(4,4)~ THEN REPLY @1952 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYKISS4
 IF ~RandomNum(4,1)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS1
 IF ~RandomNum(4,2)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS2
 IF ~RandomNum(4,3)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS3
 IF ~RandomNum(4,4)~ THEN REPLY @1953 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHANDS4
 IF ~RandomNum(4,1)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR1
 IF ~RandomNum(4,2)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR2
 IF ~RandomNum(4,3)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR3
 IF ~RandomNum(4,4)~ THEN REPLY @1954 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYREAR3
 IF ~RandomNum(4,1)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE1
 IF ~RandomNum(4,2)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE2
 IF ~RandomNum(4,3)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE3
 IF ~RandomNum(4,4)~ THEN REPLY @1955 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYTICKLE3
 IF ~RandomNum(4,1)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG1
 IF ~RandomNum(4,2)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG2
 IF ~RandomNum(4,3)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG3
 IF ~RandomNum(4,4)~ THEN REPLY @1956 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYHUG4
 IF ~RandomNum(4,1)~ THEN REPLY @2019 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBHIM1
 IF ~RandomNum(4,2)~ THEN REPLY @2019 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBHIM2
 IF ~RandomNum(4,3)~ THEN REPLY @2019 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBHIM3
 IF ~RandomNum(4,4)~ THEN REPLY @2019 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBHIM4
 IF ~RandomNum(4,1)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME1
 IF ~RandomNum(4,2)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME2
 IF ~RandomNum(4,3)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME3
 IF ~RandomNum(4,4)~ THEN REPLY @1957 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYRUBME1
 IF ~RandomNum(4,1)~ THEN REPLY @2020 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYLOVE1
 IF ~RandomNum(4,2)~ THEN REPLY @2020 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYLOVE2
 IF ~RandomNum(4,3)~ THEN REPLY @2020 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYLOVE3
 IF ~RandomNum(4,4)~ THEN REPLY @2020 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ KELSEYLOVE4
 IF ~RandomNum(4,1)~ THEN REPLY @3104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ nibblefinger1
 IF ~RandomNum(4,2)~ THEN REPLY @3104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ nibblefinger2
 IF ~RandomNum(4,3)~ THEN REPLY @3104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ nibblefinger3
 IF ~RandomNum(4,4)~ THEN REPLY @3104 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ nibblefinger4
 IF ~RandomNum(4,1)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ breast1
 IF ~RandomNum(4,2)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ breast2
 IF ~RandomNum(4,3)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ breast2
 IF ~RandomNum(4,4)~ THEN REPLY @3110 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ breast3

 IF ~RandomNum(4,1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath1

 IF ~RandomNum(4,2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath2

 IF ~RandomNum(4,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,4)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @3115 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ GOTO innbath1

 IF ~RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @3115 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,1)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface1
 IF ~RandomNum(4,2)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface2
 IF ~RandomNum(4,3)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface3
 IF ~RandomNum(4,4)~ THEN REPLY @3042 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ strokeface3

 IF ~RandomNum(4,1)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile1
 IF ~RandomNum(4,2)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile1
 IF ~RandomNum(4,3)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile4
 IF ~RandomNum(4,4)~ THEN REPLY @3047 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ smile3

 IF ~RandomNum(4,1)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair1
 IF ~RandomNum(4,2)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair2
 IF ~RandomNum(4,3)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair4
 IF ~RandomNum(4,4)~ THEN REPLY @3051 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ playhair5

 IF ~RandomNum(4,1)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump1
 IF ~RandomNum(4,2)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump5
 IF ~RandomNum(4,3)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump6
 IF ~RandomNum(4,4)~ THEN REPLY @3061 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ bump7

 IF ~RandomNum(4,1)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear5
 IF ~RandomNum(4,2)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear2
 IF ~RandomNum(4,3)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear4
 IF ~RandomNum(4,4)~ THEN REPLY @3069 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ blowear6

 IF ~RandomNum(4,1)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage1
 IF ~RandomNum(4,2)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage2
 IF ~RandomNum(4,3)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage4
 IF ~RandomNum(4,4)~ THEN REPLY @3084 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ cleavage5

 IF ~RandomNum(4,1)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow1
 IF ~RandomNum(4,2)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow1
 IF ~RandomNum(4,3)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow2
 IF ~RandomNum(4,4)~ THEN REPLY @3089 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ elbow3
 IF ~RandomNum(4,1)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy1
 IF ~RandomNum(4,2)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy2
 IF ~RandomNum(4,3)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy2
 IF ~RandomNum(4,4)~ THEN REPLY @3093 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ yummy3

 IF ~RandomNum(4,1)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle5
 IF ~RandomNum(4,2)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle2
 IF ~RandomNum(4,3)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle3
 IF ~RandomNum(4,4)~ THEN REPLY @3097 DO ~IncrementGlobal("FWKelseyFlirt","GLOBAL",1)~ EXTERN J#KLSYJ whistle4

 IF ~~ THEN REPLY @3103 DO ~SetGlobal("FWDisableFlirts","GLOBAL",1)~ EXIT

 IF ~~ THEN REPLY @1959 EXIT
END

IF ~~ THEN BEGIN whistle5
SAY @3162
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


IF ~~ THEN BEGIN blowear5
SAY @3157
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN blowear6
SAY @3072 = @3073 = @3158
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

IF ~~ THEN BEGIN bump5
SAY @3064 = @3140
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bump6
SAY @3066 = @3141
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bump7
SAY @3142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playhair4
SAY @3058 = @3059 = @3137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playhair5
SAY @3138 = @3139
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN smile4
SAY @3136
IF ~~ THEN EXIT
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

IF ~~ THEN BEGIN nibblefinger1
SAY @3105
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nibblefinger2
SAY @3106
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nibblefinger3
SAY @3107 = @3108
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nibblefinger4
SAY @3109
IF ~~ THEN EXIT
END

END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBHIM1
SAY @2021 = @2022
IF ~~ THEN EXIT
END
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBHIM2
SAY @2023  = @2024
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBHIM3
SAY @2025
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYRUBHIM4
SAY @2026 = @2027
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYEVENING1
SAY @2028 = @2029
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYEVENING2
SAY @2030
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYEVENING3
SAY @2031 =
@2032
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYEVENING4
SAY @2033 = @2034
IF ~~ THEN EXIT
END
END



APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYDKISS1
SAY @2035 =
@2036
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell(Player1,WIZARD_RESIST_FEAR)~ EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYDKISS2
SAY @2037
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYDKISS3
SAY @2038 =
@2039
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYDKISS4
SAY @2040 =
@2041
IF ~~ THEN EXIT
END
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYLOVE1
SAY @2042
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYLOVE2
SAY @2043
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYLOVE3
SAY @2044
IF ~~ THEN DO ~ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)
ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR)~ EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYLOVE4
SAY @2045
IF ~~ THEN EXTERN J#KLSYJ KELSEYLOVE1
END
END


APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSLEEP1
SAY @2046
IF ~~ THEN REPLY @2047 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseySOAMornAfter","LOCALS",1)~ EXTERN J#KLSYJ KELSEYSLEEP2
IF ~~ THEN REPLY @2048 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseySOAMornAfter","LOCALS",1)~ EXTERN J#KLSYJ KELSEYSLEEP2
IF ~~ THEN REPLY @2049 EXTERN J#KLSYJ KELSEYSLEEP3
IF ~~ THEN REPLY @2050 DO ~SetGlobal("J#KelseyNookie","GLOBAL",1) SetGlobal("FWKelseySOAMornAfter","LOCALS",1)~ EXTERN J#KLSYJ KELSEYSLEEP4
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSLEEP2
SAY @2051  = @2052
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSLEEP3
 SAY @2053  =
@2054
IF ~~ THEN EXIT
END
END

APPEND J#KLSYJ
IF ~~ THEN BEGIN KELSEYSLEEP4
SAY @2055  =
@2052
IF ~~ THEN EXIT
END

// No flirting in Underdark

IF ~Global("FWDisableFlirts","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",2)
OR(17)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ THEN BEGIN noflirtinunderdark
SAY @3600
IF ~~ THEN EXIT
END

END


/*
APPEND J#KLSYJ
IF
~IsGabber(Player1)
CombatCounter(0)
Global("J#KelseyRomanceActive","GLOBAL",3)~ THEN BEGIN FWFLIRTBASE3
SAY @2056
IF ~~ THEN EXIT
END
END
*/


/*
ReallyForceSpellNoDec("J#Kelsey",WIZARD_RESIST_FEAR)
ReallyForceSpell()
ApplySpell("J#Kelsey",WIZARD_RESIST_FEAR) or WIZARD_LUCK
*/
