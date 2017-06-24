;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM_BradHolotapeCinematicOp_01002918 Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(1,false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(0,false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(1,true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(2,true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_06
Function Fragment_Terminal_06(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(0,true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_07
Function Fragment_Terminal_07(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.AddCinematic(2,false)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property BradGiveHolotape Auto Const
