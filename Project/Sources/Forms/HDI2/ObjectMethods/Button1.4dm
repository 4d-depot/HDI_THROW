



If (btnTrace)
	TRACE:C157
End if 

emptyStorage

ON ERR CALL:C155("processError")

Form:C1466.result:="This file exists"

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		fileExists(True:C214)
End case 

If (Storage:C1525.onErrCall.errors.length#0)
	Form:C1466.result:=Storage:C1525.onErrCall.errors[0].message
End if 

Form:C1466.errors:=Storage:C1525.onErrCall.errors

Form:C1466.countOnErrCall:=Storage:C1525.onErrCall.count