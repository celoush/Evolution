if (player in list AirportIn) exitWith {hint "You can not build a MASH in the base"};

deletevehicle mtent;
player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 3.0;
WaitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};

_mark = format["%1mash",(name player)];
deleteMarker _mark;
mtent = "Mash" createVehicle (position player);

mtent addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];

/*
mtent addWeaponCargo ["Laserdesignator",40];
mtent addMagazineCargo ["HandGrenadeTimed",40];
mtent addMagazineCargo ["m136",40];
mtent addMagazineCargo ["Stinger",40];
mtent addMagazineCargo ["JAVELIN",40];
mtent addMagazineCargo ["1rnd_HE_M203",40];
mtent addMagazineCargo ["FlareWhite_M203",40];
mtent addMagazineCargo ["FlareRed_M203",40];
mtent addMagazineCargo ["FlareGreen_M203",40];
mtent addMagazineCargo ["FlareYellow_M203",40];
mtent addMagazineCargo ["SmokeShell",40];
mtent addMagazineCargo ["SmokeShellRed",40];
mtent addMagazineCargo ["SmokeShellGreen",40];
mtent addmagazinecargo ["15rnd_9x19_m9sd", 40];
mtent addmagazinecargo ["15rnd_9x19_m9", 40];	
mtent addmagazinecargo ["30Rnd_9x19_MP5SD", 40];
mtent addmagazinecargo ["30Rnd_9x19_MP5", 40];
mtent addmagazinecargo ["30Rnd_556x45_StanagSD", 40];
mtent addmagazinecargo ["30rnd_556x45_Stanag", 40];
mtent addmagazinecargo ["30Rnd_556x45_G36",40];
mtent addmagazinecargo ["200Rnd_556x45_M249", 40];
mtent addmagazinecargo ["100Rnd_762x51_M240", 40];
mtent addmagazinecargo ["5Rnd_762x51_M24", 40];
mtent addmagazinecargo ["10Rnd_127x99_m107", 40];	
mtent addMagazineCargo ["Laserbatteries",40];
mtent addWeaponCargo ["Binocular",40];
mtent addWeaponCargo ["NVGoggles",40];
*/

_pos = position mtent;
_mssg = format["%1's MASH",(name player)];
_medmark = createMarker [_mark, _pos];
_medmark setMarkerShape "ICON";
_medmark setMarkerType "Marker";
_medmark setMarkerColor "ColorGreenAlpha";
_medmark setMarkerText _mssg;
_medmark setMarkerSize [0.5, 0.5];
_medmark setMarkerDir 45;
