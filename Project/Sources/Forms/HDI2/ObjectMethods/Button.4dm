



If (btnTrace)
	TRACE:C157
End if 

//emptyStorage

ON ERR CALL:C155("processError")

Form:C1466.result:="This file exists"


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
			Form:C1466.result:="This file does not exists"
			throw:C1805(New object:C1471("componentSignature"; "xbox"; "errCode"; 600; "name"; Form:C1466.fileNames.currentValue; "path"; "/RESOURCES"))
		End if 
		
		
End case 

//If (Storage.onErrCall.errors.length#0)
//Form.code:=Storage.onErrCall.errors[0].errCode
//Form.result:=Storage.onErrCall.errors[0].message
//End if 


//Form.errors:=Storage.onErrCall.errors
//Form.countOnErrCall:=Storage.onErrCall.count