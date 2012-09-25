_type = _this select 0;
_activator = _this select 1;
rtype="none";

_grp = group player;
_count = (count units _grp);
_ainum = 0;
_ap = player;
_i = 0;
while {_i < _count} do 
{
	_ap = (units _grp select _i);
	if (not (isPlayer _ap)) then 
	{
		_ainum = _ainum +1;
	};
	_i = _i + 1;
};

if (player != (leader group player)) exitwith {hint "You must be a leader to recruit"};

if (_type == "SoldierWAT") then
{
	if (score player < rank1) exitwith {handle = [player,rank1] execVM "scripts\req.sqf";};
	rtype = "SoldierWAT";
};
if (_type == "SoldierWB") then
{
	if (score player < rank1) exitwith {handle = [player,rank1] execVM "scripts\req.sqf";};
	rtype = "SoldierWB";
};
if (_type == "SoldierWMedic") then
{
	if (score player < rank2) exitwith {handle = [player,rank2] execVM "scripts\req.sqf";};
	rtype = "SoldierWMedic";
};
if (_type == "SoldierWMG") then
{
	if (score player < rank3) exitwith {handle = [player,rank3] execVM "scripts\req.sqf";};
	rtype = "SoldierWMG";
};
if (_type == "SoldierWAA") then
{
	if (score player < rank3) exitwith {handle = [player,rank3] execVM "scripts\req.sqf";};
	rtype = "SoldierWAA";
};
if (_type == "SoldierWG") then
{
	if (score player < rank4) exitwith {handle = [player,rank4] execVM "scripts\req.sqf";};
	rtype = "SoldierWG";
};
if (_type == "SoldierWSniper") then
{
	if (score player < rank5) exitwith {handle = [player,rank5] execVM "scripts\req.sqf";};
	rtype = "SoldierWSniper";
};
if (_type == "SoldierWSaboteurPipe") then
{
	if (score player < rank6) exitwith {handle = [player,rank6] execVM "scripts\req.sqf";};
	rtype = "SoldierWSaboteurPipe";
};

if (score player < rank1) exitwith {handle = [player,rank1] execVM "scripts\req.sqf";};
if (score player < rank2 and _ainum >= 1) exitwith {hint "You have reached your current ranks capacity";};
if (score player < rank3 and _ainum >= 2) exitwith {hint "You have reached your current ranks capacity";};
if (score player < rank4 and _ainum >= 3) exitwith {hint "You have reached your current ranks capacity";};
if (score player < rank5 and _ainum >= 4) exitwith {hint "You have reached your current ranks capacity";};
if (score player < rank6 and _ainum >= 5) exitwith {hint "You have reached your current ranks capacity";};
if (score player >= rank6 and _ainum >= 6) exitwith {hint "You have reached your current ranks capacity";};

_units = (count units group player);	

if (rtype != "none") then
{
	runit = player;
	publicVariable "rtype";
	publicVariable "runit";
};

WaitUntil {not (Isnull runit) and not(isPlayer runit)};
_vecpro = [runit] execVM "scripts\aivec.sqf";