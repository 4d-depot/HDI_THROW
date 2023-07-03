//%attributes = {}

var $errors; $shared : Collection


$errors:=Last errors:C1799
$shared:=$errors.copy(ck shared:K85:29; Storage:C1525.onErrCall.errors)

Use (Storage:C1525.onErrCall)
	Storage:C1525.onErrCall.errors.combine($shared)
End use 

Use (Storage:C1525.onErrCall)
	Storage:C1525.onErrCall.count+=1
End use 