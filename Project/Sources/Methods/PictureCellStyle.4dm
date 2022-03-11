//%attributes = {}
#DECLARE($area : Text; $column : Integer; $row : Integer; $columnCount : Integer; $rowCount : Integer)
// Creation of a custom cell type to display the picture as background image 
// This custom cell type must be apply on all the cell where an image need to be displayed

var $answer; $js : Text

$js:="function PictureCellType() {"
$js+="    this.typeName = 'ImageCellType';"
$js+="}"
$js+="PictureCellType.prototype = new GC.Spread.Sheets.CellTypes.Base();"
$js+="PictureCellType.prototype.paint = function (ctx, value, x, y, w, h, style, context) {"
$js+="    style.backgroundImage = String(value);"
$js+="    style.backgroundImageLayout = GC.Spread.Sheets.ImageLayout.stretch;"
$js+="    GC.Spread.Sheets.CellTypes.Text.prototype.paint.apply(this, [ctx, '', x, y, w, h, style, context]);"
$js+="};"
$js+="var pictureCellType = new PictureCellType(); "
$js+="Utils.currentSheet.getRange("+String:C10($row)+","+String:C10($column)+","+String:C10($rowCount)+","+String:C10($columnCount)+").cellType(pictureCellType);"

$answer:=WA Evaluate JavaScript:C1029(*; $area; $js)