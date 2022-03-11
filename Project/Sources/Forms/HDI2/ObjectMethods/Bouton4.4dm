If (FORM Event:C1606.code=On Clicked:K2:4)
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	
	// set the data context with the modified value of currentPeople
	VP SET DATA CONTEXT("VPCurrentPeople"; Form:C1466.currentPeople)
End if 