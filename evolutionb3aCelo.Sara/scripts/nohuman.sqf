if (not (local server)) exitwith {};
rscripts=rscripts+1;
_unit = _this select 0;

sleep 5.0;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	sleep 10.0;
	if(not isPlayer (leader group _unit)) then {_loop=1};
};
/*
if(vehicle _unit != _unit) then
{
	unassignVehicle _unit;
	_unit action ["Eject",(vehicle _unit)];
};
*/

_unit setDamage 1;
sleep 4.0;
if( not (isnull _unit)) then {server action ["HIDEBODY", _unit]};
rscripts=rscripts-1;

