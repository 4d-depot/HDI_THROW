//%attributes = {}




If (btnTrace)
	TRACE:C157
End if 

If (Not:C34(File:C1566("/RESOURCES/"+Form:C1466.fileNames.currentValue).exists))
	throw:C1805({componentSignature: "HDI1"; errCode: 1; name: Form:C1466.fileNames.currentValue; path: "/RESOURCES"; deferred: True:C214})
	throw:C1805({componentSignature: "HDI1"; errCode: 2; deferred: True:C214})
	throw:C1805({componentSignature: "HDI1"; errCode: 3; deferred: True:C214})
End if 

