;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM_BradQAQuestDebugMainT_01000F9F_1 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
Debug.Messagebox("Quest Index : " + BradQAQuestDebugQuest.GetValueInt() + "\nStage Index: " + BradQAQuestDebugStage.GetValueInt())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradQAQuestDebugQuest Auto Const

GlobalVariable Property BradQAQuestDebugStage Auto Const

FormList Property BradQAQuestDebugAll Auto Const
