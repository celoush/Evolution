_var = _this select 3;
hint format["%1",_varar];

if(_vara == 1 and varb == 0) then 
{
	setViewDistance (vdist+100);
	vdist = vdist+100;
	hint format["ViewDistance %1",vdist]
};

if(_var == 10) then {setViewDistance vdist+100;vdist = vdist+100;hint format["View Distance set to %1m",vdist]};
if(_var == 20) then {setViewDistance vdist-100;vdist = vdist-100;hint format["View Distance set to %1m",vdist]};
if(_var == 30) then {setterraingrid 50;hint "Terrain Detail set to Low"};
if(_var == 40) then {setterraingrid 25;hint "Terrain Detail set to Medium"};
if(_var == 50) then {setterraingrid 12.5;hint "Terrain Detail set to High"};
if(_var == 60) then {avdist = avdist+100;hint format["Aircraft View Distance set to %1m",avdist]};
if(_var == 70) then {avdist = avdist-100;hint format["Aircraft View Distance set to %1m",avdist]};
//tgrid=50;
//vdist=900;