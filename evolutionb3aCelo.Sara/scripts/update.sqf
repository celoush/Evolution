_name = _this select 0;
pscore = 0;
_max = count scores;
_i = 0;

while {_i < _max} do {_unit = scores select _i;if (_unit == _name) then {pscore = (scores select (_i+1))};_i = _i + 2;}

allvar = [end,opar,osom,ocay,oort,ocor,obag,oobr,oepo,omas,opit,odol,lives];
allvar_packed = str (allvar);


gdate_packed = str (gdate);
scores_packed = str (scores);
publicvariable "scores_packed";
publicVariable "gdate_packed";
publicVariable "allvar_packed";