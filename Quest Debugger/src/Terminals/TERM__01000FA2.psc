;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM__01000FA2 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
BradQAQuestDebugStageOrQuest.SetValueInt(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Int tempGetStage = tempQuest.GetCurrentStageID()
Debug.MessageBox("Current Stage In Selected Quest = " + tempGetStage)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Bool tempIsDone = tempQuest.IsStageDone(BradQAQuestDebugStage.GetValueInt())
if (tempIsDone == True)
  	Debug.MessageBox(BradQAQuestDebugStage.GetValueInt() +" Stage Is Completed")
else
	Debug.MessageBox(BradQAQuestDebugStage.GetValueInt() +" Stage Is Not Completed")
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradQAQuestDebugPosNeg Auto Const

GlobalVariable Property BradQAQuestDebugStage Auto Const

GlobalVariable Property BradQAQuestDebugQuest Auto Const

FormList Property BradQAQuestDebugAll Auto Const

GlobalVariable Property BradQAQuestDebugStageOrQuest Auto Const
