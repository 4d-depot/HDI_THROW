



If (btnTrace)
	TRACE:C157
End if 

emptyStorage

ON ERR CALL:C155("processError")

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		throw:C1805(Form:C1466.codes.currentValue; Form:C1466.descriptions.currentValue)
		
End case 

If (Storage:C1525.onErrCall.errors.length#0)
	Form:C1466.errCode:=Storage:C1525.onErrCall.errors[0].errCode
	Form:C1466.message:=Storage:C1525.onErrCall.errors[0].message
End if 


//Form.errors:=Storage.onErrCall.errors
Form:C1466.countOnErrCall:=Storage:C1525.onErrCall.count