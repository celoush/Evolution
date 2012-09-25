_radio = _this select 0;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	sleep 1.0;
	//_bomb = (nearestObject [_radio, "PipeBomb"]);
	_bomb = (_radio nearObjects ["PipeBomb",10]) select 0;
	
	//hint format["%1 %2",nearestObjects [_radio, ["PipeBomb"], 20],_list]
	
	if(not isNull _bomb) then 
	{
		//latk = (_bomb nearObjects ["Man",10]) select 0;
		latk = nearestObject [_bomb, "Man"];
		//hint format["%1 %2",_bomb,latk];
		WaitUntil {not alive latk or isNull _bomb};
		if(isNull _bomb) then 
		{
			_radio removealleventhandlers "hit";
			sop = latk;
			sot = _radio;
			sor = 10;
			publicVariable "sop";
			publicVariable "sot";
			publicVariable "sor";
			_loop=1;
		};
		if((not alive latk) and (not isNull _bomb)) then {deletevehicle _bomb;latk = objNull};
	};
};