/*
vecrespawnm
AV8B2
AV8B
A10
Truck5tReammo
Truck5tRefuel
Truck5tRepair
Truck5t
Truck5topen
HMMWV
HMMWV
KA50
Su34
RHIB2Turret
Zodiac
M113Ambul
MH6 ---


vecrespawn
AH1W
UH60MG
AH6
UH60
M113
Vulcan
M1Abrams
Stryker_TOW
Stryker_ICV_M2
Stryker_ICV_MK19
HMMWV50
HMMWVMK
HMMWVTOW
Truck5tMG
MH6 ---

vecrespawna
ZSU
*/

sleep 2.0;
{
	_type = TypeOf _x;
	if (side _x == east and _x == (leader group _x)) then {egroups = egroups +1};
	//if (side _x == west and _x == (leader group _x)) then {addSwitchableUnit _x};     
	switch (_type) do
	{
		 case "DC3":
		{
			_unit = [_x,_type,300] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};	
		 case "A10":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,3600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
			};
		};	
		 case "AV8B2":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,3600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
			};
		};
		 case "AV8B":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,3600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
			};
		};
		 case "Truck5tReammo":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "Truck5tRefuel":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "Truck5tRepair":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "Truck5t":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "Truck5topen":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "HMMWV":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "RHIB2Turret":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		case "M113Ambul": //SPAWN FOR MII3 MHQ!!!
		{
			_unit = [_x,_type,241] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "Zodiac":
		{
			_unit = [_x,_type,600] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm};
		};
		 case "MH6":
		{
			if(Param1 >= 2) then {_unit = [_x,_type,300] spawn {[_this select 0,_this select 1,_this select 2] call EVO_VecRm}}else{_unit = [_x,_type,"MH-6",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};};
			
		};
		 case "AH1W":
		{	
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"AH-1Z",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "AH6":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"AH-6",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "UH60MG":
		{
			_unit = [_x,_type,"UH60-MG",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
		};
		 case "UH60":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"UH60-FFAR",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "M113":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"M113",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Vulcan":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"Vulcan",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "M1Abrams":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"M1A1",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Stryker_TOW":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"Stryker TOW",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Stryker_ICV_M2":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"Stryker M2",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Stryker_ICV_MK19":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"Stryker Mk19",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "HMMWV50":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"HMMWV 50",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "HMMWVMK":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"HMMWV Mk19",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "HMMWVTOW":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"HMMWV TOW",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Truck5tMG":
		{
			if(Param1 == 7) then {deletevehicle _x} else {
			_unit = [_x,_type,"HMMWV TOW",position _x] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecR};
			};
		};
		 case "Bus_city":
		{
			_ccar = [_x,600] spawn {[_this select 0,_this select 1] call EVO_VecRc};
			
		};
		 case "ZSU":
		{
			_ccar = [_x,_type,600,osom] spawn {[_this select 0,_this select 1,_this select 2,_this select 3] call EVO_VecRAA};
		};		
		default
		{
			
		};
	};
	
} forEach list all;

