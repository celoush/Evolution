_type = _this select 0;
_size = _this select 1;
_countdown = _this select 2;
//_mark = format["%1Bomb",(name player)];
EVO_GridRef = compile preprocessFile "TeamStatusDialog\GridRefCoords.sqf";

//hint format["%1 %2",_type,_size];

_bpos = getmarkerpos "btarg";
deleteMarkerLocal "btarg";
_base = "HeliHEmpty" createVehicle _bpos; //edit

sup = player;
sut = _type;
sur = [_base] call EVO_GridRef;

publicVariable "sut";
publicVariable "sur";
publicVariable "sup";

_k = createVehicle ["SmokeShellRed",_bpos, [], 0, "NONE"];
fmission = true;

_mark1 = format["%1Bomb1",(name player)];
_mark2 = format["%1Bomb2",(name player)];
_mark3 = format["%1Bomb3",(name player)];

_bmark3 = createMarker [_mark3, _bpos];
_bmark3 setMarkerShape "ELLIPSE";
_bmark3 setMarkerType "Destroy";
_bmark3 setMarkerColor "ColorRed";
//_bmark3 setMarkerSize [_size, _size];

_bmark3 setMarkerSize [200, 200];

_bmark2 = createMarker [_mark2, _bpos];
_bmark2 setMarkerShape "ICON";
_bmark2 setMarkerType "Marker";
_bmark2 setMarkerColor "ColorBlack";

_bmark = createMarker [_mark1, [(_bpos select 0)+3,(_bpos select 1)+3]];
_bmark setMarkerShape "ICON";
_bmark setMarkerType "Flag";
_bmark setMarkerSize [1.0, 1.0];

_bzone = createTrigger ["EmptyDetector", _bpos];
_bzone setTriggerActivation ["ANY", "PRESENT", false];
_bzone setTriggerArea [_size, _size, 0, true ];

_men = 0;
_car = 0;
_tank = 0;
_score = 0;

_mssg = "";

_bombzone = getmarkerpos _mark1;


switch (_type) do
{
	 case "Ammo Create":
	{
		_bmark setMarkerColor "ColorWhite";
	};
	 case "Precision Air strike":
	{
		_bmark setMarkerColor "ColorWhite";
	};
	 case "Small Artillery":
	{
		_bmark setMarkerColor "ColorBlue";
	};
	 case "Large Artillery":
	{
		_bmark setMarkerColor "ColorRed";
	};
	 case "Cluster Bomb":
	{
		_bmark setMarkerColor "ColorBlack";
	};
	 case "Chemical Strike":
	{
		_bmark setMarkerColor "ColorGreen";
	};
	 case "ICBM":
	{
		_bmark setMarkerColor "ColorYellow";
	};
};


EVO_Nshock = 
{
	_base = _this select 0;
	_xPos = position _base select 0;
	_yPos = position _base select 1;

	_howBigA = _this select 1;
	_howBigB = _this select 2;
	_tablesC = _this select 3;
	_angle = _this select 4;
	_i = 0;
	while {_i < 360} do {
		_x = (_howBigA * (sin _i));
		_y = (_howBigB * (cos _i));
		_x_rot = _xPos + _x*(cos _angle) - _y*(sin _angle);
		_y_rot = _yPos + _x*(sin _angle) + _y*(cos _angle);
		_k = createVehicle ["Bo_GBU12_LGB",[_x_rot, _y_rot,50], [], 0, "NONE"];
		_i = _i + (360/_tablesC);
	};
};


_i = _countdown;
//_i = 2;
while {_i > -1} do 
{
	_mssg = format["%1's %2 :%3",(name player),_type,_i];
	_bmark setMarkerText _mssg;
	_bmark2 setMarkerText _mssg;
	_bmark3 setMarkerSize [0, 0];
	_i = _i - 1;
	if((_type == "ICBM") and _i == 25) then 
	{
		_base setVehicleInit "[this,6] execVM ""sfx\nuke.sqf""";
		processInitCommands;
	};	
	sleep 0.5;
	_bmark3 setMarkerSize [_size, _size];
	sleep 0.5;
};

EVO_CountDead = 
{
	_list = list _bzone;
	if(count _list > 0) then
	{
		{
			if(_x isKindof "Man" and (side _x) == east) then {_men = _men + 1;_score = _score+1};
			if(_x isKindof "Car" and (side _x) == east) then {_car = _car + 1;_score = _score+3};
			if(_x isKindof "Tank" and (side _x) == east) then {_tank = _tank + 1;_score = _score+5};
			if(_x isKindof "Man" and (side _x) == west) then {_men = _men - 1;_score = _score-1};
			if(_x isKindof "Car" and (side _x) == west) then {_car = _car - 1;_score = _score-3};
			if(_x isKindof "Tank" and (side _x) == west) then {_tank = _tank - 1;_score = _score-5};		

		} forEach _list;
	};
};




switch (_type) do
{
	 case "Ammo Create":
	{
		_pos = (position _base);
		_obj_para = "ParachuteWest" createVehicle [0,0,0];
		_obj_para setpos [_pos select 0,_pos select 1,(_pos select 2) +99];		
		_tbox = "AmmoBoxWest" createVehicle _pos;
		_tbox setpos [_pos select 0,_pos select 1,(_pos select 2) +99];
		_i = 999;
		while {_i > 0} do 
		{
			_obj_para setpos [_pos select 0,_pos select 1,(_pos select 2) + (_i/10)];
			_tbox setpos [_pos select 0,_pos select 1,(_pos select 2) + ((_i/10)-1)];
			sleep 0.01;
			_i = _i - 1;
		};
		_tbox setpos _pos;
		[_tbox] execVM "scripts\dropdel.sqf";
		_tbox setVehicleInit "[this] call EVO_DropBox";
		processInitCommands;	
	};
	 case "Precision Air strike":
	{
		[] call EVO_CountDead;
		[_base,0,0,1,0] call EVO_Nshock;
		
	};
	 case "Small Artillery":
	{
		[] call EVO_CountDead;
		_i = 0;
		while {_i < 20} do {
			_k = createVehicle ["Sh_105_HE",[(position _base select 0), (position _base select 1),50], [], _size, "NONE"];
			//_k = createVehicle ["Bo_GBU12_LGB",[(position _base select 0), (position _base select 1),50], [], 50, "NONE"];
			_i = _i + 1;
			sleep 1.0;
		};
	};
	 case "Large Artillery":
	{
		[] call EVO_CountDead;
		_i = 0;
		while {_i < 40} do {
			_k = createVehicle ["Sh_122_HE",[(position _base select 0), (position _base select 1),50], [], _size, "NONE"];
			_i = _i + 1;
			sleep 1.0;
		};	
		
	};
	 case "Cluster Bomb":
	{
		[] call EVO_CountDead;
		_i = 0;
		while {_i < 6} do {
			_k = createVehicle ["Bo_GBU12_LGB",[(position _base select 0), (position _base select 1),50], [], _size, "NONE"];
			_i = _i + 1;
			sleep 0.1;			
		};
		_list = list _bzone;
		{
			_x setdamage 1;
		} forEach _list;		
	};
	 case "Chemical Strike":
	{	
		_base setVehicleInit "[this,5] execVM ""sfx\nuke.sqf""";
		processInitCommands;
		_list = list _bzone;
		{
			if(_x isKindof "Man" and (side _x) == east) then {_x setdamage 1;_men = _men + 1;_score = _score+1};
		} forEach _list;
		sleep 10.0;
	};
	 case "ICBM":
	{
	
		[] call EVO_CountDead;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 25];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
		sleep 0.5;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 50];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
		sleep 0.5;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 75];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
		sleep 0.5;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 100];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
		sleep 0.5;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 150];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
		sleep 0.5;
		_objs = nearestObjects [_base, ["Man","Car","Tank","House","Strategic","NonStrategic"], 200];{if(not (_x isKindOf "Land_radar")) then {_x setdamage 1}} forEach _objs;
	};
};

deletevehicle _bzone;
deletemarker _mark1;
deletemarker _mark2;
deletemarker _mark3;
fmission = false;
if(_type != "Ammo Create") then
{
	hint format["Damage Assessment\n________________\nMen = %1\nCars = %2\nTanks = %3\nScore = %4",_men,_car,_tank,_score];
	player addscore _score;
};
sleep 60;
deletevehicle _base;

