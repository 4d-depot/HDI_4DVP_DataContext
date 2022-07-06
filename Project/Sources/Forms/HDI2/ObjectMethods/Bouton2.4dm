
var $area : Text

$area:="VPPeople"

If (Form:C1466.trace)
	TRACE:C157
End if 

// Set the data context with the Form.people collection and generate automtically the columns
VP SET DATA CONTEXT($area; ds:C1482.People.all().toCollection(); New object:C1471("autoGenerateColumns"; True:C214))

// Resize automatically the columns
VP COLUMN AUTOFIT(VP Column($area; 0; 15))
VP SET ROW ATTRIBUTES(VP Column($area; 15); New object:C1471("height"; 50))