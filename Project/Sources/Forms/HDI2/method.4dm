

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		initInfo
		
		Form:C1466.codes:=New object:C1471()
		Form:C1466.codes.values:=New collection:C1472(1; 2; 3)
		Form:C1466.codes.index:=0
		
		Form:C1466.descriptions:=New object:C1471()
		Form:C1466.descriptions.values:=New collection:C1472(""; "I am an error"; "I am another error")
		Form:C1466.descriptions.index:=0
		
		Form:C1466.fileNames:=New object:C1471()
		Form:C1466.fileNames.values:=New collection:C1472("existingFile.json"; "notExistingFile.json")
		Form:C1466.fileNames.index:=0
		
		emptyStorage
		
		READ WRITE:C146(*)
		
		manageTexts
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		emptyStorage
		
End case 

