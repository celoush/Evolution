// by Xeno
private ["_box","_caller","_height","_id","_is_west","_s","_speed","_unit","_time"];

if (!(local player)) exitWith {};

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;

if (_caller != driver _unit) exitWith {};
if (side _caller == west && ammo_boxes_west >= max_number_ammoboxes) exitWith {
//if (side _caller == resistance && ammo_boxes_racs >= max_number_ammoboxes) exitWith {
	_s = format ["You have created the maximum number (%1) ammo crates!", max_number_ammoboxes];
	_unit vehicleChat _s;
	_unit vehicleChat "Please wait until one or more get automatically deleted...";
};
_height = (position _unit) select 2;
if (_height > 3) exitWith {_unit vehicleChat "Too high to drop an ammocrate, please land!"};
_speed = speed _unit;
if (_speed > 3) exitWith {_unit vehicleChat "Too fast to drop an ammocrate, please stop!"};
_time = time;
if (_time - last_ammo_drop < 120) exitWith {
	_unit vehicleChat "You have to wait 2 minutes before you can drop a new ammocrate";
};
last_ammo_drop = _time;

_box = "WeaponBoxWest" createVehicle (position _unit);
_box setVehicleInit "nil=[this] execVM ""x_scripts\x_weaponcargo.sqf""";
processInitCommands;

_unit vehicleChat "Ammobox created !!!!!!!!";

_is_west = true;
if (side _caller == west) then {
	ammo_boxes_west = ammo_boxes_west + 1;
	publicVariable "ammo_boxes_west";
} else {
	//_is_west = false;
	//ammo_boxes_racs = ammo_boxes_racs + 1;
	//publicVariable "ammo_boxes_racs";
};

sleep 470 + (random 20);

if ((isNull _box) || !(alive _box)) then {
	if (!(isNull _box)) then {deleteVehicle _box;};
	if (_is_west) then {
		ammo_boxes_west = ammo_boxes_west - 1;
		publicVariable "ammo_boxes_west";
	} else {
		//ammo_boxes_racs = ammo_boxes_racs - 1;
		//publicVariable "ammo_boxes_racs";
	};
} else {
	deleteVehicle _box;
	if (_is_west) then {
		ammo_boxes_west = ammo_boxes_west - 1;
		publicVariable "ammo_boxes_west";
	} else {
		//ammo_boxes_racs = ammo_boxes_racs - 1;
		//publicVariable "ammo_boxes_racs";
	};
};

if (true) exitWith {};
