_unit = _this select 0;
_leader = gunner _unit;
_group = group _leader;
_unitm = format ["%1", _unit];
_markerobj = createMarker[_unitm,[getpos _unit select 0,getpos _unit select 1]];
_markerobj setMarkerType  "Dot";
_markerobj setMarkerDir 45;
_markerobj setMarkerColor "ColorRedAlpha";
_markerobj setMarkerText localize "EVO_042";
rscripts=rscripts+1;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	if (not canmove _unit) exitwith {deleteMarker _markerobj};
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerPos [getpos _unit select 0,getpos _unit select 1];
	sleep 1.0;
	_markerobj setMarkerColor "ColorRedAlpha";
	//(units _group select 2) setpos [(getpos _unit select 0),(getpos _unit select 1),(getpos _unit select 2)+150];
	//player setpos [(getpos _unit select 0),(getpos _unit select 1),(getpos _unit select 2)+50];
	sleep 1.0;
};
rscripts=rscripts-1;