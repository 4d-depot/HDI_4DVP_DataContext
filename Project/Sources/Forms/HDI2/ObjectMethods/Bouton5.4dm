If (FORM Event:C1606.code=On Clicked:K2:4)
	
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	
	// Gets the data context and updates the currentPeople object with it.
	Form:C1466.currentPeople:=VP Get data context("VPCurrentPeople")
	
End if 
