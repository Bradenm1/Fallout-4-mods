;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Terminals:TERM__0100385B Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_10
Function Fragment_Terminal_10(ObjectReference akTerminalRef)
;BEGIN CODE
if (BradIsRGBDisabled.GetValueInt() == 0)
	BradIsRGBDisabled.SetValueInt(1)
	Debug.MessageBox("RGB Enabled")
Else
	BradIsRGBDisabled.SetValueInt(0)
	Debug.MessageBox("RGB Disabled")
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BradIsStacking Auto Const

Quest Property BradGiveHolotape Auto Const

GlobalVariable Property BradIsRGBDisabled Auto Const
