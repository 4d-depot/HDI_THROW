



If (btnTrace)
	TRACE:C157
End if 


ON ERR CALL:C155("processError")

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		throw:C1805(Form:C1466.codes.currentValue; Form:C1466.descriptions.currentValue)
		
End case 

ASSERT:C1129(Storage:C1525.onErrCall.errors.length#0)

