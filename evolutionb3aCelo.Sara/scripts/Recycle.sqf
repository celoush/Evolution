_player = _this select 0;
_object = _this select 1;
rscripts=rscripts+1;

_name = name _player;

_i=0;
while {_i <= 1799} do 
{	
	_i = _i+1;
	if (_name == dunit) then {_i = 1800};
	if (isNull _object) exitWith {rscripts=rscripts-1;};
	if (side _object == west) exitWith {rscripts=rscripts-1;};
	sleep 1.0;
};
sleep 4.0;
//dunit="none";
deletevehicle _object;
rscripts=rscripts-1;

