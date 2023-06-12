//%attributes = {}

var $errors; $shared : Collection



If (Storage:C1525.onErrCall.stack)
	
	throw:C1805
	
Else 
	
	$errors:=Last errors:C1799
	$shared:=$errors.copy(ck shared:K85:29; Storage:C1525.onErrCall.errors)
	
	Use (Storage:C1525.onErrCall)
		Storage:C1525.onErrCall.errors.combine($shared)
	End use 
	
End if 


Use (Storage:C1525.onErrCall)
	Storage:C1525.onErrCall.count:=Storage:C1525.onErrCall.count+1
End use 