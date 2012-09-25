if (not (local server)) exitwith {};
rscripts=rscripts+1;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	_starts = [ka1,ka2,ka3,ka4];
	_poscreate = position (_starts select (round random 3));


	_pilot = createGroup (east);
	"SoldierEPilot" createUnit [_poscreate, _pilot];
	_recy = [_pilot,"none",objNull] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
	//if(isNull (units _pilot select 0)) exitWith {};
	_heli = createVehicle ["Mi17", _poscreate, [], 5000, "FLY"];
	_heli setpos [getpos _heli select 0, getpos _heli select 1, 500];
	_heli setdir 180;
	_heli engineon true;

	//"MarianQuandt" createUnit [position tpos1, _pilot];
	(units _pilot select 0) assignAsDriver _heli;
	(units _pilot select 0) moveInDriver _heli;
	//(units _pilot select 0) setBehaviour "AWARE";
	_pilot setCombatMode "RED";

	_handle = [_pilot] execVM "scripts\flightpath.sqf";
	{_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _pilot);
	_heli addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];

	sleep 1.0;
	waitUntil {not (alive _heli) or isNull (driver _heli)};
	sleep 1.0;
	if (alive _heli) then {_heli setdammage 1;};
	if (alive (units _pilot select 0)) then {(units _pilot select 0) setdammage 1};
	sleep 1000.0;
};
