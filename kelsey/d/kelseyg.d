////////////////////////////////////////////////////////////
//							  //
// The discussion between Kelsey, his brother, and Mirena //
//							  //
////////////////////////////////////////////////////////////

BEGIN FWKELVIM
BEGIN FWMIRENA

BEGIN J#Kls25J

APPEND FWMIRENA
IF ~Global("FWMETKELVIM","GLOBAL",0)~ THEN BEGIN Mirena1_1
  SAY @5000
  IF ~~ THEN DO ~SetGlobal("FWMETKELVIM","GLOBAL",1)~ EXTERN J#Kls25J
Mirena1_2
END
END

CHAIN J#Kls25J Mirena1_2
  @5001 == FWMirena @5002 == J#Kls25J @5003 == FWMirena @5004 == J#kls25J @5005
END FWMIRENA Mirena1_3

APPEND FWMIRENA
IF ~~ THEN BEGIN Mirena1_3
  SAY @5006
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("FWct001")~ EXIT
END
END

/* FWct001.bcs

IF
 True()
THEN
 RESPONSE #100
  CutSceneId("J#Kelsey")
  CreateCreature("FWKELVIM",[0.0],0)
  ActionOverride("FWKELVIM",Dialogue("J#Kelsey"))
END

// 904.1030 is Mirena's spawn point.
*/

APPEND FWKELVIM
IF ~Global("FWMETKELVIM","GLOBAL",1)~ THEN BEGIN Mirena1_4
  SAY @5007
  IF ~~ THEN EXTERN FWMirena Mirena1_5
END
END

CHAIN FWMirena Mirena1_5
  @5008 == FWKELVIM @5009 = @5010 == j#kls25J @5011 == FWKELVIM @5012 == j#kls25j @5013 == fwmirena @5014 == FWKELVIM @5015 == j#kls25j @5016 == FWKELVIM @5017 == j#kls25j @5018 == fwmirena @5019 == j#kls25j @5020 == FWKELVIM @5021 == j#kls25j @5022 == fwmirena @5023 == j#kls25j @5024 = @5025 == fwmirena @5026 = @5027 = @5028 = @5029 = @5030 == j#kls25j @5031 == FWKELVIM @5032 == j#kls25j @5033 == fwmirena @5034
END J#Kls25J Mirena1_6


APPEND J#Kls25J
IF ~~ THEN BEGIN Mirena1_6
  SAY @5035
  IF ~~ THEN REPLY @5036 GOTO Mirena1_7
  IF ~~ THEN REPLY @5037 GOTO Mirena1_8
  IF ~~ THEN REPLY @5038 GOTO Mirena1_7
END

IF ~~ THEN BEGIN Mirena1_7
  SAY @5039
  IF ~~ THEN EXTERN FWMirena Mirena1_9
END

IF ~~ THEN BEGIN Mirena1_8
  SAY @5040
  IF ~~ THEN EXTERN FWMirena Mirena1_9
END
END

CHAIN FWMirena Mirena1_9
  @5041 == j#kls25j @5042 = @5043 == fwkelvim @5044
END j#kls25j Mirena1_10

APPEND J#Kls25J
IF ~~ THEN BEGIN Mirena1_10
  SAY @5055
  IF ~~ THEN REPLY @5056 GOTO Mirena1_11
  IF ~~ THEN REPLY @5057 GOTO Mirena1_11
  IF ~~ THEN REPLY @5058 GOTO Mirena1_12
END

IF ~~ THEN BEGIN Mirena1_11
  SAY @5059
  IF ~~ THEN GOTO Mirena1_13
END

IF ~~ THEN BEGIN Mirena1_12
  SAY @5060
  IF ~~ THEN GOTO Mirena1_13
END
END

CHAIN J#kls25j Mirena1_13
  @5061 = @5062 == fwmirena @5063 == j#kls25j @5064
END j#kls25j Mirena1_14

APPEND J#Kls25J
IF ~~ THEN BEGIN Mirena1_14
  SAY @5065
  IF ~~ THEN REPLY @5066 GOTO Mirena1_15
  IF ~~ THEN REPLY @5067 GOTO Mirena1_16
  IF ~~ THEN REPLY @5068 EXTERN fwmirena Mirena1_17
  IF ~~ THEN REPLY @5069 EXTERN fwmirena Mirena1_17
END

IF ~~ THEN BEGIN Mirena1_15
  SAY @5070
  IF ~~ THEN EXTERN fwmirena Mirena1_17
END

IF ~~ THEN BEGIN Mirena1_16
  SAY @5071
  IF ~~ THEN EXTERN fwmirena Mirena1_17
END
END

CHAIN fwmirena Mirena1_17
  @5072 == j#kls25j @5073 = @5074
END fwmirena Mirena1_18

APPEND fwmirena
IF ~~ THEN BEGIN Mirena1_18
  SAY @5075
  IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN EXTERN J#kls25J Mirena1_19
  IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN EXTERN J#kls25J Mirena1_20
END
END

APPEND J#Kls25J
IF ~~ THEN BEGIN Mirena1_19
  SAY @5076
  IF ~~ THEN GOTO Mirena1_21
END

IF ~~ THEN BEGIN Mirena1_20
  SAY @5077
  IF ~~ THEN GOTO Mirena1_21
END

IF ~~ THEN BEGIN Mirena1_21
  SAY @5078
  IF ~~ THEN EXTERN fwmirena Mirena1_22
END
END

APPEND fwmirena
IF ~~ THEN BEGIN Mirena1_22
  SAY @5079
  IF ~~ THEN DO ~SetGlobal("FWMETKELVIM","GLOBAL",2)
ActionOverride("FWKelvim",EscapeArea())
EscapeArea()~ EXIT
END
END

APPEND J#Kls25J

IF ~Global("FWKelseyTOBMornAfter","LOCALS",3)~ TOBmornafter
SAY @6145 = @6146
++ @6147 DO ~SetGlobal("FWKelseyTOBMornAfter","LOCALS",4)~ + maeverythingexpected
++ @6148 DO ~SetGlobal("FWKelseyTOBMornAfter","LOCALS",4)~ + mamoreromantic
++ @6149 DO ~SetGlobal("FWKelseyTOBMornAfter","LOCALS",4)~ + mawaswonderful
++ @6150 DO ~SetGlobal("FWKelseyTOBMornAfter","LOCALS",4)~ + matreasure
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










IF ~Global("FWPostBirinar","LOCALS",2)~ postbirinar2_1
SAY @6100
++ @6101 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + postbirinar5
++ @6102 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + postbirinar2
++ @6103 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + postbirinar3
++ @6104 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + postbirinar4
+ ~G("J#KelseyRomanceActive",2)~ + @6105 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + weakling1
+ ~!G("J#KelseyRomanceActive",2)~ + @6105 DO ~SetGlobal("FWPostBirinar","LOCALS",3)~ + weakling2
END

IF ~~ weakling1
SAY @6106
IF ~~ DO ~SG("J#KelseyRomanceActive",3)~ EXIT
END

IF ~~ weakling2
SAY @6107
IF ~~ EXIT
END

IF ~~ postbirinar2
SAY @6108
+ ~G("J#KelseyRomanceActive",2)~ + @6109 + otherhandrom
+ ~!G("J#KelseyRomanceActive",2)~ + @6109 + otherhand
++ @6110 + harmsister
++ @6111 + narrative
++ @6112 + harmsister
END

IF ~~ postbirinar3
SAY @6113 = @6114
IF ~~ GOTO narrative
END

IF ~~ postbirinar4
SAY @6115
IF ~~ GOTO narrative
END

IF ~~ harmsister
SAY @6116
IF ~~ GOTO narrative
END

IF ~~ otherhandrom
SAY @6117
IF ~~ GOTO narrative
END

IF ~~ otherhand
SAY @6118
IF ~~ GOTO narrative
END

IF ~~ postbirinar5
SAY @6119 = @6120
IF ~~ GOTO narrative
END

IF ~~ narrative
SAY @6121 = @6122 = @6123 = @6124 = @6125
++ @6126 + narrative2
++ @6127 + cutoff
END

IF ~~ cutoff
SAY @6128
IF ~~ EXIT
END

IF ~~ narrative2
SAY @6129 = @6130 = @6131 = @6132
++ @6133 + realmother
++ @6134 + speciallady
++ @6135 + letdown
+ ~G("J#KelseyRomanceActive",2)~ + @6136 + approve
+ ~G("J#KelseyRomanceActive",2)~ + @6137 + weakling1
+ ~!G("J#KelseyRomanceActive",2)~ + @6137 + weakling2
END

IF ~~ realmother
SAY @6138
IF ~~ EXIT
END

IF ~~ speciallady
SAY @6139
IF ~~ EXIT
END

IF ~~ letdown
SAY @6140 = @6141
IF ~~ EXIT
END

IF ~~ approve
SAY @6142 = @6143 = @6144
IF ~~ EXIT
END

IF ~Global("FWMETKELVIM","GLOBAL",2)~ THEN BEGIN Mirena1_23
  SAY @5080
  IF ~~ THEN REPLY @5081 GOTO Mirena1_24
  IF ~~ THEN REPLY @5082 GOTO Mirena1_25
END

IF ~~ THEN BEGIN Mirena1_24
  SAY @5083
  IF ~~ THEN GOTO Mirena1_25
END

IF ~~ THEN BEGIN Mirena1_25
  SAY @5084
  IF ~~ THEN DO ~SetGlobal("FWMETKELVIM","GLOBAL",3)~ EXIT
END
END

/////////
//
// End of the Kelsey/Kelvim/Mirena discussion.
//
////////





////////
//
// J#Klsy25.dlg
//
////////

BEGIN J#Klsy25

IF ~G("J#KelseySummoned",1)
G("J#KelseyRomanceActive",2)~ THEN BEGIN KelseyP_r_1
SAY @6060 = @6061 = @6062
IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6063 GOTO KelseyP_r_2
IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6064 GOTO KelseyP_r_3
IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6065 GOTO KelseyP_r_4
END

IF ~~ THEN BEGIN KelseyP_r_2
SAY @6066 = @6068
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KelseyP_r_3
SAY @6067 = @6068
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KelseyP_r_4
SAY @6069
IF ~~ THEN REPLY @6070 GOTO KelseyP_r_2
IF ~~ THEN REPLY @6071 GOTO KelseyP_r_5
END

IF ~~ THEN BEGIN KelseyP_r_5
SAY @6072
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1470.1425])~ EXIT
END

IF ~Global("J#KelseySummoned","GLOBAL",1)
!G("J#KelseyRomanceActive",2)~ THEN BEGIN KelseyP_1
  SAY @6002
  IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6003 GOTO KelseyP_3
  IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6004 GOTO KelseyP_3
  IF ~~ THEN DO ~SetGlobal("J#KelseySummoned","GLOBAL",2)~ REPLY @6005 GOTO KelseyP_2
END

IF ~~ THEN BEGIN KelseyP_2
  SAY @6006
  IF ~~ THEN REPLY @6007 GOTO KelseyP_4
  IF ~~ THEN REPLY @6008 GOTO KelseyP_5
END

IF ~~ THEN BEGIN KelseyP_3
  SAY @6009
  IF ~~ THEN REPLY @6010 GOTO KelseyP_4
  IF ~~ THEN REPLY @6011 GOTO KelseyP_5
END

IF ~~ THEN BEGIN KelseyP_4
  SAY @6012
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KelseyP_5
  SAY @6013
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1470.1425])~ EXIT
END

IF ~Global("J#KelseySummoned","GLOBAL",2)~ THEN BEGIN KelseyP_6
  SAY @6014
  IF ~~ THEN REPLY @6015 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @6016 EXIT
END

////////
//
// J#Kls25p.dlg
//
////////

BEGIN J#Kls25p

/////////////////////////
//
// Rejoining in Amkethran
//
/////////////////////////

IF ~Global("FWKelseyLeftSaradush","GLOBAL",1)~ THEN BEGIN AmketRejoin_1
  SAY @6044
  IF ~~ THEN DO ~SetGlobal("FWKelseyLeftSaradush","GLOBAL",2)~ GOTO AmketRejoin_2
END

IF ~~ THEN BEGIN AmketRejoin_2
  SAY @6045
  IF ~~ THEN DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO AmketRejoin_3
END

IF ~~ THEN BEGIN AmketRejoin_3
  SAY @6046
  IF ~~ THEN REPLY @6047 GOTO AmketRejoin_4
  IF ~~ THEN REPLY @6048 GOTO AmketRejoin_5
END

IF ~~ THEN BEGIN AmketRejoin_4
  SAY @6049
  IF ~~ THEN DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN AmketRejoin_5
  SAY @6050
  IF ~~ THEN GOTO AmketRejoin_6
END

IF ~~ THEN BEGIN AmketRejoin_6
  SAY @6051
  IF ~~ THEN EXIT
END


IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KickedOut","LOCALS",1)~ THEN BEGIN KelseyP_1
  SAY @6017
  IF ~~ THEN REPLY @6018 GOTO KelseyP_2
  IF ~~ THEN REPLY @6019 GOTO KelseyP_3
END

IF ~~ THEN BEGIN KelseyP_2
  SAY @6020
  IF ~~ THEN DO ~SetGlobal("J#KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KelseyP_3
  SAY @6021
  IF ~~ THEN EXIT
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

IF ~!Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KickedOut","LOCALS",0)~ THEN BEGIN KelseyP_6
  SAY @6026
  IF ~~ THEN REPLY @6027 DO ~JoinParty()~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @6028 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO KelseyP_7

  IF ~AreaCheck("AR4500")~ THEN REPLY @6028 DO ~SetGlobal("J#KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1470.1425])
Face(0)~ GOTO KelseyP_7

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @6029 DO ~SetGlobal("J#KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1470.1425],0)~ EXIT
END

IF ~~ THEN BEGIN KelseyP_7
  SAY @6030
  IF ~Global("J#ImoenKickOut","LOCALS",0)
OR(2)
Global("FWImoenRomanceActive","GLOBAL",1)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN EXTERN J#Kls25P ImKick_1
  IF ~OR(3)
Global("J#ImoenKickOut","LOCALS",1)
Global("FWImoenRomanceActive","GLOBAL",0)
Global("FWImoenRomanceActive","GLOBAL",3)~ THEN EXIT
END

IF ~Global("J#KelseyRomanceActive","GLOBAL",2)
Global("J#KickedOut","LOCALS",0)~ THEN BEGIN KelseyP_8
  SAY @6031
  IF ~~ THEN REPLY @6032 DO ~JoinParty()~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @6034 DO ~SetGlobal("J#KickedOut","LOCALS",1)~ GOTO KelseyP_9

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @6033 DO ~SetGlobal("J#KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1470.1425],0)~ GOTO KelseyP_9

  IF ~AreaCheck("AR4500")~ THEN REPLY @6034 DO ~SetGlobal("J#KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1470.1425])
Face(0)~ GOTO KelseyP_9
END

IF ~~ THEN BEGIN KelseyP_9
  SAY @6035
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ImKick_1
  SAY @6036
  IF ~~ THEN DO ~SetGlobal("J#ImoenKickOut","LOCALS",1)~ EXTERN BIMOEN25 ImKick_2
END

IF ~~ THEN BEGIN ImKick_3
  SAY @6038
  IF ~~ THEN EXTERN BIMOEN25 ImKick_4
END

IF ~~ THEN BEGIN ImKick_5
  SAY @6040
  IF ~~ THEN EXIT
END

APPEND BIMOEN25
IF ~~ THEN BEGIN ImKick_2
  SAY @6037
  IF ~~ THEN EXTERN J#Kls25P ImKick_3
END

IF ~~ THEN BEGIN ImKick_4
  SAY @6039
  IF ~~ THEN EXTERN J#Kls25P ImKick_5
END
END




////////////
//
// End of P.dlg
//
////////////

//////////////
//
// Imoen talking to Kelsey when she's kicked
//
//////////////

ADD_TRANS_TRIGGER IMOEN25P 1
~OR(3)
Global("J#ImoenKickOut","LOCALS",1)
Global("FWImoenRomanceActive","GLOBAL",0)
Global("FWImoenRomanceActive","GLOBAL",3)~

EXTEND_BOTTOM IMOEN25P 1
	IF ~Global("J#ImoenKickOut","LOCALS",0)
OR(2)
Global("FWImoenRomanceActive","GLOBAL",1)
Global("FWImoenRomanceActive","GLOBAL",2)~ THEN EXTERN bimoen25 ImKick_6
END

APPEND bimoen25
  IF ~~ THEN BEGIN ImKick_6
    SAY @6041
    IF ~~ THEN DO ~SetGlobal("J#ImoenKickOut","LOCALS",1)~ EXTERN J#kls25J ImKick_7
  END

  IF ~~ THEN BEGIN ImKick_8
    SAY @6043
    IF ~~ THEN EXIT
  END
END

APPEND J#Kls25J
IF ~~ THEN BEGIN ImKick_7
  SAY @6042
  IF ~~ THEN EXTERN bimoen25 ImKick_8
END
END

/////////////////////////////
//                         //
// Kelsey/Birinar dialogue //
//                         //
/////////////////////////////

BEGIN FWRLAASH

IF ~OR(2)
!See("J#Kelsey")
!InParty("J#Kelsey")~ THEN BEGIN RLAASH1_1
  SAY @800
  IF ~~ THEN EXIT
END

IF ~See("J#Kelsey")
InParty("J#Kelsey")~ THEN BEGIN RLAASH1_2
  SAY @801
  IF ~~ THEN EXTERN J#Kls25J RLAASH1_3
END

CHAIN3 J#kls25J RLAASH1_3
  @802 = @803 = @804 == FWRLAASH @805 == J#kls25J @806 == fwRLAASH @807 == j#kls25j @808
END fwRLAASH RLAASH1_4

APPEND fwRLAASH
IF ~~ THEN BEGIN RLAASH1_4
  SAY @809
  IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @810 GOTO RLAASH1_5
  IF ~CheckStatGT(Player1,16,CHR)~ THEN REPLY @811 GOTO RLAASH1_6
  IF ~Gender(Player1,FEMALE)
CheckStatGT(Player1,16,STR)~ THEN REPLY @812 GOTO RLAASH1_7
  IF ~Gender(Player1,MALE)
CheckStatGT(Player1,18,STR)~ THEN REPLY @812 GOTO RLAASH1_8
  IF ~~ THEN REPLY @813 EXTERN J#Kls25J RLAASH1_9
  IF ~CheckStatLT(Player1,4,STR)
CheckStatLT(Player1,4,CON)
CheckStatLT(Player1,4,DEX)
CheckStatLT(Player1,4,INT)
CheckStatLT(Player1,4,WIS)
CheckStatLT(Player1,4,CHR)~ THEN REPLY ~THERE IS NO BLOCK 7!~ GOTO RLAASH1_10
END

IF ~~ THEN BEGIN RLAASH1_5
  SAY @814
  IF ~~ THEN GOTO RLAASH1_10
END

IF ~~ THEN BEGIN RLAASH1_6
  SAY @815
  IF ~~ THEN GOTO RLAASH1_10
END

IF ~~ THEN BEGIN RLAASH1_7
  SAY @816
  IF ~~ THEN GOTO RLAASH1_10
END

IF ~~ THEN BEGIN RLAASH1_8
  SAY @817
  IF ~~ THEN GOTO RLAASH1_10
END
END

APPEND J#Kls25J
IF ~~ THEN BEGIN RLAASH1_9
  SAY @818
  IF ~~ THEN EXTERN FWRLAASH RLAASH1_10a
END
END

APPEND fwRLAASH
IF ~~ THEN BEGIN RLAASH1_10a
  SAY @819
  IF ~~ THEN EXTERN J#kls25J RLAASH1_10b
END
END

APPEND J#Kls25J
IF ~~ THEN BEGIN RLAASH1_10b
  SAY @820
  IF ~~ THEN EXTERN FWRLAASH RLAASH1_10
END
END

APPEND fwRLAASH
IF ~~ THEN BEGIN RLAASH1_10
  SAY @821
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",2)
StartCutScene("FWct002")~ EXIT
END
END

BEGIN FWBirina

IF ~Global("FWRLAASHTalk","GLOBAL",2)~ THEN BEGIN Birinar1_1
  SAY @822
  IF ~~ THEN EXTERN J#Kls25J Birinar1_2
END

CHAIN3 J#Kls25J Birinar1_2
  @823 == FWBirina @824 == J#Kls25J @825 == FWBirina @826 == J#Kls25J @827 == FWBirina @828 == J#Kls25J @829 = @830 = @831 == FWBirina @832 == J#Kls25J @833 == FWBirina @834 == J#Kls25J @835 = @836 == FWBirina @837 == J#Kls25J @838
END FWBirina Birinar1_3

APPEND fwbirina
IF ~~ THEN BEGIN Birinar1_3
  SAY @839
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",3)
StartCutScene("FWCt003")~ EXIT
END

IF ~Global("FWRLAASHTalk","GLOBAL",3)~ THEN BEGIN Birinar1_4
  SAY @840
  IF ~~ THEN EXTERN J#kls25J Birinar1_5
END
END

CHAIN3 J#kls25J Birinar1_5
  @841 == FWBirina @842 == J#Kls25J @843 == FWBirina @844
END J#kls25J Birinar1_6

APPEND J#Kls25J
IF ~~ THEN BEGIN Birinar1_6
  SAY @845
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",4)
StartCutScene("FWCt004")~ EXIT
END
END

APPEND J#Kls25J
IF ~Global("FWRLAASHTalk","GLOBAL",4)~ THEN BEGIN Birinar1_7
  SAY @846
  IF ~~ THEN REPLY @847 GOTO Birinar1_8
  IF ~~ THEN REPLY @848 GOTO Birinar1_9
  IF ~~ THEN REPLY @849 GOTO Birinar1_10
  IF ~~ THEN REPLY @850 GOTO Birinar1_11
END

IF ~~ THEN BEGIN Birinar1_8
  SAY @851
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN Birinar1_9
  SAY @852
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN Birinar1_10
  SAY @853
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN Birinar1_11
  SAY @854
  IF ~~ THEN DO ~SetGlobal("FWRLAASHTalk","GLOBAL",5)~ EXIT
END
END
