//%attributes = {}
// Apply the style of the VPAllPeople area
var $js; $answer; $area : Text

$area:="VPPeople"

// Apply the picture style to the cells that contains a picture
PictureCellStyle($area; 15; 0; 1; Form:C1466.people.length)

VP SET DEFAULT STYLE($area; New object:C1471("vAlign"; vk vertical align center:K89:50))
VP SET WORKBOOK OPTIONS($area; New object:C1471("autoFitType"; vk auto fit type cell with header:K89:134))
VP SET CELL STYLE(VP Column($area; 1); New object:C1471("formatter"; vk pattern short date:K89:10))
VP SET COLUMN ATTRIBUTES(VP Column($area; 15); New object:C1471("width"; 50))
VP SET ROW ATTRIBUTES(VP Column($area; 15); New object:C1471("height"; 50))