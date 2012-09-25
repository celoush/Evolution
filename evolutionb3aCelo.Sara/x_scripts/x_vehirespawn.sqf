// by Xeno
private ["_crew","_delay","_disabled","_empty","_moved","_newveh","_startdir","_startpos","_type","_vehicle"];
if (!isServer) exitWith{};

_vehicle = _this select 0;
_delay = _this select 1;
_empty = true;
_disabled = false;
_moved = false;
_startpos = getpos _vehicle;
_startdir = getdir _vehicle;
_type = typeof _vehicle;

while {true} do {
	sleep (_delay + random 15);

	_moved = false;
	if (_vehicle distance _startpos > 5) then {
		_moved = true;
	};
	
	_empty = true;
	_crew = crew _vehicle;
	if (({alive _x} count _crew) > 0) then {_empty = false;};
	
	_disabled = false;
	if (damage _vehicle > 0) then {
		_disabled = true;
	};
	
	if ((_disabled && _empty) || (_moved && _empty) || !(alive _vehicle)) exitWith {
		deletevehicle _vehicle;
		sleep 0.5;
		_newveh = _type createvehicle _startpos;
		_newveh setpos _startpos;
		_newveh setdir _startdir;

		nil = [_newveh, _delay] execVM "x_scripts\x_vehirespawn.sqf";
	};
};
