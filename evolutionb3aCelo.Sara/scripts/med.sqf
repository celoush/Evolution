_unit = objNull;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	sleep 1.023;
	_list = list allgroups;
	_div = [];
	_i=0;
	while {_i < (count _list)} do 
	{
		_unit = _list select _i;
		//if(isPlayer _unit and _unit isKindOf "Man") then
		if(not (_unit isKindOf "Man")) then
		{		
			{_div = _div + [_x]} forEach crew _unit;
		}
		else
		{
			_div = _div + [_unit];
		};
		_i=_i+1;
		sleep 0.1;
	};
	_i=0;
	while {_i < (count _div)} do 
	{
		_unit = _div select _i;
		if(isPlayer _unit) then
		{
			_tag = format["m%1",dunit];
			deleteMarkerLocal _tag;
			_tag = format["m%1",name _unit];
			deleteMarkerLocal _tag;
			if ((getdammage _unit) >= 0.05 and alive _unit) then
			{	
				_pos = position vehicle _unit;
				_mssg = format["%1 requires a medic",(name _unit)];
				_medmark = createMarkerLocal [_tag, _pos];
				_medmark setMarkerShapeLocal "ICON";
				_medmark setMarkerTypeLocal "Marker";
				_medmark setMarkerColorLocal "ColorRedAlpha";
				_medmark setMarkerTextLocal _mssg;
				_medmark setMarkerSizeLocal [0.5, 0.5];
				_medmark setMarkerDirLocal 45;
			};
		};
		_i=_i+1;
		sleep 0.1;
	};
};