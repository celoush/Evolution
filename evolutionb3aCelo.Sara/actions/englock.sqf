_vec = _this select 0;
_ver = _this select 3;
_vec removeaction elock;

//if(not (_vec isKindOf "Air")) exitwith {};


if(_ver == 0) then
{
	elock = _vec addaction ["Unlock Truck", "actions\englock.sqf",1,1, false, true,"test2"];
	_vec lock true;
};
if(_ver == 1) then
{	
	elock = _vec addaction ["Lock Truck", "actions\englock.sqf",0,1, false, true,"test2"];
	_vec lock false;
};