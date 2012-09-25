_grp= _this select 0;
rscripts=rscripts+1;
_time = 1.0 + (random 2.5);
_all = units _grp;
_count = (count units _grp)-1;
sleep _time;
while {_count >= 0} do 
{
	_man = (units _grp select _count);
	_unit = vehicle _man;
	if (not (_unit isKindOf "Man") and not (isNull _unit)) then
	{
		deletevehicle _unit;
		_man removeAllEventHandlers "killed";
		deletevehicle _man;
	};
	if ((_unit isKindOf "Man") and not (isNull _unit)) then
	{
		_man removeAllEventHandlers "killed";
		deleteVehicle _unit;
	};
	_count = _count-1;
};
deleteGroup _grp;
rscripts=rscripts-1;










