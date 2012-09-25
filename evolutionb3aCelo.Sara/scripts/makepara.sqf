if (not (local server)) exitwith {};
rscripts=rscripts+1;
_allunits = ["SoldierEMG","SoldierEAT","SoldierEAT","SoldierEAT","SoldierESniper","SoldierEMedic","SoldierEG","SoldierEB","SoldierEAA","SoldierEAA"];
_max = (count _allunits)-1;

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	_alist = objNull;
	_elist = objNull;
	_radio = objNull;
	_newpos = [0,0,0];
	_cond = false;
	_tag = "none";
	_wtime = 0;
	switch (lastalert) do //heavy wep
	{
		 case "mobj1":
		{
			_spawn = GetMarkerPos "parref";
			_radio = parso1;
			_target = GetMarkerPos lastalert;
			_alist = apar;
			_elist = parlist;
			_cond = opar;
			if(parinf>=Bparinf) then 
			{
				_cond=true
			}
			else
			{
				parinf=parinf+1;
			};
			_tag = "parinf";


		};
		 case "mobj2":
		{
			_spawn = GetMarkerPos "somref";
			_radio = somso1;
			_target = GetMarkerPos lastalert;
			_alist = asom;
			_elist = somlist;
			_cond = osom;
			if(sominf>=Bsominf) then {_cond=true}else{sominf=sominf+1};
			_tag = "sominf";

		};
		 case "mobj3":
		{
			_spawn = GetMarkerPos "cayref";
			_radio = cayso1;
			_target = GetMarkerPos lastalert;
			_alist = acay;
			_elist = caylist;
			_cond = ocay;
			if(cayinf>=Bcayinf) then {_cond=true}else{cayinf=cayinf+1};
			_tag = "cayinf";

		};
		 case "mobj4":
		{
			_spawn = GetMarkerPos "dolref";
			_radio = dolso1;
			_target = GetMarkerPos lastalert;
			_alist = adol;
			_elist = dollist;
			_cond = odol;
			if(dolinf>=Bdolinf) then {_cond=true}else{dolinf=dolinf+1};
			_tag = "dolinf";

		};
		 case "mobj5":
		{
			_spawn = GetMarkerPos "ortref";
			_radio = ortso1;
			_target = GetMarkerPos lastalert;
			_alist = aort;
			_elist = ortlist;
			_cond = oort;
			if(ortinf>=Bortinf) then {_cond=true}else{ortinf=ortinf+1};
			_tag = "ortinf";

		};
		 case "mobj6":
		{
			_spawn = GetMarkerPos "corref";
			_radio = corso1;
			_target = GetMarkerPos lastalert;
			_alist = acor;
			_elist = corlist;
			_cond = ocor;
			if(corinf>=Bcorinf) then {_cond=true}else{corinf=corinf+1};
			_tag = "corinf";

		};
		 case "mobj7":
		{
			_spawn = GetMarkerPos "obrref";
			_radio = obrso1;
			_target = GetMarkerPos lastalert;
			_alist = aobr;
			_elist = obrlist;
			_cond = oobr;
			if(obrinf>=Bobrinf) then {_cond=true}else{obrinf=obrinf+1};
			_tag = "obrinf";

		};
		 case "mobj8":
		{
			_spawn = GetMarkerPos "bagref";
			_radio = bagso1;
			_target = GetMarkerPos lastalert;
			_alist = abag;
			_elist = baglist;
			_cond = obag;
			if(baginf>=Bbaginf) then {_cond=true}else{baginf=baginf+1};
			_tag = "baginf";

		};
		 case "mobj9":
		{
			_spawn = GetMarkerPos "eporef";
			_radio = eposo1;
			_target = GetMarkerPos lastalert;
			_alist = aepo;
			_elist = epolist;
			_cond = oepo;
			if(epoinf>=Bepoinf) then {_cond=true}else{epoinf=epoinf+1};
			_tag = "epoinf";

		};
		 case "mobj10":
		{
			_spawn = GetMarkerPos "masref";
			_radio = masso1;
			_target = GetMarkerPos lastalert;
			_alist = amas;
			_elist = maslist;
			_cond = omas;
			if(masinf>=Bmasinf) then {_cond=true}else{masinf=masinf+1};
			_tag = "masinf";

		};
		 case "mobj11":
		{
			_spawn = GetMarkerPos "pitref";
			_radio = pitso1;
			_target = GetMarkerPos lastalert;
			_alist = apit;
			_elist = pitlist;
			_cond = opit;
			if(pitinf>=Bpitinf) then {_cond=true}else{pitinf=pitinf+1};
			_tag = "pitinf";
		};
	};
	if(alive _radio and not _cond) then 
	{
		_pilot = createGroup (east);
		_pos = getMarkerPos lastalert;
		_heli = objnull;
		_unit1 = _pilot createUnit ["SoldierEPilot", tpos3, [], 300, "NONE"];
		_unit2 = _pilot createUnit ["SoldierEPilot", tpos3, [], 300, "NONE"];
		[_unit1,_unit2] join _pilot;

		_rndpos = [ka1,ka2,ka3,ka4];
		_max2 = count _rndpos;
		_rndpos = (_rndpos select round random (_max2 - 1));
		_newpos = position _rndpos;

		_wp = _pilot addWaypoint [_pos, 10];
		_wp2 = _pilot addWaypoint [_newpos, 10];

		_recy = [_pilot,"none",objNull] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
		_pos1 = [(_pos select 0)-1000 -(random 2000),(_pos select 1)+2000 -(random 3000),(200 + random 100)];
		_pos2 = [(_pos select 0)+1000 +(random 2000),(_pos select 1)+2000 -(random 3000),(200 + random 100)];
		if(floor (random 2) == 1) then 
		{
			_heli = createVehicle ["Mi17_MG",_pos1, [], 0, "FLY"];
		}else
		{
			_heli = createVehicle ["Mi17_MG",_pos2, [], 0, "FLY"];
		};
		
		_heli setdir 270;
		_heli setfuel 0.5;
		_heli engineon true;

		_unit1 moveInDriver _heli;
		_unit2 moveInGunner _heli;
		_unit1 setBehaviour "careless";
		_heli flyInHeight 100;

		{_x addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}]} forEach (units _pilot);
		_heli addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];

		(driver _heli) commandMove _pos;
		(driver _heli) doMove _pos;

		waitUntil {(_heli distance _pos) < (random 200) or not (canmove _heli)};

		if (canmove _heli) then 
		{
			_para = createGroup (east);
			_count = (round random 6)+4;
			_i = 0;
			while {_i <= _count} do 
			{
				_pos = position _heli;
				_unit = _para createUnit [_allunits select (round random _max), [0,0,0], [], 300, "NONE"];
				_unit addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
				[_unit] join _para;
				_vec = createVehicle ["ParachuteEast", _pos, [], 20, 'NONE'];
				_vec setpos [_pos select 0,_pos select 1,(_pos select 2)- 10];
				_unit MoveInDriver _vec;
				sleep 1;
				_i = _i + 1;
			};
			_recy = [_para,_tag,_alist] spawn {[_this select 0,_this select 1,_this select 2] call EVO_gRecy};
			_para setCombatMode "RED";
			[_pos,_para,_radio,_alist] call EVO_Erefway;
			_idle = [_pilot,_newpos,2,_alist,_elist] execVM "scripts\idelref.sqf";
			_idle = [_para,_pos,1,_alist,_elist] execVM "scripts\idelref.sqf";
		};
	};
	_wtime = 300/Playercount;
	sleep _wtime;
};