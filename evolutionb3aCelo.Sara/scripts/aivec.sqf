_this = _this select 0;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	sleep 1.031;
	//hint format ["inloop %1 %2",_this,alive _this];
	Waituntil {vehicle _this != _this and _this == driver (vehicle _this) or not alive _this};
	if (not alive _this) then {_loop=1};
	handle = [_this,vehicle _this] execVM "scripts\VecInit.sqf";
};