//%attributes = {}
var $area : Text
$area:="VPCurrentPeople"

VP SET DEFAULT STYLE($area; New object:C1471("vAlign"; vk vertical align center:K89:50))
VP SET SHEET OPTIONS($area; New object:C1471("isProtected"; True:C214; "colHeaderVisible"; False:C215; "rowHeaderVisible"; False:C215))
VP SET WORKBOOK OPTIONS($area; New object:C1471("showVerticalScrollbar"; False:C215; "showHorizontalScrollbar"; False:C215))

$combine:=VP Combine ranges(VP Cell($area; 1; 1); VP Cell($area; 1; 3); VP Cell($area; 1; 5); VP Cell($area; 1; 7); VP Cell($area; 1; 9); VP Cell($area; 1; 11); VP Cell($area; 1; 13); VP Cell($area; 1; 15))
VP SET ROW ATTRIBUTES($combine; New object:C1471("height"; 40))
VP SET CELL STYLE($combine; New object:C1471("locked"; False:C215))
VP SET BORDER($combine; New object:C1471("color"; "black"; "style"; vk line style thin:K89:39); New object:C1471("outline"; True:C214))

// Resize automatically the columns
VP SET COLUMN ATTRIBUTES(VP Column($area; 0); New object:C1471("width"; 100))
VP SET COLUMN ATTRIBUTES(VP Column($area; 1); New object:C1471("width"; 200))

VP SET SELECTION(VP Cell($area; 1; 1))