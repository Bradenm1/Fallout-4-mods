Scriptname BradGiveImageSpaceScript extends Quest

;========Constants========;
;Random Generater
	;This number mainly depends on what the mod is since it's check using the mod
int RANDGENCHECKAMMOUNT = 100
	;Amount of layers the random can apply for one effect
int RANDGENLAYERAMMOUNT = 3
	;Higher means it does not pick as much
int RANDGENMODAMMOUNT = 5
int RGBFORM = 2
;Cinematic
int BRIGHTNEEENEG = 0
int BRIGHTNEEEPOS = 1
int CONTRASTNEG = 2
int CONTRASTPOS = 3
int SATURATIONNEG = 4
int SATURATIOPOS = 5
;RGB
	;Allow the user to see the current number out of 255 with math and the with global value
int TIMESGLOBALVALUE = 5
int REDFADE = 5
int GREENFADE = 4
int BLUENFADE = 3
int REDTINT = 2
int GREENTINT = 1
int BLUETINT = 0
;Remove Effects
int SHOWINSECTIONSOF = 4

;========Properties========;
FormList Property BradRemoveAllEffects  Auto  
FormList Property BradBlueFade  Auto  
FormList Property BradBlueTint  Auto  
FormList Property BradGreenFade  Auto  
FormList Property BradGreenTint  Auto  
FormList Property BradHDR  Auto  
FormList Property BradCinematic  Auto  
FormList Property BradPresets  Auto  
FormList Property BradRedFade  Auto  
FormList Property BradRedTint  Auto  
FormList Property BradSaves  Auto  
FormList Property BradLoad  Auto  
FormList Property BradCurrent  Auto  
FormList Property BradCurrent01Image11  Auto  
FormList Property BradCurrent01Image12  Auto  
FormList Property BradCurrent01Image13  Auto  
FormList Property BradCurrent01Image14  Auto  

GlobalVariable Property BradStack  Auto  
;1 = disabled, 0 = enabled
GlobalVariable Property BradIsRGBDisabled  Auto  

;========Fields========;

;========Events========;

;========Functions========;
Function AddPreset(int presetNumb)
	;Saves Into Current
	GlobalVariable tempGlobalVariable = BradCurrent01Image11.GetAt(presetNumb) as GlobalVariable
	tempGlobalVariable.SetValueInt(tempGlobalVariable.GetValueInt() + 1)
	;Applies Effect
	ImageSpaceModifier tempImageSpaceModifier = BradPresets.GetAt(presetNumb) as ImageSpaceModifier
	tempImageSpaceModifier.Apply()
	Debug.Notification("Preset Set")
EndFunction

Function AddCinematic(int hdrNumb, bool optionSelected)
	ImageSpaceModifier tempImageSpaceModifier
	GlobalVariable tempGlobalVariable
	FormList tempFormList01 = BradLoad.GetAt(1) as FormList
	If (optionSelected == True)
		;Pos
		If (hdrNumb == 0)
			;Brightness
			tempGlobalVariable = BradCurrent01Image12.GetAt(BRIGHTNEEEPOS) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(BRIGHTNEEEPOS) as ImageSpaceModifier
		ElseIf (hdrNumb == 1)
			;Saturation
			tempGlobalVariable = BradCurrent01Image12.GetAt(SATURATIOPOS) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(SATURATIOPOS) as ImageSpaceModifier
		Else
			;Contrast
			tempGlobalVariable = BradCurrent01Image12.GetAt(CONTRASTPOS) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(CONTRASTPOS) as ImageSpaceModifier
		EndIf
	Else
		;Neg
		If (hdrNumb == 0)
			;Brightness
			tempGlobalVariable = BradCurrent01Image12.GetAt(BRIGHTNEEENEG) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(BRIGHTNEEENEG) as ImageSpaceModifier
		ElseIf (hdrNumb == 1)
			;Saturation
			tempGlobalVariable = BradCurrent01Image12.GetAt(SATURATIONNEG) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(SATURATIONNEG) as ImageSpaceModifier
		Else
			;Contrast
			tempGlobalVariable = BradCurrent01Image12.GetAt(CONTRASTNEG) as GlobalVariable
			tempImageSpaceModifier = tempFormList01.GetAt(CONTRASTNEG) as ImageSpaceModifier
		EndIf
	EndIf
	tempGlobalVariable.SetValueInt(tempGlobalVariable.GetValueInt() + 1)
	;Applies Cinematic
	tempImageSpaceModifier.Apply()
EndFunction

Function AddRGB(string rgbColour, bool optionSelected, int addBy)
	ImageSpaceModifier tempImageSpaceModifier
	GlobalVariable tempGlobalVariable
	if (BradIsRGBDisabled.GetValueInt() == 0)
		If (optionSelected == True)
			;Tint
			If (rgbColour == "Red")
				tempGlobalVariable = BradCurrent01Image13.GetAt(REDTINT) as GlobalVariable
				tempImageSpaceModifier = BradRedTint.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			ElseIf (rgbColour == "Green")
				tempGlobalVariable = BradCurrent01Image13.GetAt(GREENTINT) as GlobalVariable
				tempImageSpaceModifier = BradGreenTint.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			Else ;Blue
				tempGlobalVariable = BradCurrent01Image13.GetAt(BLUETINT) as GlobalVariable
				tempImageSpaceModifier = BradBlueTint.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			EndIf
			tempGlobalVariable.SetValueInt(tempGlobalVariable.GetValueInt() + addBy)
			Debug.Notification(rgbColour + " Tint Alpha = " + TIMESGLOBALVALUE*tempGlobalVariable.GetValueInt() + "/255")
		Else
			;Fade
			If (rgbColour == "Red")
				tempGlobalVariable = BradCurrent01Image13.GetAt(REDFADE) as GlobalVariable
				tempImageSpaceModifier = BradRedFade.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			ElseIf (rgbColour == "Green")
				tempGlobalVariable = BradCurrent01Image13.GetAt(GREENFADE) as GlobalVariable
				tempImageSpaceModifier = BradGreenFade.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			Else ;Blue
				tempGlobalVariable = BradCurrent01Image13.GetAt(BLUENFADE) as GlobalVariable
				tempImageSpaceModifier = BradBlueFade.GetAt(tempGlobalVariable.GetValueInt()) as ImageSpaceModifier
			EndIf
			tempGlobalVariable.SetValueInt(tempGlobalVariable.GetValueInt() + addBy)
			Debug.Notification(rgbColour + " Fade Alpha = " + TIMESGLOBALVALUE*tempGlobalVariable.GetValueInt() + "/255")
		EndIf
		;Applies RGB
		tempImageSpaceModifier.Apply()
	Else
		Debug.MessageBox("RGB is disabled, refer to options to enable")
	EndIf
EndFunction

Function AddHDR(int hdrNumb, bool optionSelected)
	If (optionSelected == false)
		;Neg
		;Account for neg numb
		hdrNumb += 1
	Else
		;Pos
		;Do Nothing
	EndIf
	GlobalVariable tempGlobalVariable = BradCurrent01Image14.GetAt(hdrNumb) as GlobalVariable
	tempGlobalVariable.SetValueInt(tempGlobalVariable.GetValueInt() + 1)
	ImageSpaceModifier tempImageSpaceModifier = BradHDR.GetAt(hdrNumb) as ImageSpaceModifier
	;Applies HDR
	tempImageSpaceModifier.Apply()
EndFunction

Function ChangeWorldFOV(float fovAmount)
	;Default 75
	Utility.SetINIFloat("FDefaultWorldFOV:Display", fovAmount)
EndFunction

Function ChangePersonFOV(float fovAmount)
	Utility.SetINIFloat("fDefault1stPersonFOV:Display", fovAmount)
EndFunction

Function ChangeDefaultFOV(float fovAmount)
	Utility.SetINIFloat("fDefaultFOV:Display", fovAmount)
EndFunction

Function DisplayInfo()
	;Returning an int and forcing it into and int
	;int tempInt = BradCurrent01Image11.GetSize() as int
	;Creating an array of size tempInt which has to return an int
	;int[] tempArray = new int[tempInt]
	;int index = 0
	;Presets
	;While (BradCurrent01Image11.GetSize() > index)
	;	GlobalVariable tempGlobalVariable01 = BradCurrent01Image11.GetAt(index) as GlobalVariable
	;	tempArray[index] = tempGlobalVariable01.GetValueInt()
	;	index += 1
	;EndWhile
	;Debug.MessageBox("Presets:\nLife = " + tempArray[7] + " , " +  tempArray[11])
EndFunction

Function Save()
	Debug.Notification("Saving Current Settings")
	int indexOut = 0
	While (BradSaves.GetSize() > indexOut)
		FormList tempFormList01 = BradSaves.GetAt(indexOut) as FormList
		FormList tempFormList02 = BradCurrent.GetAt(indexOut) as FormList
		int indexIn = 0
		While(tempFormList01.GetSize() > indexIn)
			GlobalVariable tempGlobalVariable01 = tempFormList01.GetAt(indexIn) as GlobalVariable
			GlobalVariable tempGlobalVariable02 = tempFormList02.GetAt(indexIn) as GlobalVariable
			tempGlobalVariable01.SetValueInt(tempGlobalVariable02.GetValueInt())
			indexIn += 1
		EndWhile
		indexOut += 1
	EndWhile
	Debug.Notification("Settings Saved")
EndFunction

Function Load()
	RemoveAllEffects()
	Debug.Notification("Loading Saved Settings")
	;Load saved values
	int indexOut = 0
	While (BradCurrent.GetSize() > indexOut)
		FormList tempFormList01 = BradSaves.GetAt(indexOut) as FormList
		FormList tempFormList02 = BradCurrent.GetAt(indexOut) as FormList
		FormList tempFormList03 = BradLoad.GetAt(indexOut) as FormList
		int indexIn = 0
		While (tempFormList01.GetSize() > indexIn)
			int IndexInIn = 0
			GlobalVariable tempGlobalVariable01 = tempFormList01.GetAt(indexIn) as GlobalVariable
			GlobalVariable tempGlobalVariable02 = tempFormList02.GetAt(indexIn) as GlobalVariable
			;Checks if RGB form
			If(IndexOut ==  RGBFORM)
				If(BradIsRGBDisabled.GetValueInt() == 0)
					FormList tempFormList04 = tempFormList03.GetAt(indexIn) as FormList
					While (tempFormList03.GetSize() > IndexInIn)
						While (tempGlobalVariable01.GetValueInt() > tempGlobalVariable02.GetValueInt())
							ImageSpaceModifier tempImageSpaceModifier = tempFormList04.GetAt(indexIn) as ImageSpaceModifier
							tempGlobalVariable02.SetValueInt(tempGlobalVariable02.GetValueInt() + 1)
							tempImageSpaceModifier.Apply()
						EndWhile
						 IndexInIn += 1
					EndWhile
				Else
					 IndexInIn = 6
				EndIf
			Else
				ImageSpaceModifier tempImageSpaceModifier = tempFormList03.GetAt(indexIn) as ImageSpaceModifier
				While (tempGlobalVariable01.GetValueInt() > tempGlobalVariable02.GetValueInt())
					tempGlobalVariable02.SetValueInt(tempGlobalVariable02.GetValueInt() + 1)
					tempImageSpaceModifier.Apply()
				EndWhile
			EndIf
			indexIn += 1
		EndWhile
		indexOut += 1
	EndWhile
	Debug.Notification("Saved Settings Loaded")
EndFunction

Function RandomGen()
	RemoveAllEffects()
	int indexOut = 0
	While (BradCurrent.GetSize() > indexOut)
		FormList tempFormList02 = BradCurrent.GetAt(indexOut) as FormList
		FormList tempFormList03 = BradLoad.GetAt(indexOut) as FormList
		int indexIn = 0
		While (tempFormList02.GetSize() > indexIn)
			int IndexInIn = 0
			GlobalVariable tempGlobalVariable02 = tempFormList02.GetAt(indexIn) as GlobalVariable
			int random01 = Utility.RandomInt(0, RANDGENCHECKAMMOUNT)
			int random02 = 0
			If (random01 % RANDGENMODAMMOUNT == 0)
				random02 = Utility.RandomInt(0, RANDGENLAYERAMMOUNT)
			EndIf
			;Checks if RGB form
			If(IndexOut == RGBFORM)
				If(BradIsRGBDisabled.GetValueInt() == 0)
					FormList tempFormList04 = tempFormList03.GetAt(indexIn) as FormList
					While (tempFormList03.GetSize() > IndexInIn)
						While (random02 > tempGlobalVariable02.GetValueInt())
							ImageSpaceModifier tempImageSpaceModifier = tempFormList04.GetAt(indexIn) as ImageSpaceModifier
							tempGlobalVariable02.SetValueInt(tempGlobalVariable02.GetValueInt() + 1)
							tempImageSpaceModifier.Apply()
						EndWhile
						 IndexInIn += 1
					EndWhile
					Else
						IndexInIn = 6
					Endif
			Else
				ImageSpaceModifier tempImageSpaceModifier = tempFormList03.GetAt(indexIn) as ImageSpaceModifier
				While (random02 > tempGlobalVariable02.GetValueInt())
					tempGlobalVariable02.SetValueInt(tempGlobalVariable02.GetValueInt() + 1)
					tempImageSpaceModifier.Apply()
				EndWhile
			EndIf
			indexIn += 1
		EndWhile
		indexOut += 1
	EndWhile
	Debug.Notification("Preset Generation Completed")
EndFunction

Function RemoveCurrent()
	int indexOut = 0
	While (BradCurrent.GetSize() > indexOut)
		FormList tempFormList01 = BradCurrent.GetAt(indexOut) as FormList
		int indexIn = 0
		While(tempFormList01.GetSize() > indexIn)
			GlobalVariable tempGlobalVariable01 = tempFormList01.GetAt(indexIn) as GlobalVariable
			tempGlobalVariable01.SetValueInt(0)
			indexIn += 1
		EndWhile
		indexOut += 1
	EndWhile
EndFunction

Function RemoveAllEffects()
	Debug.Notification("Removing Current Settings")
	FormList tempFormList01 = BradLoad.GetAt(0) as FormList
	FormList tempFormList02 = BradLoad.GetAt(1) as FormList
	int index = 0
	if (BradIsRGBDisabled.GetValueInt() == 1)
		index = 305
	EndIf
	While (BradRemoveAllEffects.GetSize() > index)
		If (index % (BradRemoveAllEffects.GetSize() / SHOWINSECTIONSOF) == 0)
			Debug.Notification("Please Wait.. " + index + "/" + BradRemoveAllEffects.GetSize())
		EndIf
		ImageSpaceModifier tempImageSpaceModifier = BradRemoveAllEffects.GetAt(index) as ImageSpaceModifier
		tempImageSpaceModifier.Remove()
		index += 1
	EndWhile
	RemoveCurrent()
	Debug.Notification("All Effects Removed")
EndFunction