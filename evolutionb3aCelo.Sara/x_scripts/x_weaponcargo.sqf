// by Xeno
private ["_vehicle","_random","_has_javelin"];
_vehicle = _this select 0;
ClearMagazineCargo _vehicle;
ClearWeaponCargo _vehicle;

_has_javelin = false;
_random = random 100;
if (_random > 75) then {
	_has_javelin = true;
};

_vehicle addweaponcargo ["M9",10];
_vehicle addweaponcargo ["M9SD",10];
_vehicle addweaponcargo ["M16A2",10];
_vehicle addweaponcargo ["M16A4",10];
_vehicle addweaponcargo ["M4",10];
/*
_vehicle addweaponcargo ["M16A2GL",10];
_vehicle addweaponcargo ["M16A4_GL",10];
_vehicle addweaponcargo ["M16A4_ACG",10];
_vehicle addweaponcargo ["M16A4_ACG_GL",10];
_vehicle addweaponcargo ["M4A1SD",10];
_vehicle addweaponcargo ["M4GL",10];
_vehicle addweaponcargo ["M4A1",10];
_vehicle addweaponcargo ["M4A1GL",10];
_vehicle addweaponcargo ["M4AIM",10];
_vehicle addweaponcargo ["M4SPR",10];
_vehicle addweaponcargo ["G36a",10];
_vehicle addweaponcargo ["G36c",10];
_vehicle addweaponcargo ["G36k",10];
_vehicle addweaponcargo ["M24",10];
_vehicle addweaponcargo ["MP5A5",10];
_vehicle addweaponcargo ["MP5SD",10];
_vehicle addweaponcargo ["M240",10];
_vehicle addweaponcargo ["M249",10];
_vehicle addweaponcargo ["M107",10];
_vehicle addweaponcargo ["M136",10];
*/
_vehicle addweaponcargo ["Laserdesignator",10];
_vehicle addweaponcargo ["Binocular",10];
_vehicle addweaponcargo ["NVGoggles",10];
/*
if (_has_javelin) then {
	_vehicle addweaponcargo ["JAVELIN",2];
	_vehicle addweaponcargo ["Stinger",2];
	
};
*/
_vehicle addmagazinecargo ["Handgrenade",20];
_vehicle addmagazinecargo ["Smokeshell",20];
_vehicle addmagazinecargo ["Smokeshellred",20];
_vehicle addmagazinecargo ["Smokeshellgreen",20];
_vehicle addmagazinecargo ["30Rnd_9x19_MP5",30];
_vehicle addmagazinecargo ["30Rnd_9x19_MP5SD",30];
_vehicle addmagazinecargo ["15Rnd_9x19_M9",30];
_vehicle addmagazinecargo ["15Rnd_9x19_M9SD",30];
_vehicle addmagazinecargo ["30Rnd_556x45_Stanag",30];
_vehicle addmagazinecargo ["30Rnd_556x45_StanagSD",30];
_vehicle addmagazinecargo ["30Rnd_556x45_G36",30];
_vehicle addmagazinecargo ["200Rnd_556x45_M249",30];
_vehicle addmagazinecargo ["5Rnd_762x51_M24",30];
_vehicle addmagazinecargo ["10Rnd_127x99_M107",30];
_vehicle addmagazinecargo ["100Rnd_762x51_M240",30];
_vehicle addmagazinecargo ["FlareWhite_M203",30];
_vehicle addmagazinecargo ["FlareGreen_M203",30];
_vehicle addmagazinecargo ["FlareRed_M203",30];
_vehicle addmagazinecargo ["FlareYellow_M203",30];
_vehicle addmagazinecargo ["1Rnd_HE_M203",30];
_vehicle addmagazinecargo ["M136",30];
_vehicle addmagazinecargo ["Pipebomb",30];
_vehicle addmagazinecargo ["Mine",30];
_vehicle addmagazinecargo ["Laserbatteries",20];
_vehicle addmagazinecargo ["JAVELIN",6];
_vehicle addmagazinecargo ["Stinger",6];


if (true) exitWith {};
