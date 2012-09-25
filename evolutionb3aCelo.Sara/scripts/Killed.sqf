_player = _this select 0;
_killer = _this select 1;
if(Param1 == 4) then
{
	lives = lives - 1;
	publicVariable "lives";
	hint format["%1 Lives remaining",lives];
};
if(not (isPlayer _killer) and side _killer == west) then {hint format["You were killed by AI under the command of %1",name (leader _killer)]};
sleep 1.0;
/*
//death penelty(disabled)
_score = score _player;

_penelty = round(_score /5);
player addscore -_penelty;
*/

if ((date select 3) < 4 or (date select 3) > 20) then {camUseNVG true} else {camUseNVG false};

_camera = "camera" camCreate [(position _player select 0)-0.75, (position _player select 1)-0.75,(position _player select 2) + 0.5];
_camera cameraEffect ["internal","back"];

_camera camSetFOV 0.800;
_camera camCommit 0;
//_camera camSetFocus [0, 100];
waitUntil {camCommitted _camera};


_camera camSetTarget vehicle _player;
//_camera camSetTarget _killer;
_camera camSetRelPos [0.0,0.0,3.38];
_camera camCommit 0;

_camera camSetRelPos [0.0,0.0,10.38];
_camera camSetFOV 0.100;
_camera camCommit 10;
//cutText ["","BLACK OUT",10];
//sleep 6.0;
waitUntil {camCommitted _camera};



_camera camSetTarget vehicle player;
_camera camSetPos [(position player select 0), (position player select 1) - 4.0,(position player select 2) + 2.5];

_camera camSetFOV 1.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};

titleCut["", "BLACK in",7];

sleep 1.0;
//_camera camSetRelPos [0.0,3.0,2.5];
_camera camSetPos [(position player select 0), (position player select 1) - 1.0,(position player select 2) + 2.5];
//_camera camSetFOV 0.200;
_camera camCommit 2;

waitUntil {camCommitted _camera};




//player switchCamera "INTERNAL";
player cameraEffect ["terminate","back"];
camUseNVG false;
camDestroy _camera;
