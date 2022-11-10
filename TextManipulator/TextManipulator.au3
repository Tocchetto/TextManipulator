#include "Interface.au3"
#include <String.au3>
	
Func HandleBtnCapitalize()
	$sSourceString = GUICtrlRead($edtSourceString)

	GUICtrlSetData($edtFormatedString, _StringTitleCase($sSourceString))
EndFunc

Func HandleBtnUpper()
	$sSourceString = GUICtrlRead($edtSourceString)
	
	GUICtrlSetData($edtFormatedString, StringUpper($sSourceString))	
EndFunc

Func HandleBtnLower()
	$sSourceString = GUICtrlRead($edtSourceString)
	
	GUICtrlSetData($edtFormatedString, StringLower($sSourceString))
EndFunc

Func HandleBtnSarcasm()
	$sSourceString = GUICtrlRead($edtSourceString)
	$sOutputString = ""
	
	$aSourceStringCharacters = StringSplit($sSourceString, "")
	For $n = 1 To $aSourceStringCharacters[0]
		If Mod($n, 2) Then
			$sOutputString = $sOutputString & StringUpper($aSourceStringCharacters[$n])
		Else
			$sOutputString = $sOutputString & StringLower($aSourceStringCharacters[$n])
		EndIf
	Next
	
	GUICtrlSetData($edtFormatedString, $sOutputString)
EndFunc

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $btnCapitalize
			HandleBtnCapitalize()
		Case $btnUpper
			HandleBtnUpper()
		Case $btnLower
			HandleBtnLower()
		Case $btnSarcasm
			HandleBtnSarcasm()
	EndSwitch
WEnd