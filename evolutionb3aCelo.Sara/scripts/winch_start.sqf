if not (local player) exitWith {};

_uh60 = _this select 0;
_cargo = _this select 3;

_uh60 removeAction actioncargo;

// check
if( (isNull _cargo) || ((_cargo distance _uh60) > 15) ) then {
	uh60winchcargo = 0;
	exit;
};

uh60winchcargo = 1;
_actiondrop = _uh60 addAction [format ["Pustit %1", typeOf _cargo], "scripts\winch_drop.sqf", _cargo];

// LOOP
while{ (uh60winchcargo == 1) && (alive _uh60) && (vehicle player == _uh60)} do {

	/// threading
	sleep 0.01;

	_temp = getpos _uh60;
	_pz = (_temp select 2);
	_pos = getposASL _uh60;
	_vel = velocity _uh60;
	if( _pz > 15) then {
//		ALTI_CP setposASL [(_pos select 0), (_pos select 1), (_pos select 2) - 15.01];
		_cargo setposASL [(_pos select 0), (_pos select 1), (_pos select 2) - 15];
		_cargo setdir getdir _uh60;
		_cargo setvelocity [(_vel select 0), (_vel select 1), (_vel select 2) + 0.1];
	} else {
		_cargo setpos [(_pos select 0), (_pos select 1), 0];
		_cargo setdir getdir _uh60;
		_cargo setvelocity [(_vel select 0), (_vel select 1), 0];
	};
};

if((Not alive _uh60) || (Not (vehicle player == _uh60))) then{
	_temp = getpos _uh60;
	_cargo setPos [_temp select 0, _temp select 1, 0];
};

_uh60 removeAction _actiondrop;
ALTI_CP setposASL [0,0,0];

exit;

