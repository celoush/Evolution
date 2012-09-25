_ver = _this select 3;
_vec = vehicle player;
//_vec removeaction wcam;

if(not (_vec in list AirportIn) or (speed _vec) > 1 or (position _vec select 2) > 2) exitWith {hint "You must be stopped at the airport"};

titleCut ["","black faded", 0];
if(not (_vec isKindOf "Air")) exitwith {};


vehicle player setpos getmarkerpos "taxi1";
vehicle player setdir 90;
vehicle player setVelocity [0,0,0];
titleCut["", "BLACK in",2];