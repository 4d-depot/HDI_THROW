



If (btnTrace)
	TRACE:C157
End if 


ON ERR CALL:C155("processError")

Form:C1466.result:="This file exists"

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
			Form:C1466.result:="This file does not exists"
			throw:C1805({componentSignature: "HDI1"; errCode: 1; name: Form:C1466.fileNames.currentValue; path: "/RESOURCES"})
		End if 
		
End case 

