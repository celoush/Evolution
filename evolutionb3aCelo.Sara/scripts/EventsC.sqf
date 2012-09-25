EVO_ResetClick = 
{
	onMapSingleClick "
	if (_alt and debug) then {vehicle player setpos _pos;{vehicle _x setpos _pos} forEach _units};
	if ((local player) and player == leader player and _shift and onmission) then {hint localize ""EVO_004""};
	if ((local player) and player == leader player and _shift and not onmission) then 
	{
		deleteWaypoint [group player, 1];
		deleteVehicle wbase;
		_wp1 = group player addWaypoint [position mresc, 0];
		[group player, 1] showWaypoint ""NEVER"";
		[group player, 1] setWaypointStatements [""never"",""never""];
		[group player, 1] setWaypointDescription ""MOVE"";
		wbase = ""HeliHEmpty"" createVehicleLocal _pos;
		[group player, 1] setWaypointPosition [position wbase, 0];
		group player setCurrentWaypoint [group player, 1];
		hint localize ""EVO_005"";
	};
	if ((local player) and player == leader player and _alt and not onmission) then 
	{
		deleteWaypoint [group player, 1];
		hint ""Squad waypoint cleared"";
	}
	";
};

EVO_AmmoBox =
{
	_vec = _this select 0;
	_rank = _this select 1;
	_soldier = _this select 2;

	clearWeaponCargo _vec;
	clearMagazineCargo _vec;


	switch (_rank) do //heavy wep
	{
		 case 0:
		{
			//_vec addWeaponCargo ["M136",0];
			_vec addMagazineCargo ["pipebomb",1];
			_vec addMagazineCargo ["mine",1];	
		};
		 case 1:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];	
		};
		 case 2:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];			
		};
		 case 3:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addWeaponCargo ["Stinger",40];
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];	
		};
		 case 4:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addWeaponCargo ["Stinger",40];	
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];		
		};
		 case 5:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addWeaponCargo ["Stinger",40];
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];		
		};
		 case 6:
		{
			//_vec addWeaponCargo ["M136",40];
			_vec addWeaponCargo ["Stinger",40];
			_vec addWeaponCargo ["JAVELIN",40];
			_vec addMagazineCargo ["pipebomb",40];
			_vec addMagazineCargo ["mine",40];		
		};
	};
	switch (_rank) do //rifles
	{
		 case 0:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M9", 40];
		};
		 case 1:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];	
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M4", 40];	
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M9", 40];
		};
		 case 2:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];	
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M16A4_ACG_GL", 40];
			_vec AddWeaponCargo ["M4", 40];	
			_vec AddWeaponCargo ["M4AIM", 40];
			_vec AddWeaponCargo ["M4A1", 40];
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M9", 40];	
		};
		 case 3:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["MP5SD", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M16A4_ACG_GL", 40];
			_vec AddWeaponCargo ["M4", 40];
			_vec AddWeaponCargo ["M4GL", 40];
			_vec AddWeaponCargo ["M4AIM", 40];
			_vec AddWeaponCargo ["M4A1", 40];
			_vec AddWeaponCargo ["M4A1GL", 40];
			_vec AddWeaponCargo ["M240", 40];
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M9", 40];    
			_vec AddWeaponCargo ["M9SD", 40];
		};
		 case 4:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["MP5SD", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M16A4_ACG_GL", 40];
			_vec AddWeaponCargo ["M4", 40];
			_vec AddWeaponCargo ["M4GL", 40];
			_vec AddWeaponCargo ["M4AIM", 40];
			_vec AddWeaponCargo ["M4A1", 40];
			_vec AddWeaponCargo ["M4A1GL", 40];
			_vec AddWeaponCargo ["M4A1SD", 40];	
			_vec AddWeaponCargo ["M240", 40];
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M4SPR", 40];	
			_vec AddWeaponCargo ["M9", 40];    
			_vec AddWeaponCargo ["M9SD", 40];	
		};
		 case 5:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["MP5SD", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M16A4_ACG_GL", 40];
			_vec AddWeaponCargo ["M4", 40];
			_vec AddWeaponCargo ["M4GL", 40];
			_vec AddWeaponCargo ["M4AIM", 40];
			_vec AddWeaponCargo ["M4A1", 40];
			_vec AddWeaponCargo ["M4A1GL", 40];
			_vec AddWeaponCargo ["M4A1SD", 40];
			_vec AddWeaponCargo ["G36K", 40];
			_vec AddWeaponCargo ["G36C", 40];
			_vec AddWeaponCargo ["G36A", 40];	
			_vec AddWeaponCargo ["M240", 40];
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M4SPR", 40];	
			_vec AddWeaponCargo ["M9", 40];    
			_vec AddWeaponCargo ["M9SD", 40];
		};
		 case 6:
		{
			_vec AddWeaponCargo ["MP5A5", 40];
			_vec AddWeaponCargo ["MP5SD", 40];
			_vec AddWeaponCargo ["M16A2", 40];
			_vec AddWeaponCargo ["M16A2GL", 40];
			_vec AddWeaponCargo ["M16A4", 40];
			_vec AddWeaponCargo ["M16A4_ACG", 40];
			_vec AddWeaponCargo ["M16A4_ACG_GL", 40];
			_vec AddWeaponCargo ["M4", 40];
			_vec AddWeaponCargo ["M4GL", 40];
			_vec AddWeaponCargo ["M4AIM", 40];
			_vec AddWeaponCargo ["M4A1", 40];
			_vec AddWeaponCargo ["M4A1GL", 40];
			_vec AddWeaponCargo ["M4A1SD", 40];
			_vec AddWeaponCargo ["G36K", 40];
			_vec AddWeaponCargo ["G36C", 40];
			_vec AddWeaponCargo ["G36A", 40];	
			_vec AddWeaponCargo ["M240", 40];
			_vec AddWeaponCargo ["M249", 40];
			_vec AddWeaponCargo ["M4SPR", 40];	
			_vec AddWeaponCargo ["M9", 40];    
			_vec AddWeaponCargo ["M9SD", 40];
		};
	};


  if ((_soldier isKindOf "BISCamelPilot") OR (_soldier isKindOf "SoldierWPilot") OR (_soldier isKindOf "SoldierWCrew")) then {    
  	clearWeaponCargo _vec;
  	_vec AddWeaponCargo ["M9", 10]; 
    _vec AddWeaponCargo ["M4", 10];
  };

  if (_soldier isKindOf "SoldierWSniper") then {    
  	clearWeaponCargo _vec;
  	_vec AddWeaponCargo ["M9SD", 10];
    _vec AddWeaponCargo ["M107", 10];
    _vec AddWeaponCargo ["M24", 10];
  };
  
  if (_soldier isKindOf "SoldierWSaboteurAssault") then {    
  	clearWeaponCargo _vec;
  	_vec AddWeaponCargo ["M9SD", 10];
    _vec AddWeaponCargo ["M4A1SD", 10];
    _vec AddWeaponCargo ["MP5SD", 10];
  };
  
  if (_soldier isKindOf "SoldierWMG") then {
    clearWeaponCargo _vec;
    _vec AddWeaponCargo ["M9", 40];    
    _vec AddWeaponCargo ["M249", 10];
    _vec AddWeaponCargo ["M240", 10];  
  };


  if (_soldier isKindOf "SoldierWAT" and not (_soldier isKindOf "SoldierWAA")) then {
    _vec AddWeaponCargo ["M9", 40];    
    _vec addWeaponCargo ["JAVELIN",5];
    _vec addWeaponCargo ["M136",40];
  };
  

  if (_soldier isKindOf "SoldierWAA") then {
    _vec AddWeaponCargo ["M9", 40];    
    _vec addWeaponCargo ["Stinger",10];
  };  


	//ammo 
	_vec addWeaponCargo ["Laserdesignator",40];
	_vec addMagazineCargo ["HandGrenadeTimed",40];
	_vec addMagazineCargo ["m136",40];
	_vec addMagazineCargo ["Stinger",40];
	_vec addMagazineCargo ["JAVELIN",40];
	_vec addMagazineCargo ["1rnd_HE_M203",40];
	_vec addMagazineCargo ["FlareWhite_M203",40];
	_vec addMagazineCargo ["FlareRed_M203",40];
	_vec addMagazineCargo ["FlareGreen_M203",40];
	_vec addMagazineCargo ["FlareYellow_M203",40];
	_vec addMagazineCargo ["SmokeShell",40];
	_vec addMagazineCargo ["SmokeShellRed",40];
	_vec addMagazineCargo ["SmokeShellGreen",40];
	_vec addmagazinecargo ["15rnd_9x19_m9sd", 40];
	_vec addmagazinecargo ["15rnd_9x19_m9", 40];	
	_vec addmagazinecargo ["30Rnd_9x19_MP5SD", 40];
	_vec addmagazinecargo ["30Rnd_9x19_MP5", 40];
	_vec addmagazinecargo ["30Rnd_556x45_StanagSD", 40];
	_vec addmagazinecargo ["30rnd_556x45_Stanag", 40];
	_vec addmagazinecargo ["30Rnd_556x45_G36",40];
	_vec addmagazinecargo ["200Rnd_556x45_M249", 40];
	_vec addmagazinecargo ["100Rnd_762x51_M240", 40];
	_vec addmagazinecargo ["5Rnd_762x51_M24", 40];
	_vec addmagazinecargo ["10Rnd_127x99_m107", 40];
	_vec addMagazineCargo ["Laserbatteries",40];
	_vec addWeaponCargo ["Binocular",40];
	_vec addWeaponCargo ["NVGoggles",40];
	_vec addWeaponCargo ["Phone",40];
};

EVO_DropBox =
{
	_vec = _this select 0;

	clearWeaponCargo _vec;
	clearMagazineCargo _vec;
	//ammo 
	_vec addMagazineCargo ["pipebomb",9];
	_vec addMagazineCargo ["mine",9];	
	_vec addWeaponCargo ["Laserdesignator",1];
	_vec addMagazineCargo ["HandGrenadeTimed",8];
	_vec addMagazineCargo ["m136",9];
	_vec addMagazineCargo ["Stinger",9];
	_vec addMagazineCargo ["JAVELIN",9];
	_vec addMagazineCargo ["1rnd_HE_M203",20];
	_vec addMagazineCargo ["FlareWhite_M203",20];
	_vec addMagazineCargo ["FlareRed_M203",20];
	_vec addMagazineCargo ["FlareGreen_M203",20];
	_vec addMagazineCargo ["FlareYellow_M203",20];
	_vec addMagazineCargo ["SmokeShell",20];
	_vec addMagazineCargo ["SmokeShellRed",20];
	_vec addMagazineCargo ["SmokeShellGreen",20];
	_vec addmagazinecargo ["15rnd_9x19_m9sd", 40];
	_vec addmagazinecargo ["15rnd_9x19_m9", 40];	
	_vec addmagazinecargo ["30Rnd_9x19_MP5SD", 40];
	_vec addmagazinecargo ["30Rnd_9x19_MP5", 40];
	_vec addmagazinecargo ["30Rnd_556x45_StanagSD", 40];
	_vec addmagazinecargo ["30rnd_556x45_Stanag", 40];
	_vec addmagazinecargo ["30Rnd_556x45_G36",40];
	_vec addmagazinecargo ["200Rnd_556x45_M249", 40];
	_vec addmagazinecargo ["100Rnd_762x51_M240", 40];
	_vec addmagazinecargo ["5Rnd_762x51_M24", 40];
	_vec addmagazinecargo ["10Rnd_127x99_m107", 40];
	_vec addMagazineCargo ["Laserbatteries",1];
	_vec addWeaponCargo ["Binocular",1];
	_vec addWeaponCargo ["NVGoggles",1];
};

EVO_Boarding =
{
	_unit = _this select 0;
	_position = _this select 1;

	if((_unit in list AirportIn) and _position == "cargo") then 
	{
		_getout = _unit addEventHandler ["GetOut", 
		{
			if((_this select 1) != "Driver") then 
			{	if ((_this select 0) distance mresc > 500) then 
				{
					driver (_this select 0) addscore 1;
				};
				if ((_this select 0) distance mresc > 5000) then 
				{	
					driver (_this select 0) addscore 1;
				};			
			}
		}];
		if(_getout > 0) then 
		{
			_unit removeEventHandler ["GetOut", _getout];
		};
	};
	if(_unit distance mresc > 500 and _position == "Cargo") then
	{
		_unit removeEventHandler ["GetOut", 0];
	};
};

EVO_Cscore =
{
	_temp = compile scores_packed;
	_scores = call _temp;
	//_scores = ["KilJoy",400];
	_max = count _scores;
	_i = 0;
	//titleText [format ["debug: scores = %1",_scores],"plain down"];
	while {_i < _max} do 
	{	_unit = _scores select _i;

		if (_unit == name player) then 
		{
			//titleText [format ["match: %1 %2",_unit,name player],"plain down"];
			 player addScore (_scores select (_i+1));
		};
		_i = _i + 2;
	};
};

EVO_Mrew =
{
	_unit = player;
	if (player isKindOf "SoldierWMedic") then //only leader medics
	{
		if (score _unit < rank1)  exitWith 
		{
			player addscore 2;
			titleText ["2 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank2)  exitWith  
		{
			player addscore 4;
			titleText ["4 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank3)  exitWith  
		{
			player addscore 6;
			titleText ["6 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank4)  exitWith  
		{	
			player addscore 8;
			titleText ["8 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank5)  exitWith  
		{
			player addscore 10;
			titleText ["10 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank6)  exitWith  
		{
			player addscore 12;
			titleText ["12 medic points awarded", "PLAIN DOWN"];
		};
		if (score _unit >= rank6)  exitWith  
		{
			player addscore 14;
			titleText ["14 medic points awarded", "PLAIN DOWN"];
		};
	};
};

EVO_Erew =
{
	_unit = player;
	//hint "running erew";
	if (player isKindOf "SoldierWMiner") then //only leader eng
	{
		if (score _unit < rank1)  exitWith 
		{
			player addscore 2;
			titleText ["2 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank2)  exitWith  
		{
			player addscore 4;
			titleText ["4 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank3)  exitWith  
		{
			player addscore 6;
			titleText ["6 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank4)  exitWith  
		{	
			player addscore 8;
			titleText ["8 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank5)  exitWith  
		{
			player addscore 10;
			titleText ["10 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit < rank6)  exitWith  
		{
			player addscore 12;
			titleText ["12 repair points awarded", "PLAIN DOWN"];
		};
		if (score _unit >= rank6)  exitWith  
		{
			player addscore 14;
			titleText ["14 repair points awarded", "PLAIN DOWN"];
		};
	};
};
