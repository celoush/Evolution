if not (local player) exitWith {};
_uh60 = _this select 0;

// or ga kikanai node...
_vectype = typeof _uh60;
_doexit = 1;
if(_vectype == "UH60") then { _doexit = 0; };
if(_vectype == "UH60MG") then { _doexit = 0; };
if(_doexit == 1) exitWith {};

uh60winchcargo = 0;
_actionadded = 0;
_cargo = nil;
_cargo = objNull;

// Cargo Detection
while{ (alive _uh60) && ((driver _uh60) == player) } do
{
	if (uh60winchcargo == 0) then {
		// Winch taishou kensaku loop
		_nObject = nearestObject [_uh60, "LandVehicle"];
		if not (isNull _nObject) then {
			if ((_nObject distance _uh60) > 10) then {
				_uh60 removeAction actioncargo;
				_actionadded = 0;
			}else{
				if((_nObject != _cargo) && (_actionadded == 1)) then{
					_uh60 removeAction actioncargo;
					_actionadded = 0;
				};
				if(_actionadded == 0) then {
					_actionadded = 1;
					_cargo = _nObject;
					actioncargo = _uh60 addAction [format ["Zakotvit %1", typeOf _cargo], "scripts\winch_start.sqf", _cargo];
				};
			};
		};
	}else{
		// Winch cyu- loop
		_uh60 removeAction actioncargo;
		_actionadded = 0;
	};
	sleep 0.1;
};

exit;

