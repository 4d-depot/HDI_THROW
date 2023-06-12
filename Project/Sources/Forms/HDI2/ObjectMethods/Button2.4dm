



If (btnTrace)
	TRACE:C157
End if 

emptyStorage

ON ERR CALL:C155("processError")

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		fileExists(False:C215)
End case 

Form:C1466.errors:=Storage:C1525.onErrCall.errors

Form:C1466.result:=Storage:C1525.onErrCall.count