_player = _this select 0;

_tag = player addaction ["Kung Fu","actions\pdance.sqf",1,1, true, true,"test2"];
_tag = player addaction ["Boogy","actions\pdance.sqf",2,1, true, true,"test2"];
_tag = player addaction ["Stop Dancing","actions\pdance.sqf",0,1, true, true,"test2"];

_newpos = position partypos;
partypos setVehicleInit "[this,7] execVM ""sfx\nuke.sqf""";
processInitCommands;
plaser setVehicleInit "[this,8] execVM ""sfx\nuke.sqf""";
processInitCommands;
titleCut["", "BLACK OUT",2];

if(local server) then 
{
	mresc setpos _newpos;
	"Respawn_West" setmarkerpos _newpos;
	_allunits = ["Civilian3","Civilian6","Civilian9","MarianQuandt02","MarianQuandt03","MarianQuandt04"];
	_max = count _allunits;
	_guard = createGroup (civilian);
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];
	_allunits select (round random (_max - 1)) createUnit [_newpos, _guard];

	{commandstop _x;_x setDir (random 360);_x setPos [(_newpos select 0)+ (random 10),(_newpos select 1)+ (random 10),(_newpos select 2)]} forEach (units _guard);
};

setDate [2007, 7, 29, 0, 0];

if(vehicle player != player) then
{
	(vehicle player) setVelocity [0,0,0];
	player action ["Eject",vehicle player];
};

sleep 1.0;
removeAllWeapons player;
player setPos [(_newpos select 0)+(random 10),(_newpos select 1)+ (random 10),(_newpos select 2)];
sleep 1.0;
titleText [localize "EVO_013", "PLAIN"];
sleep 2.0;
titleText ["", "PLAIN"];
sleep 1.0;
titleCut["", "BLACK in",0];
party = true;
titleText ["PARTY TIME!!", "PLAIN"];

sleep 30.0;
titleText ["You have been playing", "PLAIN DOWN"];
sleep 2.0;
titleText ["U", "PLAIN DOWN"];
sleep 1.0;
titleText ["L U T", "PLAIN DOWN"];
sleep 1.0;
titleText ["O L U T I", "PLAIN DOWN"];
sleep 1.0;
titleText ["V O L U T I O", "PLAIN DOWN"];
sleep 1.0;
titleText ["E V O L U T I O N", "PLAIN DOWN"];
sleep 4.0;
titleText ["By KilJoy", "PLAIN DOWN"];
sleep 22.0;
4 fadeSound 0;
titleCut["", "BLACK OUT",2];
titleText ["FiN", "PLAIN"];
sleep 4.0;
end=true;
//disco=false;
publicVariable "end";
ForceEnd;
//_killer = _this select 1;
/*
setViewDistance 5000;
if ((date select 3) < 4 or (date select 3) > 20) then {camUseNVG true} else {camUseNVG false};

_camera = "camera" camCreate position rad2;
_camera cameraEffect ["internal","back"];

_camera camSetFOV 0.800;
_camera camCommit 0;
//_camera camSetFocus [0, 100];
waitUntil {camCommitted _camera};


_camera camSetTarget rad2;
_camera camSetRelPos [0.0,-2000.0,1000.38];
_camera camCommit 0;

_camera camSetTarget rad8;
_camera camSetRelPos [0.0,-2000.0,1000.38];
_camera camSetFOV 1.000;
_camera camCommit 20;
//cutText ["","BLACK OUT",10];
//sleep 6.0;
waitUntil {camCommitted _camera};

//titleText ["Sahrani has been libirated. Great Job.", "PLAIN"];
titleText [localize "EVO_013", "PLAIN"];
titleCut["", "BLACK OUT",7];
sleep 2.0;

/*

_camera camSetTarget vehicle player;
_camera camSetPos [(position player select 0), (position player select 1) - 4.0,(position player select 2) + 2.5];

_camera camSetFOV 1.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};

//_camera camSetRelPos [0.0,3.0,2.5];
_camera camSetPos [(position player select 0), (position player select 1) - 1.0,(position player select 2) + 2.5];
//_camera camSetFOV 0.200;
_camera camCommit 2;

waitUntil {camCommitted _camera};




player switchCamera "INTERNAL";
player cameraEffect ["terminate","back"];
camUseNVG false;
setViewDistance 900;
camDestroy _camera;
end=true;
publicVariable "end";
ForceEnd;
*/