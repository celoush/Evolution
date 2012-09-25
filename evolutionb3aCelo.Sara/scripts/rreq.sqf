_player = _this select 0;
_unitype = _this select 1;
_grp = group _player;

_unit = group _player createUnit [_unitype, position tpos1, [], 0, "NONE"];
_lone = [_unit] execVM 'scripts\nohuman.sqf';


_pos = position _player;

if(_player distance rec > 20) then 
{
	
	_vec = createVehicle ["ParachuteWest", _pos, [], 20, 'NONE'];
	_vec setpos [_pos select 0,_pos select 1,(_pos select 2)+ 100];
	_unit MoveInDriver _vec;
	WaitUntil {vehicle _unit == _unit};
	_unit setpos [(getpos _unit select 0),(getpos _unit select 1),0];
}
else
{
	_unit setpos [_pos select 0,(_pos select 1)+5,(_pos select 2)];
};

[_unit] join _grp;
runit = _unit;
publicVariable "runit";