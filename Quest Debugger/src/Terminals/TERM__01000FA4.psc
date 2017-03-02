;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM__01000FA4 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugPosNeg.GetValueInt() == 0
	BradQAQuestDebugPosNeg.SetValueInt(1)
	Debug.MessageBox("Set to Negative")
Else
	BradQAQuestDebugPosNeg.SetValueInt(0)
	Debug.MessageBox("Set to Positive")
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugPosNeg.GetValueInt() == 0
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + 10)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + 10)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
Else
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + -10)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + -10)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
	BradQAQuestDebugQuest.SetValueInt(0)
	Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
Else
	BradQAQuestDebugStage.SetValueInt(0)
	Debug.Notification("Quest Index: " + BradQAQuestDebugStage.GetValueInt())
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugPosNeg.GetValueInt() == 0
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + 1)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + 1)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
Else
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + -1)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + -1)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugPosNeg.GetValueInt() == 0
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + 100)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + 100)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
Else
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + -100)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + -100)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_06
Function Fragment_Terminal_06(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugPosNeg.GetValueInt() == 0
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + 1000)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + 1000)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
Else
	If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
		BradQAQuestDebugQuest.SetValueInt(BradQAQuestDebugQuest.GetValueInt() + -1000)
		Debug.Notification("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
	Else
		BradQAQuestDebugStage.SetValueInt(BradQAQuestDebugStage.GetValueInt() + -1000)
		Debug.Notification("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
	EndIf
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_07
Function Fragment_Terminal_07(ObjectReference akTerminalRef)
;BEGIN CODE
If BradQAQuestDebugStageOrQuest.GetValueInt() == 0
	Debug.MessageBox("Quest Index: " + BradQAQuestDebugQuest.GetValueInt())
Else
	Debug.MessageBox("Stage Index: " + BradQAQuestDebugStage.GetValueInt())
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradQAQuestDebugStageOrQuest Auto Const

GlobalVariable Property BradQAQuestDebugQuest Auto Const

GlobalVariable Property BradQAQuestDebugStage Auto Const

GlobalVariable Property BradQAQuestDebugPosNeg Auto Const
