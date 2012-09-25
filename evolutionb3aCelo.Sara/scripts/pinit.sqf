bancount = 0;
_intro = player execVM "scripts\intro.sqf";
[] call EVO_ResetClick;

if(local player and not isServer) then
{
	{
		_far = (_x distance (getmarkerpos "det")) > 10;
		if ((count weapons _x) == 0 and _far or (_x isKindOf "OfficerE") and _far) then
		{
			pobj = [_x] execVM "scripts\submit.sqf";
		}
	} forEach list alleast;
};

player addEventHandler ["hit", 
{
	if (side (_this select 1) == east) then 
	{
		fattack = true;
		//hint "fattack";
	};
}];

_pos = [0,0,0];


_rainmarkt = createMarkerLocal ["rainmarkt", _pos];
_rainmarkt setMarkerTypeLocal "DOT";
_rainmarkt setMarkerColorLocal "ColorBlack";
_rainmarkt setMarkerTextLocal "R A I N";
_rainmarkt setMarkerSizeLocal [0, 0];

_rainmarkt = createMarkerLocal ["rainmarkt2", _pos];
_rainmarkt setMarkerShapeLocal "ICON";
_rainmarkt setMarkerTypeLocal "DOT";
_rainmarkt setMarkerColorLocal "ColorBlack";
_rainmarkt setMarkerTextLocal "R A I N";
_rainmarkt setMarkerSizeLocal [0, 0];

_rainmarkt = createMarkerLocal ["rainmarkt3", _pos];
_rainmarkt setMarkerShapeLocal "ICON";
_rainmarkt setMarkerTypeLocal "DOT";
_rainmarkt setMarkerColorLocal "ColorBlack";
_rainmarkt setMarkerTextLocal "R A I N";
_rainmarkt setMarkerSizeLocal [0, 0];

_rainmarkt = createMarkerLocal ["rainmarkt3", _pos];
_rainmarkt setMarkerShapeLocal "ICON";
_rainmarkt setMarkerTypeLocal "DOT";
_rainmarkt setMarkerColorLocal "ColorBlack";
_rainmarkt setMarkerTextLocal "R A I N";
_rainmarkt setMarkerSizeLocal [0, 0];

_rainmarkt = createMarkerLocal ["fogmarkt", _pos];
_rainmarkt setMarkerShapeLocal "ICON";
_rainmarkt setMarkerTypeLocal "DOT";
_rainmarkt setMarkerColorLocal "ColorBlack";
_rainmarkt setMarkerTextLocal "F O G";
_rainmarkt setMarkerSizeLocal [0, 0];

_cthread = [] execVM "scripts\MainThreadC.sqf";
_cscore = [player] call EVO_Cscore;
if (typeOf (vehicle player) == "SoldierWMedic") then {_med = player execVM "scripts\med.sqf"};
_mis = [] execVM "missions\missions.sqf";

//_handle = [] execVM "scripts\fog.sqf";
_handle = [] execVM "scripts\rain.sqf";

switch (Param1) do
{
    case 0:
    {
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    };
    case 1:
    {
	_handle = [] execVM "scripts\timeskip.sqf";
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    };
    case 2:
    {
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    };
    case 3:
    {
	_handle = [] execVM "scripts\timeskip.sqf";
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    }; 
    case 4:
    {
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    };
    case 5:
    { 
	_handle = [] execVM "scripts\timeskip.sqf";
	_trgobj = createTrigger ["EmptyDetector", position player ];
	_trgobj setTriggerText "Recruit Soldier";
	_trgobj setTriggerActivation ["ECHO", "PRESENT", true];
	_trgobj setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\RecruitSoldierDialog.sqf""",""];
    }; 
    case 6:
    {
    };    
};

/*
_ammohint = createTrigger ["EmptyDetector", [9822.640625,9983.246094,139.994995]];
_ammohint setTriggerActivation ["WEST", "PRESENT", false];
_ammohint setTriggerStatements ["this", "hint localize ""EVO_006""", ""];
_ammohint setTriggerArea [5, 5, 0, true ];

_grouphint = createTrigger ["EmptyDetector", [9879.968750,9994.811523,144.436172]];
_grouphint setTriggerActivation ["WEST", "PRESENT", false];
_grouphint setTriggerStatements ["this", "hint localize ""EVO_007""", ""];
_grouphint setTriggerArea [5, 5, 0, true ];

_missionhint = createTrigger ["EmptyDetector", [9775.578125,10063.174805,139.994995]];
_missionhint setTriggerActivation ["WEST", "PRESENT", false];
_missionhint setTriggerStatements ["this", "hint localize ""EVO_008""", ""];
_missionhint setTriggerArea [5, 5, 0, true ];

_rechint = createTrigger ["EmptyDetector", [9764.698242,10087.540039,139.994995]];
_rechint setTriggerActivation ["WEST", "PRESENT", false];
_rechint setTriggerStatements ["this", "hint localize ""EVO_009""", ""];
_rechint setTriggerArea [5, 5, 0, true ];


_trgobj = createTrigger ["EmptyDetector", position player ];
_trgobj setTriggerText "Missions Status";
_trgobj setTriggerActivation ["BRAVO", "PRESENT", true];
_trgobj setTriggerStatements ["this", ";hint format[localize ""EVO_012"", rndmis];", ""];
*/
_trgobj = createTrigger ["EmptyDetector", position player ];
_trgobj setTriggerText "My Squad";
_trgobj setTriggerActivation ["DELTA", "PRESENT", true];
_trgobj setTriggerStatements ["this", "squad = [0,0,0,[2,2]] execVM ""TeamStatusDialog\TeamStatusDialog.sqf""",""];

_trgobj = createTrigger ["EmptyDetector", position player ];
_trgobj setTriggerText "Select Mission";
_trgobj setTriggerActivation ["FOXTROT", "PRESENT", true];
_trgobj setTriggerStatements ["this", "squad = [] execVM ""missions\MissionSelectionDialog\MissionSelectionDialog.sqf""",""];

_trgobj = createTrigger ["EmptyDetector", position player ];
_trgobj setTriggerText "Fix head bug";
_trgobj setTriggerActivation ["GOLF", "PRESENT", true];
_trgobj setTriggerStatements ["this", "fixme = [] execVM ""scripts\headbug.sqf""",""];

_trgobj2 = createTrigger ["EmptyDetector", position player ];
_trgobj2 setTriggerText "Support";
_trgobj2 setTriggerActivation ["HOTEL", "PRESENT", true];
_trgobj2 setTriggerStatements ["this", "squad = [s] execVM ""Dialogs\Support.sqf""",""];

if (alive parso1) then
{
	_rad1 = createMarkerLocal ["radobj1", position parso1];
	_rad1 setMarkerShapeLocal "ICON";
	_rad1 setMarkerTypeLocal "Destroy";
	_rad1 setMarkerTextLocal "Destroy Radio Tower";
	_rad1 setMarkerSizeLocal [0.5, 0.5];
};
if (alive somso1) then
{
	_rad2 = createMarkerLocal ["radobj2", position somso1];
	_rad2 setMarkerShapeLocal "ICON";
	_rad2 setMarkerTypeLocal "Destroy";
	_rad2 setMarkerTextLocal "Destroy Radio Tower";
	_rad2 setMarkerSizeLocal [0.5, 0.5];
};
if (alive cayso1) then
{
	_rad3 = createMarkerLocal ["radobj3", position cayso1];
	_rad3 setMarkerShapeLocal "ICON";
	_rad3 setMarkerTypeLocal "Destroy";
	_rad3 setMarkerTextLocal "Destroy Radio Tower";
	_rad3 setMarkerSizeLocal [0.5, 0.5];
};
if (alive dolso1) then
{
	_rad4 = createMarkerLocal ["radobj4", position dolso1];
	_rad4 setMarkerShapeLocal "ICON";
	_rad4 setMarkerTypeLocal "Destroy";
	_rad4 setMarkerTextLocal "Destroy Radio Tower";
	_rad4 setMarkerSizeLocal [0.5, 0.5];
};
if (alive ortso1) then
{
	_rad5 = createMarkerLocal ["radobj5", position ortso1];
	_rad5 setMarkerShapeLocal "ICON";
	_rad5 setMarkerTypeLocal "Destroy";
	_rad5 setMarkerTextLocal "Destroy Radio Tower";
	_rad5 setMarkerSizeLocal [0.5, 0.5];
};
if (alive corso1) then
{
	_rad6 = createMarkerLocal ["radobj6", position corso1];
	_rad6 setMarkerShapeLocal "ICON";
	_rad6 setMarkerTypeLocal "Destroy";
	_rad6 setMarkerTextLocal "Destroy Radio Tower";
	_rad6 setMarkerSizeLocal [0.5, 0.5];
};
if (alive obrso1) then
{
	_rad7 = createMarkerLocal ["radobj7", position obrso1];
	_rad7 setMarkerShapeLocal "ICON";
	_rad7 setMarkerTypeLocal "Destroy";
	_rad7 setMarkerTextLocal "Destroy Radio Tower";
	_rad7 setMarkerSizeLocal [0.5, 0.5];
};
if (alive bagso1) then
{
	_rad8 = createMarkerLocal ["radobj8", position bagso1];
	_rad8 setMarkerShapeLocal "ICON";
	_rad8 setMarkerTypeLocal "Destroy";
	_rad8 setMarkerTextLocal "Destroy Radio Tower";
	_rad8 setMarkerSizeLocal [0.5, 0.5];
};
if (alive eposo1) then
{
	_rad9 = createMarkerLocal ["radobj9", position eposo1];
	_rad9 setMarkerShapeLocal "ICON";
	_rad9 setMarkerTypeLocal "Destroy";
	_rad9 setMarkerTextLocal "Destroy Radio Tower";
	_rad9 setMarkerSizeLocal [0.5, 0.5];
};
if (alive masso1) then
{
	_rad10 = createMarkerLocal ["radobj10", position masso1];
	_rad10 setMarkerShapeLocal "ICON";
	_rad10 setMarkerTypeLocal "Destroy";
	_rad10 setMarkerTextLocal "Destroy Radio Tower";
	_rad10 setMarkerSizeLocal [0.5, 0.5];
};
if (alive pitso1) then
{
	_rad11 = createMarkerLocal ["radobj11", position pitso1];
	_rad11 setMarkerShapeLocal "ICON";
	_rad11 setMarkerTypeLocal "Destroy";
	_rad11 setMarkerTextLocal "Destroy Radio Tower";
	_rad11 setMarkerSizeLocal [0.5, 0.5];
};
ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,0,player] call EVO_AmmoBox;
ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,0,player] call EVO_AmmoBox;
ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,0,player] call EVO_AmmoBox;
ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob3";_box = [ammobox4,0,player] call EVO_AmmoBox;
ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob3";_box = [ammobox5,0,player] call EVO_AmmoBox;
if (debug) then {
// Triggers

/*
_trgobj4 = createTrigger ["EmptyDetector", position player ];
_trgobj4 setTriggerText "asls";
_trgobj4 setTriggerActivation ["DELTA", "PRESENT", true];
_trgobj4 setTriggerStatements ["this", "hint format[""asl %1"", getPosASL player];", ""];

_trgobj1 = createTrigger ["EmptyDetector", position player ];
_trgobj1 setTriggerText "Instant Colonel";
_trgobj1 setTriggerActivation ["ECHO", "PRESENT", true];
_trgobj1 setTriggerStatements ["this", "player addscore 200", ""];

_trgobj1 = createTrigger ["EmptyDetector", position player ];
_trgobj1 setTriggerText "up score 16";
_trgobj1 setTriggerActivation ["FOXTROT", "PRESENT", true];
_trgobj1 setTriggerStatements ["this", "player addscore 16", ""];
*/
_trgobj1 = createTrigger ["EmptyDetector", position player ];
_trgobj1 setTriggerText "test";
_trgobj1 setTriggerActivation ["ALPHA", "PRESENT", true];
_trgobj1 setTriggerStatements ["this", "dtest = [] execVM 'scripts\test.sqf'", ""];

_trgobj2 = createTrigger ["EmptyDetector", position player ];
_trgobj2 setTriggerText "colonel me";
_trgobj2 setTriggerActivation ["JULIET", "PRESENT", true];
_trgobj2 setTriggerStatements ["this", "player addscore 200", ""];
/*
_trgobj3 = createTrigger ["EmptyDetector", position player ];
_trgobj3 setTriggerText "cm";
_trgobj3 setTriggerActivation ["HOTEL", "PRESENT", true];
_trgobj3 setTriggerStatements ["this", "{_x setCombatMode ""RED""} forEach list alleast", ""];

//_trgobj3 setTriggerStatements ["this", "list1 = position player nearObjects 5;hint format[""%1"", list1];", ""];

//_trgobj3 setTriggerStatements ["this", "mlist = position player nearObjects 10;dellist = [];{if (_x isKindOf 'Man') then {dellist = dellist + [_x]}} forEach mlist;hint format['list %1',dellist]", ""];

_trgobj2 = createTrigger ["EmptyDetector", position player ];
_trgobj2 setTriggerText "kill east";
_trgobj2 setTriggerActivation ["HOTEL", "PRESENT", true];
_trgobj2 setTriggerStatements ["this", "{_x setdamage 1} forEach list alleast", ""];
*/
//JULIET

};

_admins = [
"-{GOL}-Matti",
"-{GOL}-Lt.Chris",
"-{GOL}-Somerville"
];



if ((name player) in _admins) then
{
	_trgobj2 = createTrigger ["EmptyDetector", position player ];
	_trgobj2 setTriggerText "Admin Spectate";
	_trgobj2 setTriggerActivation ["INDIA", "PRESENT", true];
	_trgobj2 setTriggerStatements ["this", "aspec = [player,0,10,1] execVM 'spect\specta.sqf'", ""];
	
	_trgobj3 = createTrigger ["EmptyDetector", position player ];
	_trgobj3 setTriggerText "Add 50 Score";
	_trgobj3 setTriggerActivation ["JULIET", "PRESENT", true];
	_trgobj3 setTriggerStatements ["this", "player addscore 50", ""];
	
	_trgobj4 = createTrigger ["EmptyDetector", position player ];
	_trgobj4 setTriggerActivation ["NONE", "PRESENT", true];
	_trgobj4 setTriggerStatements ["cfound != ''", "hint format['%1 Attempted to use a cheat\n',cfound];cfound = ''", ""];
};


_pos = position player;
player setpos [_pos select 0,_pos select 1,0];
