if(not (local server)) exitWith {};

switch (Param1) do
{
    case 0:
    {
    };
    case 1:
    {
	if(not local player) then {_handle = [] execVM "scripts\timeskip.sqf"};	
    };
    case 2:
    { 	
    };
    case 3:
    {
	if(not local player) then {_handle = [] execVM "scripts\timeskip.sqf"};
    }; 
    case 4:
    { 
    };
     case 5:
    { 
    	if(not local player) then {_handle = [] execVM "scripts\timeskip.sqf"};
    };     
};

_thread = [] execVM "scripts\MainThread.sqf";
_events = [] execVM "scripts\EventsS.sqf";
_handle = [] execVM "scripts\makesu.sqf";
_handle = [] execVM "scripts\makesuB.sqf";
_handle = [] execVM "scripts\makeka.sqf";
_handle = [] execVM "scripts\makeka.sqf";
_inc = [] execVM "scripts\reinforce.sqf";
//_para = [] execVM "scripts\makepara.sqf";
_sin = [] execVM "scripts\sinitS.sqf";
if (debug) then {_servs = [] execVM "scripts\debug.sqf"};

{
	if (_x isKindOf "OfficerE") then
	{
		_pobj = [_x] execVM "scripts\objoff.sqf";
	}
} forEach list alleast;