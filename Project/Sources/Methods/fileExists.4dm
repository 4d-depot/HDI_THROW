//%attributes = {}


#DECLARE($deferred : Boolean)

If (btnTrace)
	TRACE:C157
End if 

//Form.error:=New object("componentSignature"; "HDI1"; "errCode"; 2)

If ($deferred)
	
	If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
		throw:C1805(New object:C1471("componentSignature"; "xbox"; "errCode"; 600; "name"; Form:C1466.fileNames.currentValue; "path"; "/RESOURCES"; "deferred"; $deferred))
		throw:C1805(New object:C1471("componentSignature"; "HDI1"; "errCode"; 1; "deferred"; $deferred))
		throw:C1805(New object:C1471("componentSignature"; "HDI1"; "errCode"; 2; "deferred"; $deferred))
		//throw(Form.error)
	End if 
	
Else 
	
	Use (Storage:C1525.onErrCall)
		Storage:C1525.onErrCall.stack:=True:C214
	End use 
	
	
	If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
		throw:C1805(New object:C1471("componentSignature"; "xbox"; "errCode"; 600; "name"; Form:C1466.fileNames.currentValue; "path"; "/RESOURCES"))
		throw:C1805(New object:C1471("componentSignature"; "HDI1"; "errCode"; 1))
		throw:C1805(New object:C1471("componentSignature"; "HDI1"; "errCode"; 2))
	End if 
	
	Use (Storage:C1525.onErrCall)
		Storage:C1525.onErrCall.stack:=False:C215
	End use 
	
End if 