_grp  = createGroup (west);
_pos = (getmarkerpos "respawn_west");
//player saveIdentity "playerid";
//hint format["%1",playerid];
_newBody = _grp createUnit ["SoldierWPilot", _pos, [], 0, "NONE"];
_newBody setIdentity "thedood";
[_newbody] join _grp;
setPlayable _newBody;
sleep 1.0;

_wp1 = _grp addWaypoint [_pos, 30];
_wp2 = _grp addWaypoint [_pos, 30];
_wp3 = _grp addWaypoint [_pos, 30];
_wp4 = _grp addWaypoint [_pos, 30];
[_grp, 4] setWaypointType "CYCLE";
[player] join _grp;
//[_newBody] JOIN _oldgroup;
//setPlayable _newBody;


//_newBody setVehicleVarName "aP"
