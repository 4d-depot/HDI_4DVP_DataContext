Case of 
		
	: (FORM Event:C1606.code=On Load:K2:1)
		
		InitInfo
		
		Init
		
	: (FORM Event:C1606.code=On Page Change:K2:54)
		
		Case of 
			: (FORM Get current page:C276=2)
				InitVisibleObjects(True:C214; False:C215; True:C214)
			: (FORM Get current page:C276=3)
				InitVisibleObjects(True:C214; True:C214; False:C215)
				
			Else 
				InitVisibleObjects(False:C215; False:C215; False:C215)
				
		End case 
End case 


