_player = _this select 0;
_grp = _this select 1;
rscripts=rscripts+1;

_name = name _player;
_i=0;
while {_i <= 1799} do 
{	
	_i = _i+1;
	if (_name == dunit) then {_i = 1800};
	sleep 1.0;
};
sleep 4.0;
//dunit="none";
_handle = [_grp] execVM "scripts\delete.sqf";
rscripts=rscripts-1;
