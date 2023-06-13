



If (btnTrace)
	TRACE:C157
End if 

//emptyStorage

ON ERR CALL:C155("processError")

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		throw:C1805(Form:C1466.codes.currentValue; Form:C1466.descriptions.currentValue)
		
End case 

ASSERT:C1129(Storage:C1525.onErrCall.errors.length#0)

//If (Storage.onErrCall.errors.length#0)
//Form.errCode:=Storage.onErrCall.errors[0].errCode
//Form.message:=Storage.onErrCall.errors[0].message
//End if 


//Form.errors:=Storage.onErrCall.errors
//Form.countOnErrCall:=Storage.onErrCall.count
//Storage.onErrCall.errors.length