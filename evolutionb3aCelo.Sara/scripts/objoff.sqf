_off = _this select 0;
_grp = group _off;
rscripts=rscripts+1;

_cap = [_off] execVM "scripts\submit.sqf";
if (local server) then 
{
	_off addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_off disableAI "MOVE";
	removeallweapons _off;
	_mark = format["M%1",_off];
	_search = createMarker [_mark, [-5000,-5000,0]];
	_search setMarkerType "Destroy";
	_search setMarkerText "Capture Officer";
	_search setMarkerColor "ColorBlue";
	_search setMarkerSize [0.5, 0.5];

	_trgobj3 = createTrigger ["EmptyDetector", position _off];
	_trgobj3 setTriggerActivation ["WEST", "PRESENT", true];
	_trgobj3 setTriggerArea [200, 200, 0, false];
	//_trgobj3 triggerAttachVehicle [_off];
	//_trgobj3 setTriggerStatements ["this", "", ""];
	//_trgobj3 setTriggerTimeout [5, 10, 7, true ];


	//player setpos position _trgobj3;
	for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
	{
		sleep 4.001;
	//	deleteMarker _search;
		//hint format ["%1",list _trgobj3];
		//waitUntil {count list _trgobj3 > 0};
		if (count list _trgobj3 > 0) then {_search setMarkerPos position _off};
		//waitUntil {count units _trgobj3 > 0};
		//hint "in ring";
	/*	_search = createMarker ["look", position _off];
		_search setMarkerType "Destroy";
		_search setMarkerText "Capture Officer";
		_search setMarkerColor "ColorBlue";
		_search setMarkerSize [0.5, 0.5];
	*/	
		_trgobj3 setpos position _off;

		if ((group _off) != _grp) then {_loop=1};
		if (not (alive _off)) then {_loop=1};
	};
	deletevehicle _trgobj3;
	deletemarker _search;
};

rscripts=rscripts-1;