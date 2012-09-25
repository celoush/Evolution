// by Xeno
private ["_crew","_delay","_disabled","_empty","_newveh","_number_v","_st","_startdir","_startpos","_type","_vehicle","_kind"];

if (!isServer) exitWith{};

_vehicle = _this select 0;
_delay = _this select 1;
_number_v = _this select 2;
_kind = _this select 3;
_empty = true;
_disabled = false;
_startpos = getpos _vehicle;
_startdir = getdir _vehicle;
_type = typeof _vehicle;

_st = "";

switch (_kind) do {
	case "MR": {
		_st = format ["MRR%1=this;this addAction [""Create Motorcycle"",""x_scripts\x_bike.sqf"",[],-1,false];this addeventhandler [""getin"", {_this execVM ""x_scripts\x_checkdriver_racs.sqf"";}];this addeventhandler [""getout"", {_this execVM ""x_scripts\x_checkdriverout.sqf"";}];", _number_v];
	};
};
_vehicle setVehicleInit _st;
processInitCommands;

while {true} do {
	sleep (_delay + random 15);
	
	_empty = true;
	_crew = crew _vehicle;
	if (({alive _x} count _crew) > 0) then {_empty = false;};
	
	_disabled = false;
	if (damage _vehicle > 0.86) then {
		_disabled = true;
	} else {
		if (_kind == "TR") then {
			_type = typeof _vehicle;
			switch (_type) do {
				case "Truck5tReammo": {
					_vehicle setAmmoCargo 1;
				};
				case "Truck5tRefuel": {
					_vehicle setFuelCargo 1;
				};
				case "Truck5tRepair": {
					_vehicle setRepairCargo 1;
				};
			};
		};
	};
	
	if ((_disabled && _empty) || !(alive _vehicle)) exitWith {
		sleep 0.1;
		_vehicle removeAllEventHandlers "killed";
		_vehicle removeAllEventHandlers "getin";
		_vehicle removeAllEventHandlers "getout";
		deletevehicle _vehicle;
		sleep 0.5;
		_vehicle = objNull;
		_newveh = _type createvehicle _startpos;
		_newveh setpos _startpos;
		_newveh setdir _startdir;
		
		nil = [_newveh, _delay, _number_v,_kind] execVM "x_scripts\x_vrespawn_racs.sqf";
	};
};


