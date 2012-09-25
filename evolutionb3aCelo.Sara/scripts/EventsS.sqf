EVO_Delete =
{
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
	rscripts=rscripts-1;
};

EVO_functest =
{
	_num = _this select 0;
	for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
	{
		hint format["%1 inloop ftest",_num];
		sleep 1.0;
	};
};

EVO_gRecy =
{
	_grp   = _this select 0;
	_tag   = "notset";
	_alist = objNull;
	_tag   = _this select 1;
	_alist = _this select 2;
	//hint format["alist=%1",_alist];
	rscripts=rscripts+1;
	egroups = egroups+1;
	for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
	{
		if(count units _grp == 0) then {_loop=1};
		sleep 8.0+(round random 1);
	};
	if (count list _alist > 0) then
	{
	
		switch (_tag) do //who died where?
		{
			 case "parinf":
			{
				parinf = parinf-1;
				lastalert="mobj1";
			};
			 case "parmec":
			{
				parmec = parmec-1;
				lastalert="mobj1";
				
			};
			 case "sominf":
			{
				sominf = sominf-1;
				lastalert="mobj2";
				
			};
			 case "sommec":
			{
				sommec = sommec-1;
				lastalert="mobj2";
			};
			 case "cayinf":
			{
				cayinf = cayinf-1;
				lastalert="mobj3";
			};
			 case "caymec":
			{
				caymec = caymec-1;
				lastalert="mobj3";
			};
			 case "dolinf":
			{
				dolinf = dolinf-1;
				lastalert="mobj4";
			};
			 case "dolmec":
			{
				dolmec = dolmec-1;
				lastalert="mobj4";
			};
			 case "ortinf":
			{
				ortinf = ortinf-1;
				lastalert="mobj5";
			};
			 case "ortmec":
			{
				ortmec = ortmec-1;
				lastalert="mobj5";
			};
			 case "corinf":
			{
				corinf = corinf-1;
				lastalert="mobj6";
			};
			 case "cormec":
			{
				cormec = cormec-1;
				lastalert="mobj6";
			};
			 case "obrinf":
			{
				obrinf = obrinf-1;
				lastalert="mobj7";
			};
			 case "obrmec":
			{
				obrmec = obrmec-1;
				lastalert="mobj7";
			};
			 case "baginf":
			{
				baginf = baginf-1;
				lastalert="mobj8";
			};
			 case "bagmec":
			{
				bagmec = bagmec-1;
				lastalert="mobj8";
				
			};
			 case "epoinf":
			{
				epoinf = epoinf-1;
				lastalert="mobj9";
			};
			 case "epomec":
			{
				epomec = epomec-1;
				lastalert="mobj9";
			};
			 case "masinf":
			{
				masinf = masinf-1;
				lastalert="mobj10";
			};
			 case "masmec":
			{
				masmec = masmec-1;
				lastalert="mobj10";
			};
			 case "pitinf":
			{
				pitinf = pitinf-1;
				lastalert="mobj11";
			};
			 case "pitmec":
			{
				pitmec = pitmec-1;
				lastalert="mobj11";
			};
			 default
			{
			};	
		};
	};
	deleteGroup _grp;egroups = egroups-1;
	rscripts=rscripts-1;
};

EVO_Lock =
{
	_vec = _this select 0;
	if(Param1 == 7) then {_vec lock true} else {_vec lock false};
};

EVO_Taxi =
{
	for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
	{
		_pos = GetMarkerPos "Respawn_West";
		_pilot = createGroup (west);
		"SoldierWB" createUnit [_pos, _pilot];
		_pi =(leader _pilot);
		_pi setIdentity "thedood";
		_pi setcaptive true;
		_heli = ObjNull;
		for [{_loopa=0}, {_loopa<1}, {_loopa=_loopa}] do
		{
			sleep 4;
			_objs = nearestObjects [_pi, ["MH6"], 200];
			_heli = ObjNull;		
			{if(isNull driver _x) then {_heli = _x}} forEach _objs;
			if(not isNull _heli) then 
			{
				_pi assignAsDriver _heli;
				[_pi] orderGetIn true;
				Waituntil {not isNull (driver _heli)};
				if((driver _heli) == _pi) then {_loopa=1};
			};
			
		};

		_heli setcaptive true;
		_wbase = "HeliHEmpty" createVehicleLocal _pos;
		_pilot setBehaviour "CARELESS";
		_targ1 = position mresc;
		_heli engineon true;
		while {canmove _heli} do
		{
			Waituntil {count crew _heli > 3};
			_targ2 = GetMarkerPos lastalert;
			_targ = [(_targ2 select 0),(_targ2 select 1)+600,(_targ2 select 2)];
			_wbase setpos _targ;
			_pi commandMove _targ;
			Waituntil {_heli distance _targ < 200 or not(canmove _heli)};
			commandGetOut _pi;
			Waituntil {(position _pi select 2) < 8 or not(canmove _heli)};
			commandStop _pi;
			Waituntil {count crew _heli == 1 or not(canmove _heli)};
			_pi commandMove _targ1;
			Waituntil {_heli distance _targ1 < 200 or not(canmove _heli)};
			commandGetOut _pi;
			Waituntil {(position _pi select 2) < 8 or not(canmove _heli)};
			commandStop _pi;
		};
		waitUntil {not (alive _heli) or isNull (driver _heli)};
		if (alive _pi) then {_pi setdammage 1};
		sleep 10.0;
	};
};

EVO_Erefway =
{
	_pos = _this select 0;
	_grp = _this select 1;
	_radio = _this select 2;
	_list = _this select 3;
	_enemy = objNull;
	_epos = _pos;
	
	if(count list _list > 0) then 
	{
		_enemy = (list _list select 0);
		//hint format["bguy %1",(list _list select 0)];
		_epos = position _enemy;
	};
	
	
	_wp = _grp addWaypoint [position _radio, 100];
	_wp1 = _grp addWaypoint [_epos, 0];
	_wp2 = _grp addWaypoint [_pos, 300];
	_wp3 = _grp addWaypoint [_pos, 300];
	_wp4 = _grp addWaypoint [position _radio, 0];
	[_grp, 1] setWaypointType "UNLOAD";
	[_grp, 5] setWaypointType "CYCLE";
};

EVO_Erec =
{
	//[etrigger,wtrigger,completed,infantry,mecinized]
	rscripts=rscripts+1;
	_placetag = _this select 0;
	_list = _this select 1;
	_disable = _this select 2;
	_exitcond = _this select 3;
	_inf = _this select 4;
	_mec = _this select 5;
	_radio = _this select 6;
	_newgrps = [];
	_newigrps = [];
	_newmgrps = [];
	_rndpoints = [];
	_offobj = objNull;
	_taginf = "";
	_tagmec = "";
	_taginf = format["%1inf",_placetag];
	_tagmec = format["%1mec",_placetag];
	switch (_tag) do
	{
		 case "par":
		{
			parinf = _inf;
			parmec = _mec;
		};
		 case "som":
		{
			sominf = _inf;
			sommec = _mec;
		};
		 case "cay":
		{
			cayinf = _inf;
			caymec = _mec;
		};
		 case "dol":
		{
			dolinf = _inf;
			dolmec = _mec;
		};
		 case "ort":
		{
			ortinf = _inf;
			ortmec = _mec;
		};
		 case "cor":
		{
			corinf = _inf;
			cormec = _mec;
		};
		 case "obr":
		{
			obrinf = _inf;
			obrmec = _mec;
		};
		 case "bag":
		{
			baginf = _inf;
			bagmec = _mec;
		};
		 case "epo":
		{
			epoinf = _inf;
			epomec = _mec;
		};
		 case "pit":
		{
			pitinf = _inf;
			pitmec = _mec;
		};
		 default
		{
		};	
	};
	//_civs = [placetag,_list,_disable,_exitcond,_inf,_mec] execVM "scripts\CRecruit.sqf";	
	if (not _exitcond) then 
	{

		{if(_x isKindOf "OfficerE") then {_offobj = _x}} forEach list _list;

		_pos = position _list;

		_pos1 = [(_pos select 0)+300,(_pos select 1),(_pos select 2)];
		_pos2 = [(_pos select 0),(_pos select 1)+300,(_pos select 2)];
		_pos3 = [(_pos select 0)-300,(_pos select 1),(_pos select 2)];
		_pos4 = [(_pos select 0),(_pos select 1)-300,(_pos select 2)];

		_outpoints = [_pos1,_pos2,_pos3,_pos4];

		//Officer defence
		if (not isNull _offobj) then 
		{ 
			_grp = createGroup (east);
			_unit = _grp createUnit ["SoldierESaboteurMarksman", position _offobj, [], 0, "FORM"];[_unit] join _grp;
			_wp = _grp addWaypoint [position _offobj, 50];
			_wp2 = _grp addWaypoint [position _offobj, 50];
			_wp3 = _grp addWaypoint [position _offobj, 50];
			_wp4 = _grp addWaypoint [position _offobj, 50];
			_wp5 = _grp addWaypoint [position _offobj, 50];
			[_grp, 5] setWaypointType "CYCLE";
			_recy = [_grp,_taginf,_disable] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
			//hint format["tag=%1",_taginf];
			_newgrps = _newgrps + [_grp];
		};

		//Radio defence

		_grp = createGroup (east);
		_unit = _grp createUnit ["SquadLeaderE", position _radio, [], 0, "FORM"];[_unit] join _grp;	
		_wp = _grp addWaypoint [position _radio, 50];
		_wp2 = _grp addWaypoint [position _radio, 50];
		_wp3 = _grp addWaypoint [position _radio, 50];
		_wp4 = _grp addWaypoint [position _radio, 50];
		_wp5 = _grp addWaypoint [position _radio, 50];
		[_grp, 5] setWaypointType "CYCLE";
		_recy = [_grp,_taginf,_disable] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
		_newgrps = _newgrps + [_grp];

		_i=0;
		while {_i <= _inf} do 
		{

			_grp = createGroup (east);
			if(round(random 10) < 7) then{
				_unit = _grp createUnit ["SquadLeaderE", _pos, [], 300, "NONE"];[_unit] join _grp;
			}else{
				_unit = _grp createUnit ["SoldierESaboteurMarksman", _pos, [], 300, "NONE"];[_unit] join _grp;
			};
			_posasl = getPosASL _unit;
			if ((_posasl select 2) < 1.0) then 
			{
				_unit setpos _pos;
			};		
			_recy = [_grp,_taginf,_disable] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
			/*if (_unit isKindOf "SquadLeaderE") then{
				_unitpos = position _unit;
				_wp = _grp addWaypoint [_unitpos, 50];
				_wp2 = _grp addWaypoint [_unitpos, 50];
				[_grp, 1] setWaypointType "DISMISS";
				[_grp, 2] setWaypointType "CYCLE";
			}else{*/
				_wp = _grp addWaypoint [_pos, 400];
				_wp2 = _grp addWaypoint [_pos, 400];
				_wp3 = _grp addWaypoint [position _radio, 200];
				_wp4 = _grp addWaypoint [_pos, 400];
				_wp5 = _grp addWaypoint [_pos, 400];
				[_grp, 5] setWaypointType "CYCLE";
			//};
			_newigrps = _newigrps + [_grp];
			_i = _i+1;
			sleep 0.1;
		};
		_i=0;

		while {_i <= _mec} do 
		{
			_grp = createGroup (east);
			_unit = _grp createUnit ["SoldierEMiner", _pos, [], 300, "NONE"]; 
			[_unit] join _grp;
			_recy = [_grp,_tagmec,_disable] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
			if(round(random 1) == 1) then
			{	
				_wp = _grp addWaypoint [(_outpoints select 0), 0];
				_wp2 = _grp addWaypoint [(_outpoints select 1), 0];
				_wp3 = _grp addWaypoint [(_outpoints select 2), 0];
				_wp4 = _grp addWaypoint [(_outpoints select 3), 0];
				[_grp, 4] setWaypointType "CYCLE";
			};
			_newmgrps = _newmgrps + [_grp];
			_i = _i+1;
			sleep 0.1;
		};
		_newgrps = _newgrps+_newigrps+_newmgrps;

		_i=0;
		while {_i < count _newgrps} do 
		{
			_unit = leader (_newgrps select _i);
			if (leader _unit == _unit and _unit isKindOf "Man") then 
			{
				_grp = group _unit;
				_pos = position _unit;
				_allform = ["COLUMN","STAG COLUMN","WEDGE","ECH LEFT","ECH RIGHT","VEE","LINE"];
				_max = (count _allform)-1;
				_grp setFormation (_allform select round random _max);
				if (_unit isKindOf "SoldierEMiner") then
				{
					_allvecs = ["BMP2","BRDM2","UAZ_AGS30","UAZMG","T72","BRDM2_ATGM","D30","DSHKM","AGS"];
					_posasl = getPosASL _unit1;
					if ((_posasl select 2) < 1.0) then 
					{
						_allvecs = ["BMP2","BRDM2","BRDM2_ATGM"];
					};
					_max = (count _allvecs)-1;
					_vec = createVehicle [_allvecs select (round random _max), _pos, [], 0, "NONE"];
					_vec addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
					[_vec] call EVO_Lock;				
					_unit = _grp createUnit ["SoldierEMiner", _pos, [], 300, "NONE"];
					[_unit] join _grp;

					
					if(typeOf _vec == "D30" or typeOf _vec == "DSHKM" or typeOf _vec == "AGS") then 
					{
						(units _grp select 0) moveInGunner _vec;
						(units _grp select 1) assignAsGunner _vec;
					}
					else
					{
						(units _grp select 0) moveInDriver _vec;
						(units _grp select 1) moveInGunner _vec;				
					};			
					if ((round random 1) == 1) then 
					{
						_vec2 = createVehicle [_allvecs select (round random _max), _pos, [], 0, "NONE"];
						_vec2 addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
						[_vec2] call EVO_Lock;
						"SoldierEMiner" createUnit [_pos, _grp];
						"SoldierEMiner" createUnit [_pos, _grp];
						if(typeOf _vec2 == "D30") then 
						{
							(units _grp select 2) moveInGunner _vec2;
							(units _grp select 3) moveInCargo _vec2;
						}
						else
						{
							(units _grp select 2) moveInGunner _vec2;
							(units _grp select 3) moveInDriver _vec2;				
						};
					};
					_grp setBehaviour "SAFE";
				};
				if (_unit isKindOf "SquadLeaderE") then
				{
					_allunits = ["TeamLeaderE","SoldierEMG","SoldierEMG","SoldierEAT","SoldierEAT","SoldierEAT","SoldierEMedic","SoldierEG","SoldierEB","SoldierEAA","SoldierEMiner"];
					_max = (count _allunits)-1;
					_count = (round random 5)+6;
					_j = 0;
					while {_j <= _count} do 
					{
						_type = _allunits select (round random _max);
						_unit = _grp createUnit [_type, _pos, [], 10, "FORM"];
						if(_type == "SoldierEMiner") then{
							removeAllWeapons _unit;
							_unit addWeapon "KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "5Rnd_127x108_KSVK";
							_unit addMagazine "MineE";
						};
						[_unit] join _grp;
						_j = _j+1;
						sleep 0.1;
					};
					_grp setBehaviour "SAFE";
				};
				if (_unit isKindOf "SoldierESaboteurMarksman") then
				{
					_allunits = ["SoldierESaboteurPipe", "SoldierESaboteurBizon", "SoldierESaboteurMarksman", "SoldierESniper"];
					_max = (count _allunits)-1;
					_count = (round random 2)+3;
					_j = 0;
					while {_j <= _count} do 
					{
						_unit = _grp createUnit [_allunits select (round random _max), _pos, [], 10, "FORM"];
						if(round(random 5) == 1) then{
							removeAllWeapons _unit;
							_unit addWeapon "AKS74U";
							_unit addMagazine "30Rnd_545x39_AK";
							_unit addMagazine "30Rnd_545x39_AK";
							_unit addMagazine "30Rnd_545x39_AK";
							_unit addMagazine "30Rnd_545x39_AK";
							_unit addWeapon "JAVELIN";
							_unit addMagazine "JAVELIN";
							_unit addWeapon "NVGoggles";
						};
						[_unit] join _grp;
						_j = _j+1;
						sleep 0.1;
					};
					_grp setBehaviour "AWARE";
				};

				{
					_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
					_x addWeapon "NVGoggles";
				} forEach (units _grp);
				/*
				_allbeh = ["SAFE","AWARE","COMBAT","STEALTH"];
				_max = (count _allbeh)-1;
				_grp setBehaviour (_allbeh select (round random _max));

				_allcom = ["YELLOW","RED"];
				_max = (count _allcom)-1;
				_grp setCombatMode (_allcom select (round random _max));
				*/
				if((random 1) > 0.75) then {_grp enableAttack true}else {_grp enableAttack false};

			};
			_i = _i + 1;
			sleep 0.1;
		};
		if (debug) then {hint format["%1 inf=%2 mec=%3 tag=%4",(count list _list),_inf,_mec,_taginf]};

		waitUntil {(count list _disable) == 0 or _exitcond};

		if (not _exitcond) then 
		{
			_i = 0;
			while {_i < count _newgrps} do 
			{
				if (not isNull(_newgrps select _i)) then
				{
					_del = [_newgrps select _i] spawn {[_this select 0] call EVO_Delete};
				};
				_i = _i + 1;
				sleep 0.1;
			};
		};
	rscripts=rscripts-1;
	};
};


EVO_VecRc =
{
	_time = 1+(random 1);
	sleep _time;
	vscripts=vscripts+1;
	_vcl = _this select 0;
	
	//if ((local server)) exitwith {deleteVehicle _vcl};
	_rtime = _this select 1;
	_isEjectable = _this select 2;
	_respawnpoint = position _vcl;
	_azimut = direction _vcl;
	_civcars = [
	"Skoda",
	"SkodaBlue",
	"SkodaRed",
	"SkodaGreen",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open",
	"Bus_city",
	"car_hatchback",
	"car_sedan"];
	_max = count _civcars;
	
	_zone = createTrigger ["EmptyDetector", _respawnpoint ];
	_zone setTriggerActivation ["WEST", "PRESENT", false];
	_zone setTriggerArea [300, 300, 0, true];
	_zone setTriggerStatements ["this", "", ""];
	//_trgobj3 setTriggerTimeout [5, 10, 7, true ];
	
	if(_isEjectable) then{
		_ejectCargo = _vcl addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl];
	};
	
	for [{_loop2=0}, {_loop2<1}, {_loop2=_loop2}] do
	{
		_cull = false;
		_stime = _rtime;
		for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
		{
			sleep _time;
			//if(_vcl == vtcar) then {hint "loop1"};
			//if(count list _zone == 0 and (_vcl in list _zone)) then {deleteVehicle _vcl};
			if(count list _zone == 0 and (_vcl distance _respawnpoint) < 10 and (count units _vcl == 0)) then {_cull = true;_loop=1};
			if ((_vcl distance _respawnpoint) > 50 and (count units _vcl == 0)) then {_loop=1};
			if(not alive _vcl) then {_loop=1};
			//if ((_vcl distance _respawnpoint) > 50 and (count units _vcl == 0)) then {_loop=1};
		};
		if (_vcl in list airportin) then
		{
			_stime = 60;
		};	
		_i = 0;
		while {_i <= _stime} do 
		{
			//if(_vcl == vtcar) then {hint "loop2"};
			if (_i == _stime or _cull) then 
			{
				_vcl removealleventhandlers "killed";
				_vcl removealleventhandlers "getout";
				_vcl removealleventhandlers "getin";
				_vcl removealleventhandlers "IncomingMissile";
				_vcl removeAction _ejectCargo;
				deleteVehicle _vcl;
				for [{_loop3=0}, {_loop3<1}, {_loop3=_loop3}] do
				{
					if(count list _zone > 0) then {_loop3=1;_i = _stime};
					sleep 1.0;
				};
				_vcl = (_civcars select round random (_max - 1)) createVehicle _respawnpoint;
				_vcl setpos _respawnpoint;
				_vcl setdir _azimut;
			};
			if (count units _vcl > 0) then {_i = _stime;};
			_i = _i + 10;
			if (_i < _stime) then {sleep 10.0}; //10 mins
		};	
		sleep 1.0;
	};
};



EVO_VecRm =
{	
	_time = 1+(random 1);
	sleep _time;
	vscripts=vscripts+1;
	_vcl = _this select 0;
	
	//if ((local server) and side _vcl != west) exitwith {deleteVehicle _vcl};
	_class = _this select 1;
	_rtime = _this select 2;
	_isEjectable = _this select 3;
	_respawnpoint = position _vcl;
	_azimut = direction _vcl;
	
	_zone = createTrigger ["EmptyDetector", _respawnpoint ];
	_zone setTriggerActivation ["WEST", "PRESENT", false];
	_zone setTriggerArea [300, 300, 0, true];
	_zone setTriggerStatements ["this", "", ""];
	//_trgobj3 setTriggerTimeout [5, 10, 7, true ];
	if(_vcl isKindOf "Air") then
	{
		_warning = _vcl addEventHandler["IncomingMissile",{if ((_this select 1) in aaweapons) then 
		{	
			mtar = driver (_this select 0);
			publicVariable "mtar";
		}}];
	};
	if(_isEjectable) then{
		_ejectCargo = _vcl addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl];
	};
	
	for [{_loop2=0}, {_loop2<1}, {_loop2=_loop2}] do
	{
		_cull = false;
		_stime = _rtime;
		for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
		{
			sleep _time;
			//if(_vcl == testcar) then {hint "loop1"};
			//if(count list _zone == 0 and (_vcl in list _zone)) then {deleteVehicle _vcl};
			if(count list _zone == 0 and (_vcl distance _respawnpoint) < 10 and (count units _vcl == 0)) then {_cull = true;_loop=1};
			if ((_vcl distance _respawnpoint) > 50 and (count units _vcl == 0)) then {_loop=1};
			if(not alive _vcl) then {_loop=1};
			//if ((_vcl distance _respawnpoint) > 50 and (count units _vcl == 0)) then {_loop=1};
		};
		if (_vcl in list airportin) then
		{
			_stime = 240;
		};	
		_i = 0;
		while {_i <= _stime} do 
		{
			//if(_vcl == testcar) then {hint "loop2"};
			if (_i == _stime or _cull) then 
			{
				_vcl removealleventhandlers "killed";
				_vcl removealleventhandlers "getout";
				_vcl removealleventhandlers "getin";
				_vcl removealleventhandlers "IncomingMissile";
				if(_isEjectable) then{
					_vcl removeAction _ejectCargo;
				};
				deleteVehicle _vcl;
				for [{_loop3=0}, {_loop3<1}, {_loop3=_loop3}] do
				{
					if(count list _zone > 0) then {_loop3=1;_i = _stime};
					sleep 1.0;
				};
				
				_vcl = _class createVehicle _respawnpoint;
				_vcl setpos _respawnpoint;
				_vcl setdir _azimut;
				if(_vcl isKindOf "Air") then
				{
					_warning = _vcl addEventHandler["IncomingMissile",{if ((_this select 1) in aaweapons) then 
					{	
						mtar = driver (_this select 0);
						publicVariable "mtar";
					}}];
				};
				if(_isEjectable) then{
					_ejectCargo = _vcl addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl];
				};
			};
			if (count units _vcl > 0) then {_i = _stime;};
			_i = _i + 10;
			if (_i < _stime) then {sleep 10.0}; //10 mins
		};	
		sleep 1.0;
	};

};


EVO_VecR =
{	
	_time = 1+(random 1);
	sleep _time;
	vscripts=vscripts+1;
	_vcl = _this select 0;
	_class = _this select 1;
	_name = _this select 2;
	_oldpos = _this select 3; 
	_isEjectable = _this select 4;
	_died = false;
	_vclm = format ["%1", _vcl];
	_rmess = format [localize "EVO_043", _name];
	_vcl2=objNull;
	_markerobj = createMarker[_vclm,[getpos _vcl select 0,getpos _vcl select 1]];
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerType  "join";
	_markerobj setMarkerSize [0.0, 0.0];
	_rtime = 0;
	if(_vcl isKindOf "Air") then
	{
		_warning = _vcl addEventHandler["IncomingMissile",{if ((_this select 1) in aaweapons) then 
		{	
			mtar = driver (_this select 0);
			publicVariable "mtar";
		}}];
	};
	if(_isEjectable) then{
		_ejectCargo = _vcl addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl];
	};
	EVO_Frew = 
	{
		//if(_vcl == testcar) then {hint format["%1",_died, fuel _vcl]};
		if(_died and (damage _vcl) == 0) then
		{
			
			if (_vcl in list reng1) then
			{
				epoint = eng1;
				publicVariable "epoint";
			};
			if (_vcl in list reng2) then
			{
				epoint = eng2;
				publicVariable "epoint";
			};
			if (_vcl in list reng3) then
			{	
				epoint = eng3;
				publicVariable "epoint";
			};
			if (_vcl in list reng4) then
			{
				epoint = eng4;
				publicVariable "epoint";
			};
			_died = false;
			_rtime = time+600;
		}
	};
	
	for [{_mloop=0}, {_mloop<1}, {_mloop=_mloop}] do
	{
		for [{_sloop=0}, {_sloop<1}, {_sloop=_sloop}] do
		{
			deleteMarker _markerobj;
			
			if (not (_vcl in list airportin) and (count crew _vcl) == 0 and (alive _vcl)) then
			{
				_markerobj = createMarker[_vclm,[getpos _vcl select 0,getpos _vcl select 1]];
				_markerobj setMarkerText format ["%1", _name];
				if (fuel _vcl == 0) then
				{
					_markerobj setMarkerText format ["%1 needs repair", _name];
				}
				else
				{
					_markerobj setMarkerText format ["%1", _name];
				};
				_markerobj setMarkerColor "ColorBlue";
				_markerobj setMarkerType  "join";
				_markerobj setMarkerSize [0.5, 0.5];
			};
			for [{_dloop=0}, {_dloop<1}, {_dloop=_dloop}] do
			{
				sleep _time;
				[] call EVO_Frew;
				if (not (alive _vcl)) then {_dloop=1};
				if (not (_vcl in list airportin) and count (crew _vcl) == 0) then {_dloop=1};
				if(_died and (fuel _vcl) > 0) then {_dloop=1};
			};
			_ntime = time+600;
			for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
			{
				sleep _time;
				[] call EVO_Frew;
				if (not (alive _vcl)) then {_loop=1};
				if (not (_vcl in list airportin) and count (crew _vcl) == 0 and (fuel _vcl > 0)) then {_loop=1};
				if (time > _ntime) then {_loop=1};
				if(_died and (fuel _vcl) > 0) then {_loop=1};
			};
			if (not (alive _vcl)) then {_sloop=1};
			//hint "";
			sleep 10.0;
			//hint format ["loop %1 %2 %3",(count crew _vcl),(alive _vcl),(fuel _vcl)];
		};
		sleep 10.0;
		_respawnpoint = position _vcl;
		_posasl = getPosASL _vcl;
		_azimut = direction _vcl;
		if (_posasl select 2 < 1.0) then 
		{
			//hint format["%1 z",_respawnpoint select 2];
			sleep 3200.0;
			_vcl removealleventhandlers "killed";
			_vcl removealleventhandlers "getout";
			_vcl removealleventhandlers "getin";
			_vcl removealleventhandlers "IncomingMissile";	
			_vcl removeAction _ejectCargo;
			deleteVehicle _vcl;
			_vcl2 = _class createVehicle [10000+(random 1000),10000+(random 1000),0];
			if(_vcl2 isKindOf "Air") then
			{
				_warning = _vcl2 addEventHandler["IncomingMissile",{if ((_this select 1) in aaweapons) then 
				{	
					mtar = driver (_this select 0);
					publicVariable "mtar";
				}}];
			};
			if(_isEjectable) then{
				_ejectCargo = _vcl2 addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl2];
			};
			_vcl2 setpos _oldpos;
			_vcl2 setdir 0.0;
		}
		else
		{
			_vcl2 = _class createVehicle [10000+(random 1000),10000+(random 1000),0];
			if(_vcl2 isKindOf "Air") then
			{
				_warning = _vcl2 addEventHandler["IncomingMissile",{if ((_this select 1) in aaweapons) then 
				{	
					mtar = driver (_this select 0);
					publicVariable "mtar";
				}}];
			};
			if(_isEjectable) then{
				_ejectCargo = _vcl2 addAction ["Eject Cargo", "actions\EjectCargo.sqf", _vcl2];
			};
			_vcl2 setfuel 0;
			sleep 1.0;
			_vcl setpos [0+(random 1000),0+(random 1000),-10];
			if(_vcl2 isKindOf "StaticWeapon") then{
				_vcl2 setpos  [(_respawnpoint select 0),(_respawnpoint select 1),(_respawnpoint select 2)];
			}else{
				_vcl2 setpos  [(_respawnpoint select 0),(_respawnpoint select 1),(_respawnpoint select 2)+2];
			};
			_vcl2 setdir _azimut;
			_vcl2 setdammage 0.60;
			_vcl removealleventhandlers "killed";
			_vcl removealleventhandlers "getout";
			_vcl removealleventhandlers "getin";
			_vcl removealleventhandlers "IncomingMissile";
			_vcl removeAction _ejectCargo;
			if(time > _rtime) then {_died = true};
			deleteVehicle _vcl;
		};
		_vcl = _vcl2;
	};
};

EVO_VecRAA =
{
	_time = 1+(random 1);
	sleep _time;
	vscripts=vscripts+1;
	_vcl = _this select 0;
	_grp = group _vcl;
	//if ((local server) and side _vcl != west) exitwith {deleteVehicle _vcl};
	_class = _this select 1;
	_rtime = _this select 2;
	_exitcond = _this select 3;
	_respawnpoint = position _vcl;
	_azimut = direction _vcl;

	_zone = createTrigger ["EmptyDetector", _respawnpoint ];
	_zone setTriggerActivation ["WEST", "PRESENT", false];
	_zone setTriggerArea [1200, 1200, 0, true];
	_zone setTriggerStatements ["this", "", ""];

	_unitm = format ["%1", _vcl];
	_markerobj = createMarker[_unitm,[getpos _vcl select 0,getpos _vcl select 1]];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorRedAlpha";
	_markerobj setMarkerBrush "Cross";
	_markerobj setMarkerSize [1200, 1200];

	EVO_MakeShilka =
	{
		_vcl = _class createVehicle _respawnpoint;
		_vcl setpos _respawnpoint;
		_vcl setdir _azimut;	
		_grp = createGroup (east);
		_unit1 = _grp createUnit ["SoldierECrew", _respawnpoint, [], 300, "NONE"];
		_unit2 = _grp createUnit ["SoldierECrew", _respawnpoint, [], 300, "NONE"];
		_unit3 = _grp createUnit ["SoldierECrew", _respawnpoint, [], 300, "NONE"];
		[_unit1,_unit2,_unit3] join _grp;
		
		
		
		{_x setSkill  1;_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _grp);
		_vcl addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
		_recy = [_grp,"none",objNull] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
		sleep 1.0;
		_unit1 moveInCommander _vcl;
		_unit2 moveInGunner _vcl;
		_unit3 moveInDriver _vcl;
		[_vcl] call EVO_Lock; //edit
	};

	_cull = false;
	for [{_loop2=0}, {_loop2<1}, {_loop2=_loop2}] do
	{
		sleep _time;
		//_cull = false;
		_stime = _rtime;
		//if(_vcl == testaa) then {hint format ["loop1 %1 %2",(list _zone),count list _zone,_loop4]};
		if(alive _vcl) then {_markerobj setMarkerPos position _vcl};
		if(count list _zone == 0 and not _cull) then 
		{	
			_cull = true;
			_del = [_grp] spawn {[_this select 0] call EVO_Delete};
		};
		if((count list _zone > 0) and _cull) then 
		{	
			_cull = false;
			[] call EVO_MakeShilka;		
		};	
		if(not alive _vcl) then 
		{	
			if (not _cull) then
			{
				deleteMarker _markerobj;
				_loop2 =  1;
				/*
				sleep 3200.0;
				if(_exitcond) then {_loop2=1};
				[] call EVO_MakeShilka;	
				_unitm = format ["%1", _vcl];
				_markerobj = createMarker[_unitm,[getpos _vcl select 0,getpos _vcl select 1]];
				_markerobj setMarkerShape "ELLIPSE";
				_markerobj setMarkerColor "ColorRedAlpha";
				_markerobj setMarkerBrush "Cross";
				_markerobj setMarkerSize [1200, 1200];	
				*/
			};

		};
	};
};