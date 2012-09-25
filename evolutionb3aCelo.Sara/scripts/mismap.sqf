_pos  = _this select 0;
_type = _this select 1;

if(_type == 0) then
{
	cutRsc ["Offensive","PLAIN"];
};
if(_type == 1) then
{
	cutRsc ["Defend","PLAIN"];
};
if(_type == 2) then
{
	cutRsc ["Sabotage","PLAIN"];
};

//_map = createDialog "QuickMap1";
//_ad=finddisplay 1901;
//_ad displaySetEventHandler["KeyDown", "closeDialog 0;closeDialog 1;hint """""];

 _ctrl = MSD8_display displayctrl MSD8_MissionMapIDC;
//_ctrl = finddisplay 895;
_ctrl ctrlmapanimadd [0,0.20,getmarkerpos "missions"];
ctrlmapanimcommit _ctrl;
_ctrl ctrlmapanimadd [5,0.90,_pos];
ctrlmapanimcommit _ctrl;
Waituntil {ctrlMapAnimDone _ctrl};
_ctrl ctrlmapanimadd [5,0.20,_pos];
ctrlmapanimcommit _ctrl;
Waituntil {ctrlMapAnimDone _ctrl};
/*

  _ctrl = MSD8_display displayctrl MSD8_MissionMapIDC;
  ctrlMapAnimClear _ctrl; // reset while scrolling list
  
  _ctrl ctrlmapanimadd [0, 0.30, _basePos]; // show home base
  ctrlmapanimcommit _ctrl;
  
  _ctrl ctrlmapanimadd [1.2, 0.90, _objPos]; // show mission location
  ctrlmapanimcommit _ctrl;
  //Waituntil {ctrlMapAnimDone _ctrl};
  
  _ctrl ctrlmapanimadd [0.2, 0.20, _objPos]; // zoom mission location
  ctrlmapanimcommit _ctrl;
  //Waituntil {ctrlMapAnimDone _ctrl};  
*/