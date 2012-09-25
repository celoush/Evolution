_unit = _this select 0;
_bomb = (nearestObject [_unit, "Bo_GBU12_LGB"]);
//hint format["%1",_bomb];
_pos = [0,0,0];
_score = score player;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	if(isNull _bomb) then {_loop=1} else {
	_pos = position _bomb;
	_score = score player
	};
	sleep 1.0;
};
_bmark3 = createMarker ["test", _pos];
_bmark3 setMarkerShape "ICON";
_bmark3 setMarkerType "Destroy";
_bmark3 setMarkerColor "ColorRed";

_laser = (nearestObject [_pos, "LaserTarget"]);
//hint format["%1",_pos];
if(isNull _laser) exitWith {};
sleep 1.0;

_nscore = score player;
_total = _nscore - _score;

lunit = _laser;
lpoint = round (_total/2);
player addscore (-lscore);
//hint format["%1 %2",_laser,_total];
publicVariable "lunit";
publicVariable "lpoint";




