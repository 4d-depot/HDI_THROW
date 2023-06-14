
var $folder : 4D:C1709.Folder
var $path : Text


If (btnTrace)
	TRACE:C157
End if 


$folder:=Folder:C1567("/RESOURCES")
$path:=$folder.platformPath+"Errors.xlf"
SHOW ON DISK:C922($path)
