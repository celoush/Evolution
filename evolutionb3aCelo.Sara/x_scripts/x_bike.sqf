// by Xeno
private ["_pos","_vehicle"];
if (!(local player)) exitWith {};

if (vehicle player != player) exitWith {
	player sideChat "Not possible in a vehicle...";
};

if (bike_created) exitWith {
	[side player,"HQ"] sideChat "Creating a motorcycle is only possible once after respawn...";
};

_pos = position player;
[side player,"HQ"] sideChat "Creating motorcyle, stand by...";
sleep 3.123;
bike_created = true;
_pos = position player;
_vehicle = "M1030" createVehicle _pos;
_vehicle setDir direction player;

player moveInDriver _vehicle;

waitUntil {!alive player || !alive _vehicle};

sleep 10.123;

while {true} do {
	if (({alive _x} count (crew _vehicle)) == 0) exitWith {
		deleteVehicle _vehicle;
	};
	sleep 15.123;
};

if (true) exitWith {};
