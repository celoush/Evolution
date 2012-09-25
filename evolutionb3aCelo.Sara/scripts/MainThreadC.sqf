_oldhour = date select 3;
_tscore = 0;

EVO_CWeath =
{
	"rainmarkt" setMarkerPosLocal getMarkerPos "rainmark";
	//"rainmark" setMarkerDirLocal getdir rainy;
	
	"rainmarkt2" setMarkerPosLocal getMarkerPos "rainmark2";
	//"rainmark2" setMarkerDirLocal getdir rainy2;
	
	"rainmarkt3" setMarkerPosLocal getMarkerPos "rainmark3";
	//"rainmark3" setMarkerDirLocal getdir rainy3;

	"fogmarkt" setMarkerPosLocal getMarkerPos "fogmark";
	//"fogmark" setMarkerDirLocal getdir foggy;
};


EVO_Repair = 
{
	_vec = (vehicle player);
	_type = typeOf vehicle player;
	if(getDammage _vec > 0 or fuel _vec < 0.98 and not (_vec isKindOf "Man")) then
	{
		_inrepairzone = ((_vec in list AirportIn) or (_vec in list farp1) or (_vec in list farp2) or (_vec in list farp3) or (_vec in list reng1) or (_vec in list reng2) or (_vec in list reng3) or (_vec in list reng4) or (_vec in list dock1));
		if(_inrepairzone and _vec != player and speed _vec > -2 and speed _vec < 2 and position _vec select 2 < 2.0 and (local _vec)) then
		{

			 titleText [localize "EVO_014", "PLAIN DOWN",0.3];
			 for [{_loop2=0}, {_loop2<1}, {_loop2=_loop2}] do
			 {
			    sleep 0.200;	    		    
			    if (getDammage _vec > 0) then {_vec setDammage ((getDammage _vec)-0.0125);};
			    if (Fuel _vec < 1) then {_vec setFuel ((Fuel _vec)+0.0125);};
			    if (getDammage _vec == 0 and Fuel _vec == 1) then {_loop2=1;};
			    if(_vec != vehicle player or speed _vec < -2 or speed _vec > 2 or position _vec select 2 > 2.0) then {_loop2=1;titleText [localize "EVO_015", "PLAIN DOWN",0.3];};
			    _dam = (getDammage _vec)*100;
			    _ful = (Fuel _vec)*100;
			    hint format["Poškození: %1\nPalivo: %2",Round _dam,Round _ful];
			};
			_vec setVehicleAmmo 1;
			if(_type == "AH6") then 
			{
				_weapons = weapons _vec;
				if(not ("Laserdesignator" in _weapons)) then 
				{
					_vec addMagazine "Laserbatteries";
					_vec addweapon "Laserdesignator"
				}
				else
				{
					_vec removeMagazine "Laserbatteries";
					_vec addMagazine "Laserbatteries";
				};
			};
			if(_type == "DC3" and score player >= rank6) then 
			{
				_weapons = weapons _vec;
				if(not ("BombLauncher" in _weapons)) then {_vec addweapon "BombLauncher"};
				_vec removeMagazine "6Rnd_GBU12_AV8B";
				_vec addMagazine "6Rnd_GBU12_AV8B";
				_vec addMagazine "6Rnd_GBU12_AV8B";
			};			
		};
	};
};


EVO_HPM =
{
	if(not (alive vehicle player)) then
	{
		fattack = false;
	};
	if(fattack and getdammage player == 0) then
	{
		_medic = (nearestObject [vehicle player, "SoldierWMedic"]);
		if (isNull _medic) then 
		{
			_medic = (nearestObject [vehicle player, "MASH"]);
			if (not (isNull _medic)) then
			{
				mpoint = _medic;
				publicVariable "mpoint";
			};
		};
		if (not (isNull _medic) and _medic != player) then
		{
			mpoint = _medic;
			publicVariable "mpoint";
		};
		
		fattack=false;
	};
};

EVO_Rank = 
{
	_name = name player;
	_score = score player;
	_rank = rank player;
	if (_score < rank1 and _rank != "PRIVATE")  exitWith  
	{	
		hint format["Tvá hodnos je nyní %2\n Pvt.%1",_name,"PRIVATE"];
		cutRsc ["Pvt","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,0,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,0,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,0,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,0,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,0,player] call EVO_AmmoBox;
		aunit = player;
		arank = "PRIVATE";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";	
	};
	if (_score < rank2 and _score >= rank1 and _rank != "CORPORAL")  exitWith  
	{
		hint format["Tvá hodnos je nyní %2\n Corp.%1 Nyní můžeš povolat nového vojáka do týmu",_name,"CORPORAL"];
		cutRsc["Corp","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,1,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,1,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,1,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,1,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,1,player] call EVO_AmmoBox;	
		
		aunit = player;
		arank = "CORPORAL";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";
	};
	if (_score < rank3 and _score >= rank2 and _rank != "SERGEANT")  exitWith  
	{
		hint format["Tvá hodnos je nyní %2\n Sgt.%1 Nyní můžeš povolat dva vojáky týmu",_name,"SERGEANT"];
		cutRsc["Sgt","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,2,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,2,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,2,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,2,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,2,player] call EVO_AmmoBox;	
		
		aunit = player;
		arank = "SERGEANT";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";		
	};
	if (_score < rank4 and _score >= rank3 and _rank != "LIEUTENANT")  exitWith  
	{	
		hint format["Tvá hodnos je nyní %2\n Ltn.%1 Nyní můžeš povolat tři vojáky týmu",_name,"LIEUTENANT"];
		cutRsc["Ltn","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,3,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,3,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,3,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,3,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,3,player] call EVO_AmmoBox;		
		
		aunit = player;
		arank = "LIEUTENANT";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";			
	};
	if (_score < rank5 and _score >= rank4 and _rank != "CAPTAIN")  exitWith  
	{
		hint format["Tvá hodnos je nyní %2\n Cpt.%1 Nyní můžeš povolat čtyři vojáky týmu",_name,"CAPTAIN"];
		cutRsc["Cpt","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,4,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,4,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,4,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,4,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,4,player] call EVO_AmmoBox;	
		
		aunit = player;
		arank = "CAPTAIN";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";			
	};
	if (_score < rank6 and _score >= rank5 and _rank != "MAJOR")  exitWith  
	{	
		hint format["Tvá hodnos je nyní %2\n Mjr.%1 Nyní můžeš povolat pět vojáků týmu",_name,"MAJOR"];
		cutRsc["Mjr","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,5,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,5,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,5,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,5,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,5,player] call EVO_AmmoBox;		
		
		aunit = player;
		arank = "MAJOR";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";			
	};
	if (_score >= rank6 and _rank != "COLONEL")  exitWith  
	{
		hint format["Tvá hodnos je nyní %2\n Col.%1 Nyní můžeš povolat šest vojáků týmu",_name,"COLONEL"];
		cutRsc["Col","PLAIN"];
		playsound "Paycall";
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;
		deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
		ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,6,player] call EVO_AmmoBox;
		ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,6,player] call EVO_AmmoBox;
		ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,6,player] call EVO_AmmoBox;
		ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,6,player] call EVO_AmmoBox;
		ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,6,player] call EVO_AmmoBox;	
		aunit = player;
		arank = "COLONEL";
		player setUnitRank arank;
		publicVariable "aunit";
		publicVariable "arank";
	};
	_tscore = score player;
};

EVO_CTime = 
{
	_temp = compile gdate_packed;
	_date = call _temp;
	_hour = _date select 3;
	
	if(_hour != _oldhour) then
	{
		if(_hour == 0) then
		{
			10 setOvercast 0.0;
			10 setRain 0.0;
		};
		//hint "time update";
		_oldhour = _hour;
		setDate _date;
	};
};


for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{	
	_time = time;
	[] call EVO_CWeath;
	sleep 1.011;
	[] call EVO_Repair;
	sleep 1.011;
	if (score player != _tscore) then {[] call EVO_Rank};
	sleep 1.011;
	[] call EVO_CTime;
	sleep 1.011;
	[] call EVO_HPM;
	_newtime = time - _time;
	//hint format["time takin %1",_newtime];
};
