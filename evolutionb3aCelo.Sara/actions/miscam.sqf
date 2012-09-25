_unit = _this select 0;
_type = _this select 1;
_pos = [0,0,0];

if (_type != "Bo_GBU12_LGB" and _type != "M_Sidewinder_AA" and _type != "M_Hellfire_AT" and _type != "M_Maverick_AT" and _type != "M_Vikhr_AT" and _type != "M_Ch29_AT" and _type != "M_R73_AA") exitwith {};
if ((date select 3) < 4 or (date select 3) > 20) then {camUseNVG true} else {camUseNVG false};
_hud = false;
_hud = createDialog "RscMisCam";

_disp = findDisplay 50001;
_disp displaySetEventHandler["KeyDown", "camdestroy _cam;closeDialog 0;player cameraEffect [""terminate"",""back""]"];
//_disp displaySetEventHandler["KeyDown", "titleText [""Press ESC to exit"", ""PLAIN DOWN"",0.2];"];

//hint format["%1 %2",_unit,_type];

_missile = nearestObject[_this select 0,_this select 1];
_cam = "camera" camCreate [5329.34,6652.10,1.28];
_cam cameraEffect ["internal","front"];
_cam camSetTarget _missile;
_cam camSetRelPos [2,2,2];
_cam camSetFOV 1.0;
showCinemaBorder false;
_cam camCommit 0;


for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{	
	if(not (isNull _missile)) then
	{
		_cam camSetTarget _missile;
		_cam camSetRelPos [0,-2,0.7];
		_cam camCommit 0;
		_pos = position _missile;
	};
	if (isNull _missile or not dialog) then {_loop=1;};
	sleep 0.01;
};
if (not dialog) exitwith  {camUseNVG false;camdestroy _cam;player cameraEffect ["terminate","back"]};

if(_type == "Bo_GBU12_LGB") then
{
	_base = "HeliHEmpty" createVehicleLocal _pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,100.0];
	_cam camCommit 1;
	sleep 2.01;
};

sleep 2.01;
deleteVehicle _base;
camUseNVG false;
camdestroy _cam;
closeDialog 0;
player cameraEffect ["terminate","back"];