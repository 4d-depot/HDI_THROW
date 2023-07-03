
var $folder : 4D:C1709.Folder
var $path : Text

If (btnTrace)
	TRACE:C157
End if 


$folder:=Folder:C1567("/RESOURCES/en.lproj")
$path:=$folder.platformPath
SHOW ON DISK:C922($path)
