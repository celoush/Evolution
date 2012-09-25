_trk = objNull;
_trk = (nearestObject [vehicle player, "Truck5tRepair"]);
if(isNull _trk) exitWith {hint "Jsi moc daleko od opravárenského vozu"};

if (player in list AirportIn) exitWith {hint "Nemůžeš postavit FARP na základně"};
deletevehicle etent;
deletevehicle epad;
deletevehicle ebox;
_mark = format["%1farp",(name player)];
deleteMarker _mark;

player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 3.0;
WaitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};

epad = "HeliH" createVehicle (position player);
_pos = position epad;

_pos2 = [_pos select 0,(_pos select 1) - 18,_pos select 2];
etent = "CampEmpty" createVehicle _pos2;
_pos3 = [_pos2 select 0,(_pos2 select 1)+3,_pos2 select 2];
ebox = "AmmoBoxWest" createVehicle _pos3;
switch (player) do //heavy wep
{
	 case eng1:
	{
		reng1 setpos _pos;
	};
	 case eng2:
	{
		reng2 setpos _pos;
	};
	 case eng3:
	{
		reng3 setpos _pos;
	};
	 case eng4:
	{
		reng4 setpos _pos;
	};
};	

etent addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];
ebox addEventHandler ["killed", {handle = [_this select 0] execVM "scripts\bury.sqf"}];

/*
ebox addWeaponCargo ["Laserdesignator",40];
ebox addMagazineCargo ["HandGrenadeTimed",40];
ebox addMagazineCargo ["m136",40];
ebox addMagazineCargo ["Stinger",40];
ebox addMagazineCargo ["JAVELIN",40];
ebox addMagazineCargo ["1rnd_HE_M203",40];
ebox addMagazineCargo ["FlareWhite_M203",40];
ebox addMagazineCargo ["FlareRed_M203",40];
ebox addMagazineCargo ["FlareGreen_M203",40];
ebox addMagazineCargo ["FlareYellow_M203",40];
ebox addMagazineCargo ["SmokeShell",40];
ebox addMagazineCargo ["SmokeShellRed",40];
ebox addMagazineCargo ["SmokeShellGreen",40];
ebox addmagazinecargo ["15rnd_9x19_m9sd", 40];
ebox addmagazinecargo ["15rnd_9x19_m9", 40];	
ebox addmagazinecargo ["30Rnd_9x19_MP5SD", 40];
ebox addmagazinecargo ["30Rnd_9x19_MP5", 40];
ebox addmagazinecargo ["30Rnd_556x45_StanagSD", 40];
ebox addmagazinecargo ["30rnd_556x45_Stanag", 40];
ebox addmagazinecargo ["30Rnd_556x45_G36",40];
ebox addmagazinecargo ["200Rnd_556x45_M249", 40];
ebox addmagazinecargo ["100Rnd_762x51_M240", 40];
ebox addmagazinecargo ["5Rnd_762x51_M24", 40];
ebox addmagazinecargo ["10Rnd_127x99_m107", 40];	
ebox addMagazineCargo ["Laserbatteries",40];
ebox addWeaponCargo ["Binocular",40];
ebox addWeaponCargo ["NVGoggles",40];
*/

_mssg = format["%1's FARP",(name player)];
_medmark = createMarker [_mark, _pos];
_medmark setMarkerShape "ICON";
_medmark setMarkerType "Flag1";
_medmark setMarkerColor "ColorGreenAlpha";
_medmark setMarkerText _mssg;
_medmark setMarkerSize [0.5, 0.5];
