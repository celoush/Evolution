_unit = objNull;
_count = 0;
_spawn = [0,0,0];
_spawns = [];
_radio = objNull;
_target = [0,0,0];
_guard = grpNull;
_elist = objNull;
_alist = objNull;
_tag = "";
_allunits = ["SoldierEMG","SoldierEAT","SoldierEAT","SoldierEAT","SoldierESniper","SoldierEMedic","SoldierEG","SoldierEB","SoldierEAA","SoldierEAA"];
_max = count _allunits;
_cond = false;
_wtime = 0;

EVOReinf = 
{
	_tag = _this select 0;
	_guard = createGroup (east);
	_pos = _spawn;

	_allvec = [EVO_mURAL,EVO_mT72,EVO_mBMP2,EVO_mUAZ,EVO_mBRDM];
	_maxo = count _allvec;
	_ref = [] call (_allvec select round random (_maxo - 1));
	_ref = [] call (_allvec select round random (_maxo - 1));
	
	{_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _guard);
	_recy = [_guard,_tag,_alist] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
	_guard setFormation "COLUMN";
	
	[position _elist,_guard,_radio,_alist] call EVO_Erefway;
	[_guard, 2] setWaypointCombatMode "RED";
	_count = count units _guard;
	_idle = [_guard,_target,1,_alist,_elist] execVM "scripts\idelref.sqf";
};

EVO_mURAL = 
{	
	_ural = createVehicle ["URAL", _pos, _spawns, 0, "NONE"];[_ural] call EVO_Lock;_ural addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsDriver _ural;_unit moveInDriver _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
};

EVO_mT72 = 
{	
	_ural = createVehicle ["T72", _pos, _spawns, 40, "NONE"];[_ural] call EVO_Lock;_ural addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCommander _ural;_unit moveInCommander _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsGunner _ural;_unit moveInGunner _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsDriver _ural;_unit moveInDriver _ural;
};

EVO_mBMP2 = 
{	
	_ural = createVehicle ["BMP2", _pos, _spawns, 40, "NONE"];[_ural] call EVO_Lock;_ural addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCommander _ural;_unit moveInCommander _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsGunner _ural;_unit moveInGunner _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsDriver _ural;_unit moveInDriver _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;		
};

EVO_mUAZ = 
{	
	_ural = createVehicle ["UAZMG", _pos, _spawns, 40, "NONE"];[_ural] call EVO_Lock;_ural addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsGunner _ural;_unit moveInGunner _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsDriver _ural;_unit moveInDriver _ural;
};

EVO_mBRDM = 
{	
	_ural = createVehicle ["BRDM2", _pos, _spawns, 40, "NONE"];[_ural] call EVO_Lock;_ural addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsGunner _ural;_unit moveInGunner _ural;
	_unit = _guard createUnit ["SoldierECrew", _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsDriver _ural;_unit moveInDriver _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
	_unit = _guard createUnit [(_allunits select round random (_max - 1)), _pos, [], 0, "NONE"];[_unit] join _guard;_unit assignAsCargo _ural;_unit moveInCargo _ural;
};

EVO_directref = 
{
	switch (lastalert) do //heavy wep
	{
		case "mobj1":
		{
			_spawn = GetMarkerPos "parref";
			_spawns = ["parref","parrefa","parrefb"];
			_radio = parso1;
			_target = GetMarkerPos lastalert;
			_alist = apar;
			_elist = parlist;
			_cond = opar;
			if(parmec>=Bparmec) then 
			{
				_cond=true
			}
			else
			{
				parmec=parmec+1;
			};
			_tag = "parmec";


		};
		 case "mobj2":
		{
			_spawn = GetMarkerPos "somref";
			_spawns = ["somref","somrefa","somrefb"];
			_radio = somso1;
			_target = GetMarkerPos lastalert;
			_alist = asom;
			_elist = somlist;
			_cond = osom;
			if(sommec>=Bsommec) then {_cond=true}else{sommec=sommec+1};
			_tag = "sommec";

		};
		 case "mobj3":
		{
			_spawn = GetMarkerPos "cayref";
			_spawns = ["cayref","cayrefa","cayrefb"];
			_radio = cayso1;
			_target = GetMarkerPos lastalert;
			_alist = acay;
			_elist = caylist;
			_cond = ocay;
			if(caymec>=Bcaymec) then {_cond=true}else{caymec=caymec+1};
			_tag = "caymec";

		};
		 case "mobj4":
		{
			_spawn = GetMarkerPos "dolref";
			_spawns = ["dolref","dolrefa","dolrefb"];
			_radio = dolso1;
			_target = GetMarkerPos lastalert;
			_alist = adol;
			_elist = dollist;
			_cond = odol;
			if(dolmec>=Bdolmec) then {_cond=true}else{dolmec=dolmec+1};
			_tag = "dolmec";

		};
		 case "mobj5":
		{
			_spawn = GetMarkerPos "ortref";
			_spawns = ["ortref","ortrefa","ortrefb"];
			_radio = ortso1;
			_target = GetMarkerPos lastalert;
			_alist = aort;
			_elist = ortlist;
			_cond = oort;
			if(ortmec>=Bortmec) then {_cond=true}else{ortmec=ortmec+1};
			_tag = "ortmec";

		};
		 case "mobj6":
		{
			_spawn = GetMarkerPos "corref";
			_spawns = ["corref","correfa","correfb"];
			_radio = corso1;
			_target = GetMarkerPos lastalert;
			_alist = acor;
			_elist = corlist;
			_cond = ocor;
			if(cormec>=Bcormec) then {_cond=true}else{cormec=cormec+1};
			_tag = "cormec";

		};
		 case "mobj7":
		{
			_spawn = GetMarkerPos "obrref";
			_spawns = ["obrref","obrrefa","obrrefb"];
			_radio = obrso1;
			_target = GetMarkerPos lastalert;
			_alist = aobr;
			_elist = obrlist;
			_cond = oobr;
			if(obrmec>=Bobrmec) then {_cond=true}else{obrmec=obrmec+1};
			_tag = "obrmec";

		};
		 case "mobj8":
		{
			_spawn = GetMarkerPos "bagref";
			_spawns = ["bagref","bagrefa","bagrefb"];
			_radio = bagso1;
			_target = GetMarkerPos lastalert;
			_alist = abag;
			_elist = baglist;
			_cond = obag;
			if(bagmec>=Bbagmec) then {_cond=true}else{bagmec=bagmec+1};
			_tag = "bagmec";

		};
		 case "mobj9":
		{
			_spawn = GetMarkerPos "eporef";
			_spawns = ["eporef","eporefa","eporefb"];
			_radio = eposo1;
			_target = GetMarkerPos lastalert;
			_alist = aepo;
			_elist = epolist;
			_cond = oepo;
			if(epomec>=Bepomec) then {_cond=true}else{epomec=epomec+1};
			_tag = "epomec";

		};
		 case "mobj10":
		{
			_spawn = GetMarkerPos "masref";
			_spawns = ["masref","masrefa","masrefb"];
			_radio = masso1;
			_target = GetMarkerPos lastalert;
			_alist = amas;
			_elist = maslist;
			_cond = omas;
			if(masmec>=Bmasmec) then {_cond=true}else{masmec=masmec+1};
			_tag = "masmec";

		};
		 case "mobj11":
		{
			_spawn = GetMarkerPos "pitref";
			_spawns = ["pitref","pitrefa","pitrefb"];
			_radio = pitso1;
			_target = GetMarkerPos lastalert;
			_alist = apit;
			_elist = pitlist;
			_cond = opit;
			if(pitmec>=Bpitmec) then {_cond=true}else{pitmec=pitmec+1};
			_tag = "pitmec";
		};
	
	};
	if(alive _radio and not _cond) then {[_tag] call EVOReinf};
};

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	_wtime = 600/Playercount;
	sleep _wtime;
	[] call EVO_directref;
};