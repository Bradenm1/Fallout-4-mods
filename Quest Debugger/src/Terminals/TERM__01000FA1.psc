;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM__01000FA1 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
BradQAQuestDebugStageOrQuest.SetValueInt(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
;Int o = 0 
;Bool hasFound = False
;While o < BradQAQuestDebugAll.GetSize() && hasFound == False
;	Quest tempTempQuest = BradQAQuestDebugAll.getAt(o) as Quest
;	If (tempTempQuest.IsActive()) && (tempTempQuest.IsRunning())
;		BradQAQuestDebugQuest.SetValueInt(o)
;		Debug.MessageBox("Quest Found: " + tempTempQuest)
;		Debug.MessageBox("The quest has been set in your index")
;		hasFound = True
;	Else
;		If (o % 250) == 0
;			Debug.Notification("Please Wait... Entry " + o + "/" + " " + BradQAQuestDebugAll.GetSize())
;		EndIf
;		o += 1
;	EndIf
;EndWhile
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Debug.MessageBox("Index = " + BradQAQuestDebugQuest.GetValueInt())
if (tempQuest.IsActive())
  	Debug.MessageBox("Select Quest Is Active")
else
	Debug.MessageBox("Select Quest Is Not Active")
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Debug.MessageBox("Index = " + BradQAQuestDebugQuest.GetValueInt())
if (tempQuest.IsRunning())
  	Debug.MessageBox("Select Quest Is Running")
else
	Debug.MessageBox("Select Quest Is Not Running")
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Debug.MessageBox("Index = " + BradQAQuestDebugQuest.GetValueInt())
if (tempQuest.IsCompleted())
  	Debug.MessageBox("Index " + BradQAQuestDebugQuest.GetValueInt() + " Quest Is Completed")
else
	Debug.MessageBox("Index " + BradQAQuestDebugQuest.GetValueInt() + " Quest Is Not Completed")
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FormList Property BradQAQuestDebugAll Auto Const

GlobalVariable Property BradQAQuestDebugQuest Auto Const

GlobalVariable Property BradQAQuestDebugStageOrQuest Auto Const
