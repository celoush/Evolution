_unit = _this select 0;
_user = _this select 1;
_usergroup = group _user;
_pos = getmarkerpos "det";

[_unit] join _usergroup;
_unit setdamage 0;
_unit enableAI "MOVE";
//_unit doFollow (leader _usergroup);

hint "You have captured a prisoner. Lead him to the POW Camp for detention";

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	if (speed _unit < 1 and vehicle _unit == _unit) then {_unit playMove "AmovPercMstpSsurWnonDnon"};
	if (count weapons _unit > 0) then {_loop=1};
	if ((_unit distance _pos) < 20) then {_loop=1};
	if (vehicle _unit distance vehicle player > 50) then {_loop=1};
	if (vehicle _unit distance vehicle player > 40) then {hint "Your prisoner is about to escape"};
	sleep 4.0;
};
if (count weapons _unit > 0 or vehicle _unit distance vehicle player > 40) exitwith {};

WaitUntil {isNull sop and isNull sot};

if (_unit isKindOf "OfficerE") then
{
	hint "Excellent, Officer captured 20 Points";
	sop = player;sot = _unit;sor = 20;publicVariable "sop";publicVariable "sot";publicVariable "sor";
}
else
{
	hint "Well done, Prisoner captured 5 Points";
	sop = player;sot = _unit;sor = 5;publicVariable "sop";publicVariable "sot";publicVariable "sor";
};
