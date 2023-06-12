



If (btnTrace)
	TRACE:C157
End if 

emptyStorage

ON ERR CALL:C155("processError")

Form:C1466.result:="This file exists"
Form:C1466.code:=Null:C1517

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
			throw:C1805(New object:C1471("componentSignature"; "xbox"; "errCode"; 600; "name"; Form:C1466.fileNames.currentValue; "path"; "/RESOURCES"))
		End if 
		
		
End case 

If (Storage:C1525.onErrCall.errors.length#0)
	Form:C1466.code:=Storage:C1525.onErrCall.errors[0].errCode
	Form:C1466.result:=Storage:C1525.onErrCall.errors[0].message
End if 


//Form.errors:=Storage.onErrCall.errors
Form:C1466.countOnErrCall:=Storage:C1525.onErrCall.count