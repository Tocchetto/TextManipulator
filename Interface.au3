;Interface.au3

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Users\Zelp\Documents\git\ZelpTools\deps\TextManipulator\Interface\Form1.kxf
$Form2 = GUICreate("Text Manipulator", 698, 293, 819, 371)
$edtSourceString = GUICtrlCreateEdit("", 8, 8, 297, 273)
$edtFormatedString = GUICtrlCreateEdit("", 392, 8, 297, 273)
$btnCapitalize = GUICtrlCreateButton("Capitalize", 312, 8, 75, 25)
$btnUpper = GUICtrlCreateButton("Upper", 312, 40, 75, 25)
$btnLower = GUICtrlCreateButton("Lower", 312, 72, 75, 25)
$btnSarcasm = GUICtrlCreateButton("Sarcasm", 312, 104, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

GUICtrlSetData($edtSourceString, "")
GUICtrlSetData($edtFormatedString, "")