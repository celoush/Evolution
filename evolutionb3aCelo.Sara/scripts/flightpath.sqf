_grp = _this select 0;
_wp1 = _grp addWaypoint [[0,0,0], 10];
[_grp, 1] setWaypointStatements ["never", ""];
rscripts=rscripts+1;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{

	_allobj = ["usaf","mobj1","mobj2","mobj3","mobj4","mobj5","mobj6","mobj7","mobj8","mobj9","mobj10","mobj11"];
	_currentobj = [];
	_max = count _allobj;
	_i = 0;
	while {_i < _max} do 
	{
		_marker = (_allobj select _i);
		_pos = getMarkerPos _marker;
		if ((_pos select 0) != 0) then 
		{
			_currentobj = _currentobj + [_marker];

		};
		_i = _i + 1;
	};
	_max = count _currentobj;
	_r = round random (_max - 1);
	_rand =  _currentobj select _r;
	_pos = getMarkerPos _rand;
	//if (debug) then {hint format["%1 going to %2 in %3",_grp,_rand,TypeOf vehicle leader _grp]};
	[_grp, 1] setWaypointPosition [_pos, 0];
	_grp setSpeedMode "LIMITED";
	if ((date select 3) < 4 or (date select 3) > 20) then
	{
		_grp setBehaviour "CARELESS";
		vehicle (units _grp select 0) action ["LIGHT ON",vehicle (units _grp select 0)];
	};
	else;
	{
		//_grp setBehaviour "CARELESS";
	};
	(units _grp select 0) commandFollow (units _grp select 0);
	Waituntil {(leader _grp) distance _pos < 200 or (count units _grp) == 0};
	if ((count units _grp) == 0) then {_loop=1;};	
	//vehicle (units _grp select 0) setVehicleAmmo 1;
	sleep 10.0;
};
rscripts=rscripts-1;