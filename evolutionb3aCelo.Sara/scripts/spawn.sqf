if (not (local player)) exitwith {};
_player = player;

removeAllWeapons _player;
{player addmagazine _x} forEach pallammo;
{player addweapon _x} forEach pweapons;
player selectweapon (primaryWeapon player);

myscore = score player;
//_newaction = (vehicle player) addaction ["My Squad", "TeamStatusDialog\TeamStatusDialog.sqf",[2,2],1, false, true,"test2"];
_player addEventHandler ["killed", {handle = [(_this select 0),(_this select 1)] execVM "scripts\killed.sqf"}];
_player addEventHandler ["killed", {handle = [(_this select 0)] execVM "scripts\bury.sqf"}];
if (alive jailme) then
{
	deletevehicle jailme;
};
jailme = createTrigger ["EmptyDetector", [9764.698242,10087.540039,139.994995]];
jailme setTriggerActivation ["NONE", "PRESENT", false];
jailme setTriggerStatements ["score player < myscore and score player < 0", "jailed = player execVM ""scripts\jail.sqf""", ""];
0 setFog 0.0;
0 setOvercast 0.0;
0 setRain 0.0;
setViewDistance vdist;
if (player isKindOf "SoldierWMedic") then {_actionId8 = player addAction ["Postav MASH", "actions\mtent.sqf",0,1, false, true,"test2"]};
if (player isKindOf "SoldierWMiner") then {_actionId8 = player addAction ["Postav FARP", "actions\etent.sqf",0,1, false, true,"test2"]};
if (onmission) then {(group player) selectLeader _player};
if (score player >= rank6)  then  
{
	deletevehicle ammobox1;deletevehicle ammobox2;deletevehicle ammobox3;deletevehicle ammobox4;deletevehicle ammobox5;
	ammobox1 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox1 setpos [getmarkerpos "ammob1" select 0,getmarkerpos "ammob1" select 1,(getmarkerpos "ammob1" select 2)+0.1];_box = [ammobox1,6,player] call EVO_AmmoBox;
	ammobox2 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox2 setpos getmarkerpos "ammob2";_box = [ammobox2,6,player] call EVO_AmmoBox;
	ammobox3 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox3 setpos getmarkerpos "ammob3";_box = [ammobox3,6,player] call EVO_AmmoBox;
	ammobox4 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox4 setpos getmarkerpos "ammob4";_box = [ammobox4,6,player] call EVO_AmmoBox;
	ammobox5 = "WeaponBoxWest" createVehicleLocal getmarkerpos "none";ammobox5 setpos getmarkerpos "ammob5";_box = [ammobox5,6,player] call EVO_AmmoBox;
};
//vehicle _player setdir 180;

if(bancount == 1) exitWith{
	removeAllWeapons player;
};


///////////////////////////////////

// Seek Mission MHQ
AllUnits = [];
_trig = createTrigger["EmptyDetector", getpos player];
_trig setTriggerType "NONE";
_trig setTriggerStatements ["this", "AllUnits = thislist", ""];
_trig setTriggerArea[50000, 50000, 0, false];
_trig setTriggerActivation["ANY", "PRESENT", false];
waitUntil{count AllUnits > 0};
{	
	if (_x iskindof "Tank") then {
		_vect = typeof _x;
		if(_vect == "M113Ambul") then {
			MR = _x;
		};
	};
} foreach AllUnits;

//hint format["Ambul Position:%1\n", getpos objambul];

YN3_YesButton =
{
	closeDialog 0;
	// Player Position
	if (isnull MR) then {
		hint "*** DEBUG: ObjAmbul is NULL ***";
		exit;
	};
	_AmbulDamage = getdammage MR;
	if (_AmbulDamage < 0.59) then {
		_ambulcrews = crew MR;
		player setpos [(position MR select 0) + (random 3),(position MR select 1) + (random 2), (position MR select 2)];
		if ((count _ambulcrews) < 4) then {
			player MoveInCargo MR;
		};
	}
	else
	{
		hint "MHQ je rozbité. Oživení proběhne na letišti.";
	};
};

YN3_NoButton =
{
	closeDialog 0;
	hint "Letiště";
};

YN3_Main =
{
	// For Dialog
	_Params = _this;
	_Question = ["Question", _Params, "Error: No question"] call fn_GetParamByName;  
	_ctrl = YN3_display displayCtrl YN3_IDC_Text;
	_ctrl ctrlSetStructuredText parseText _Question;
};

// Spawn Init
_ok = createDialog "YN3_YesNoDialog";
if !(_ok) exitWith { hint "*** DEBUG: Create Dialog failed. ***" };
YN3_display = findDisplay YN3_IDD_YesNoDialog; 
_Params = _this;
_Params call YN3_Main;

exit;
