if (not (local server)) exitwith {};
rscripts=rscripts+1;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	_starts = [ka1,ka2,ka3,ka4];
	_poscreate = position (_starts select (round random 3));
	
	_pilot = createGroup (east);
	
	"SoldierEPilot" createUnit [position tpos2, _pilot];
	"SoldierEPilot" createUnit [position tpos2, _pilot];
	_recy = [_pilot,"none",objNull] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
	//if(isNull (units _pilot select 0)) exitWith {};
	_heli = createVehicle ["Su34B", _poscreate, [], 100, "FLY"];
	_heli setpos [getpos _heli select 0, getpos _heli select 1, 200];
	_heli setdir (random 359);
	_heli engineon true;
	_vec setVelocity [200, 0, 0];
	_sumark = [_heli] execVM "scripts\sumarker.sqf";
	(units _pilot select 0) assignAsDriver _heli;
	(units _pilot select 1) assignAsGunner _heli;

	(units _pilot select 0) moveInDriver _heli;
	(units _pilot select 1) moveInGunner _heli;
	//player moveInGunner _heli;

	//_pilot setSpeedMode "LIMITED";
	_pilot setCombatMode "RED";
	{_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _pilot);
	_heli addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_handle = [_pilot] execVM "scripts\flightpath.sqf";

	sleep 10.0;
	waitUntil {not (alive _heli) or isNull (driver _heli)};
	if (alive _heli) then {_heli setdammage 1};
	sleep 600.0; //10 mins
};

