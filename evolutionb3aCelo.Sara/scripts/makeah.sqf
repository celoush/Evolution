if (not (local server)) exitwith {};
rscripts=rscripts+1;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	_starts = [ka1,ka2,ka3,ka4];
	//_poscreate = position (_starts select (round random 3));
	_poscreate = position mresc;
	_pilot = createGroup (west);
	
	"SoldierWPilot" createUnit [position tpos2, _pilot];
	"SoldierWPilot" createUnit [position tpos2, _pilot];
	_recy = [_pilot] execVM "scripts\grpRecycle.sqf";
	//if(isNull (units _pilot select 0)) exitWith {};
	_heli = createVehicle ["AH1W", _poscreate, [], 0, "NONE"];
	//_heli setpos [getpos _heli select 0, getpos _heli select 1, 1500];
	_heli setdir (random 359);
	_heli engineon true;
	
	_sumark = [_heli] execVM "scripts\sumarker.sqf";
	(units _pilot select 1) assignAsDriver _heli;
	(units _pilot select 0) assignAsGunner _heli;

	(units _pilot select 1) moveInDriver _heli;
	(units _pilot select 0) moveInGunner _heli;
	//player moveInGunner _heli;

	//_pilot setSpeedMode "LIMITED";
	//_pilot setCombatMode "RED";
	{_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _pilot);
	_heli addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_handle = [_pilot] execVM "scripts\flightpath.sqf";

	sleep 10.0;
	waitUntil {not (alive _heli) or isNull (driver _heli)};
	if (alive _heli) then {_heli setdammage 1};
	sleep 1.0; //1 hour
};

