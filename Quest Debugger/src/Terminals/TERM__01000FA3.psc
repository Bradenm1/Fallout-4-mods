;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM__01000FA3 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.CompleteQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.FailAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.Reset()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_06
Function Fragment_Terminal_06(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
tempQuest.SetCurrentStageID(BradQAQuestDebugStage.GetValueInt())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_07
Function Fragment_Terminal_07(ObjectReference akTerminalRef)
;BEGIN CODE
Quest tempQuest
Bool StageOrQuest
tempQuest = BradQAQuestDebugAll.getAt(BradQAQuestDebugQuest.GetValueInt()) as Quest
Int i = 0
Int o = tempQuest.GetStage()
Bool tempCompleted = True
While tempCompleted == True
	If (tempQuest.SetStage(o))
		tempCompleted = False
	Else
		o += 1
		i += 1
		If i > 2000
			tempCompleted = False
			Debug.MessageBox("An error occured with the stages.")
		EndIf
	Endif
EndWhile
if i < 2000
	Debug.MessageBox(o + " Stage Completed")
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradQAQuestDebugQuest Auto Const

GlobalVariable Property BradQAQuestDebugStage Auto Const

Formlist Property BradQAQuestDebugAll Auto Const
