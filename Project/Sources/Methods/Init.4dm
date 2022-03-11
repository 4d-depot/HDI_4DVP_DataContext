//%attributes = {}

Form:C1466.trace:=False:C215

Form:C1466.people:=ds:C1482.People.all().toCollection().resize(1000)

Form:C1466.currentPeople:=ds:C1482.People.all().first()

Form:C1466.currentField:=""

InitVisibleObjects(False:C215)