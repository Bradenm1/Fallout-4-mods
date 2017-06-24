;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM_BradHolotapeMainMenu_0100213C Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.RandomGen()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_10
Function Fragment_Terminal_10(ObjectReference akTerminalRef)
;BEGIN CODE
BradGiveImageSpaceScript mainScript = BradGiveHolotape as BradGiveImageSpaceScript
mainScript.RemoveAllEffects()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradIsStacking Auto Const

Quest Property BradGiveHolotape Auto Const
