//%attributes = {}
var Infos : Collection
var objTabs : Object

var _DescriptionsInit : Collection
var _Directions : Collection

Infos:=ds:C1482.INFO.query("PageNumber < 10").orderBy("PageNumber").toCollection()
_DescriptionsInit:=Infos.extract("Description")



objTabs:=New object:C1471("values"; Infos.extract("TabTitle"); "index"; 0)

_DirectionsInit:=ds:C1482.INFO.query("PageNumber >= 10").orderBy("PageNumber").Description