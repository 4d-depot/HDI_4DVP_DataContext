//%attributes = {}
var $area : Text
$area:="VPCurrentPeople"

Case of 
	: (FORM Event:C1606.code=On VP Ready:K2:59)
		
		VPCurrentPeopleStyle
		
		VP SET TEXT VALUE(VP Cell($area; 0; 1); "First name")
		VP SET BINDING PATH(VP Cell($area; 1; 1); "Firstname")
		
		
		VP SET TEXT VALUE(VP Cell($area; 0; 3); "Last name")
		VP SET BINDING PATH(VP Cell($area; 1; 3); "Lastname")
		
		
		VP SET TEXT VALUE(VP Cell($area; 0; 5); "Address")
		VP SET BINDING PATH(VP Cell($area; 1; 5); "Address")
		
		VP SET TEXT VALUE(VP Cell($area; 0; 7); "Zip Code")
		VP SET BINDING PATH(VP Cell($area; 1; 7); "ZipCode")
		
		VP SET TEXT VALUE(VP Cell($area; 0; 9); "City")
		VP SET BINDING PATH(VP Cell($area; 1; 9); "City")
		
		VP SET TEXT VALUE(VP Cell($area; 0; 11); "Country")
		VP SET BINDING PATH(VP Cell($area; 1; 11); "Country")
		
		VP SET TEXT VALUE(VP Cell($area; 0; 13); "Phone")
		VP SET BINDING PATH(VP Cell($area; 1; 13); "Phone")
		
		VP SET TEXT VALUE(VP Cell($area; 0; 15); "Email")
		VP SET BINDING PATH(VP Cell($area; 1; 15); "email")
		
		VP SET DATA CONTEXT($area; Form:C1466.currentPeople)
		
End case 