
//_array = [unit1, unit2, unit3];
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{	
	waitUntil {player in list missions};
	_newacts = [];
	_newaction = player addAction ["Požádat o misi", "missions\MissionSelectionDialog\MissionSelectionDialog.sqf", [ /* params */ ] ];
	_newacts = _newacts + [_newaction];
	_newaction = player addaction ["Spectate", "spect\specta.sqf",10,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];	
	_newaction = player addaction ["Dohlednost zvýšit", "actions\settings.sqf",10,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];
	_newaction = player addaction ["Dohlednost snížit", "actions\settings.sqf",20,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];
	_newaction = player addaction ["Leteckou dohlednost zvýšit", "actions\settings.sqf",60,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];
	_newaction = player addaction ["Leteckou dohlednost snížit", "actions\settings.sqf",70,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];	
	_newaction = player addaction ["Kvalitu terénu nízkou", "actions\settings.sqf",30,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];
	_newaction = player addaction ["Kvalitu terénu střední", "actions\settings.sqf",40,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];	
	_newaction = player addaction ["Kvalitu terénu vysokou", "actions\settings.sqf",50,1, true, true,"test2"];
	_newacts = _newacts + [_newaction];	
	_newaction = player addAction ["Požádat o přiřazení", "TeamStatusDialog\TeamStatusDialog.sqf",[1,1]];
	_newacts = _newacts + [_newaction];
	_newaction = player addAction ["Požádat o seskok", "actions\halo.sqf",[1,1]];
	_newacts = _newacts + [_newaction];
	if(Param1 < 6) then {_newaction = player addAction ["Povolat vojáka", "Dialogs\RecruitSoldierDialog.sqf",[1,1]];_newacts = _newacts + [_newaction];};
	sleep 1.0;
	waitUntil {not (player in list missions)};
	for [{_i=0}, {_i < count _newacts}, {_i=_i+1}] do
	{
		player removeAction (_newacts select _i);
	};
};
