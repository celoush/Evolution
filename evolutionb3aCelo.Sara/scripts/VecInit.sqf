_unit = _this select 0;
_vec = _this select 1;
_Vehicle = typeOf _vec;
_rank1 = rank1;
_rank2 = rank2;
_rank3 = rank3;
_rank4 = rank4;
_rank5 = rank5;
_rank6 = rank6;
_dunit = _unit;
_warning = 0;
if (not (local _unit)) exitwith {};


EVO_Eject = 
{
	_unit = _this select 0;
	_unit action ["ENGINEOFF", vehicle _unit];
	_unit action ["Eject",vehicle _unit];
	sleep 1;
	_unit action ["Eject",vehicle _unit];
};


if (getdammage _vec == 0) then
{
	_vec setdammage 0.01;
};
if (not (isPlayer _unit)) then
{
	_dunit = (leader _unit);
};
switch (_Vehicle) do
{
    case "DC3":
    {
	if (score _dunit < _rank2) then {_handle = [_dunit,_rank2] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player and _vec in list AirportIn) then {wcam = _vec addaction ["Taxi to runway", "actions\taxi.sqf",0,1, false, true,"test2"]};
    };
    case "A10":
    {
	if (not (player isKindOf "BISCamelPilot") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank6] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };
    case "AH1W":
    {
	if (((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank6] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };
    case "M1Abrams":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank5] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "AV8B":
    {
	if (not (player isKindOf "BISCamelPilot") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank6] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };
    case "Stryker_TOW":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "AV8B2":
    {
	if (not (player isKindOf "BISCamelPilot") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank5] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    }; 
    case "AH6":
    {
  if (((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank5] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };    
    case "UH60":
    {
	if (((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "Vulcan":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };    
    case "UH60MG":
    {
	if (((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    }; 
    case "M113":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "Stryker_ICV_MK19":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };    
    case "Stryker_ICV_M2":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "MH6":
    {
	if (((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank2] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    }; 
    case "HMMWVTOW":
    {
	if (not (player isKindOf "SoldierWCrew") and not (player isKindOf "OfficerW") and not (player isKindOf "SoldierWMiner")) then {_handle = [_dunit,_rank2] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "Truck5tMG":
    {
	if (score _dunit < _rank1) then {_handle = [_dunit,_rank1] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "HMMWVMK":
    {
	if (score _dunit < _rank2) then {_handle = [_dunit,_rank2] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };     
    case "HMMWV50":
    {
	if (score _dunit < _rank1) then {_handle = [_dunit,_rank1] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };    
    case "ZSU":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };  
    case "BMP2":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };  
    case "BRDM2":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "BRDM2_ATGM":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "T72":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank5] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "UAZMG":
    {
	if (score _dunit < _rank1) then {_handle = [_dunit,_rank1] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "UAZ_AGS30":
    {
	if (not (player isKindOf "SoldierWCrew")) then {_handle = [_dunit,_rank2] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };    
    case "Su34":
    {
	if (not (player isKindOf "BISCamelPilot")) then {_handle = [_dunit,_rank5] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };
    case "Su34B":
    {
	if (not (player isKindOf "BISCamelPilot")) then {_handle = [_dunit,_rank6] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };     
    case "KA50":
    {
	if ((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) then {_handle = [_dunit,_rank6] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
	if(_unit == player) then {wcam = _vec addaction [localize "EVO_025", "actions\wepcam.sqf",0,1, false, true,"test2"]};
    };
    case "Mi17":
    {
	if ((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) then {_handle = [_dunit,_rank4] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "Mi17_MG":
    {
	if ((not (player isKindOf "SoldierWPilot")) or (player isKindOf "BISCamelPilot")) then {_handle = [_dunit,_rank3] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "BMP2Ambul":
    {
	if (score _dunit < 1000) then {_handle = [_dunit,_rank1] execVM "scripts\req.sqf";[_unit] call EVO_Eject};
    };
    case "Truck5tRepair":
    {
    	if (player isKindOf "SoldierWMiner") then
    	{    
    	if(not (isNull ltrk)) then
    	{
    		ltrk removeaction elock;
    		ltrk lock false;
    	};
    	if(ltrk != _vec) then {elock = _vec addaction ["Lock Truck", "actions\englock.sqf",0,1, false, true,"test2"];ltrk = _vec};
    	};
    };
    case "UralRepair":
    {
    	if (player isKindOf "SoldierWMiner") then
    	{
    	if(not (isNull ltrk)) then
    	{
    		ltrk removeaction elock;
    		ltrk lock false;
    	};
    	if(ltrk != _vec) then {elock = _vec addaction ["Lock Truck", "actions\englock.sqf",0,1, false, true,"test2"];ltrk = _vec};
    	};
     };
};
if(_unit != player) exitWith {};
if(_vec isKindOf "Air") then
{
	if(_Vehicle == "AV8B") then 
	{
		_fireb = _vec addEventHandler["Fired",{if ((_this select 2) == "BombLauncher") then {trkbmb = [(_this select 0)] execVM "scripts\Trkbmb.sqf"}}];
	};
	/*
	_hit = player addEventHandler ["hit", 
	{
		_rnd = round(random 2);
		switch (_rnd) do
		{
			case 0:
			{
				driver (_this select 0) say "Hit1";
				hint "hit1";
			};
			case 1:
			{
				driver (_this select 0) say "Hit2";
				hint "hit2";
			};
			case 2:
			{
				driver (_this select 0) say "Hit1";
				hint "hit3";
			};	
		};
	}];
	if(_hit > 0) then {_vec removeEventHandler ["hit", _hit]};
	*/
setViewDistance avdist;
};
_getin = _vec addEventHandler ["GetIn", {handle = [(_this select 0),(_this select 1)] execVM call EVO_Boarding}];

if(_getin > 1) then {_vec removeEventHandler ["GetIn", _getin];};

Waituntil {player != driver _vec};
_vec removeaction wcam;
_vec removealleventhandlers "Fired";
setViewDistance vdist;
