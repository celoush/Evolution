_all = list alleast;
_i = 0;
while {_i < count _all} do 
{	
	_unit = (_all select _i);
	{_x addEventHandler ["killed", {handle = [_x] execVM "scripts\bury.sqf"}]} foreach ([_unit] + crew _unit);
	_i = _i + 1;
};








