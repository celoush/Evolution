if not (local player) exitWith {};

_uh60 = _this select 0;
_cargo = _this select 3;

_height = getPos _uh60 select 2;
if(_height > 15) then{
	hint "Tvá výška je moc velká.\nKlesni na méně než 15 metrů pokud chceš spustit vozidlo.";
}else{
	uh60winchcargo = 0;
};

exit;
