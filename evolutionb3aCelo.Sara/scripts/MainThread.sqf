if (not (local server)) exitwith {};
_counter = 0;
_oldhour = param2;
rscripts=rscripts+1;

EVO_Weath =
{
	if ((position rainy select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy setpos [_randx,_randy,0];
		//rainy setDir _rnddir;
		//"rainmark" setMarkerDir _rnddir;
	};
	if ((position rainy2 select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy2 setpos [_randx,_randy,0];
		//rainy2 setDir _rnddir;
		//"rainmark2" setMarkerDir _rnddir;
	};
	if ((position rainy3 select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy3 setpos [_randx,_randy,0];
		//rainy3 setDir _rnddir;
		//"rainmark3" setMarkerDir _rnddir;
	};	
	rainy  setpos [(position rainy select 0)+10,(position rainy select 1),0];"rainmark" setMarkerPos position rainy;
	rainy2 setpos [(position rainy2 select 0)+10,(position rainy2 select 1),0];"rainmark2" setMarkerPos position rainy2;
	rainy3 setpos [(position rainy3 select 0)+10,(position rainy3 select 1),0];"rainmark3" setMarkerPos position rainy3;
	/*
	if(_counter == 0) then
	{
		_randx = 8000+(random 12000);
		_randy = 12000+(random 3000);
		_rnddir = (random 359);
		//foggy setDir _rnddir;
		//"fogmark" setMarkerDir _rnddir;
		foggy setpos [_randx,_randy,0];
		"fogmark" setMarkerPos position foggy;
		_counter = 200;
	};
	_counter = (_counter - 1);
	*/
};

EVO_listplayers = 
{
	_list = list allgroups;
	Playerlist = [];
	_i=0;
	while {_i < (count _list)} do 
	{
	
		_unit = _list select _i;
		if(not (_unit isKindOf "Man")) then
		{		
			{if (isPlayer _x) then {Playerlist = Playerlist + [_x]}} forEach crew _unit;
		}
		else
		{
			if (isPlayer _unit) then {Playerlist = Playerlist + [_unit]};
		};
		_i=_i+1;
	};
	//hint format["%1",Playerlist];
	Playercount = count Playerlist;
	if(Playercount == 0) then {Playercount = 1};
	Playerlist;
};

//score
EVO_Score =
{
	//_type = list allgroups;
	_PlayerL = [] call EVO_listplayers;
	_i = 0;
	_max = count _PlayerL;
	//titleText [format ["match: %1 %2",_unitname,name _unit],"plain down"];
	while {_i < _max} do 
	{	_unit = _PlayerL select _i;
		if (alive _unit and (score _unit) > 0) then 
		{
			_idx = scores find (name _unit);
			if(_idx > -1) then 
			{	
				scores set [(_idx+1), score _unit]
			}
			else
			{
				scores = scores + [name _unit,score _unit]
			};
		};
		_i = _i + 1;
		sleep 0.2;
	};
};



//hoover
EVO_Clean =
{
	_Objects = position rec nearObjects 50;
	{if (_x isKindOf "WeaponHolder") then {deletevehicle _x}} forEach _Objects;
	_Objects = position ab1 nearObjects 50;
	{if (_x isKindOf "WeaponHolder") then {deletevehicle _x}} forEach _Objects;
	/*
	_list = position dump nearObjects 20;
	_debug = localize format["dumping = %1",_list];
	{if (_x isKindOf "Man") then {deletevehicle _x}} forEach _list;
	
	_mark = format["%1mash",dunit];
	deleteMarker _mark;
	_mark = format["%1farp",dunit];
	deleteMarker _mark;
	*/	
};

EVO_timesync =
{
	gdate = date;
	gdate_packed = str (gdate); publicvariable "gdate_packed";
	_oldhour = (date select 3);
};

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{	
	_time = time;
	//hint "weath";
	[] call EVO_Weath;
	//hint "";
	sleep 1.011;
	[] call EVO_Score;
	sleep 1.011;
	[] call EVO_Clean;
	sleep 1.011;
	if (_oldhour != (date select 3)) then {[] call EVO_timesync};
	_newtime = time - _time;
	//hint format["time takin %1",_newtime];
	
};