
 _sco = score player;
 _mrank = 0;
 _cost = 0;
if(_sco >= rank1) then 
{
 	_mrank = rank1;
 	_cost = _mrank/10;
};
if(_sco >= rank2) then 
{
	_mrank = rank2;
	_cost = _mrank/10;
};
if(_sco >= rank3) then 
{
	_mrank = rank3;
	_cost = _mrank/10;
};
if(_sco >= rank4) then 
{
	_mrank = rank4;
	_cost = _mrank/10;
};
if(_sco >= rank5) then 
{
	_mrank = rank5;
	_cost = _mrank/10;
};
if(_sco >= rank6) then 
{
	_mrank = rank6;
	_cost = _mrank/10;
};  


if (((score player)-_mrank) < _cost) exitWith 
{	
	hint format["You do not have the required spare points \nRequired: %1 \nCurrent: %2",_cost, ((score player)-_mrank)];
};
player addscore -_cost;
_txt = format["%1 Points deducted",_cost];
titleCut [_txt,"black faded", 0];
_zone = getmarkerpos "halo";
_base = "Bus_city" createVehicleLocal [_zone select 0,_zone select 1,12000];
_base setpos [_zone select 0,_zone select 1,12000];
player moveInCargo _base; 
_hump = [] execVM "aahalo\jump.sqf";
waitUntil {Vehicle player == player};
deletevehicle _base;