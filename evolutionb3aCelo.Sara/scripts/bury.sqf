_unit = _this select 0;
_tag = "none";
_tag = _this select 1;
_grp = group _unit;
//sleep 600.0; //3 min =180
//sleep 10.0; //3 min =180
_unit removealleventhandlers "killed";
_unit removealleventhandlers "getout";
_unit removealleventhandlers "getin";



if (not (_unit isKindOf "Man")) then
{
	_class = typeOf _unit;
	_pos = position _unit;
	_dir = direction _unit;
	_speed = speed _unit;
	_vel = velocity _unit;
	//if (_unit isKindOf "Air") then {sleep 5.0};
	{deletevehicle _x} foreach ([_unit] + crew _unit);
	_vcl = _class createVehicle _pos;
	_vcl setpos _pos;
	_vcl setdir _dir;
	_vcl setVelocity _vel;
	_vcl setFuel 0.0;
	_vcl setDamage 1;
	sleep 300.0;
	deletevehicle _vcl;
};
if (_unit isKindOf "Man") then
{
	sleep 300.0;
	if( not (isnull _unit)) then {server action ["HIDEBODY", _unit]};
};
