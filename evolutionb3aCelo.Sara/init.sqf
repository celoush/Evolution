debug=false;
setterraingrid 50;
setViewDistance 1200;
//Statics
this exec "markerGPS.sqs";
this exec "PlayerMarker.sqs";
//if(debug) exitWith {};

rank1 = 5;
rank2 = 15;
rank3 = 35;
rank4 = 85;
rank5 = 120;
rank6 = 200;
onmission=false;
sobj1=false;
sobj2=false;

ammo_boxes_west = 0;
max_number_ammoboxes = 20;
last_ammo_drop = -3423;
bike_created = false;

Bparinf=10;
Bparmec=8;
Bsominf=5;
Bsommec=4;
Bcayinf=8;
Bcaymec=6;
Bdolinf=6;
Bdolmec=6;
Bortinf=10;
Bortmec=8;
Bcorinf=4;
Bcormec=10;
Bobrinf=6;
Bobrmec=4;
Bbaginf=10;
Bbagmec=8;
Bepoinf=7;
Bepomec=7;
Bmasinf=6;
Bmasmec=6;
Bpitinf=10;
Bpitmec=10;

parinf=8;
parmec=7;
sominf=5;
sommec=4;
cayinf=8;
caymec=6;
dolinf=6;
dolmec=6;
ortinf=10;
ortmec=8;
corinf=4;
cormec=10;
obrinf=6;
obrmec=4;
baginf=10;
bagmec=8;
epoinf=7;
epomec=7;
masinf=6;
masmec=6;
pitinf=10;
pitmec=10;

//Dynamics
inpar=false;
insom=false;
incay=false;
indol=false;
inort=false;
incor=false;
inbag=false;
inobr=false;
inepo=false;
inmas=false;
inpit=false;


opar=false;
osom=false;
ocay=false;
oort=false;
ocor=false;
obag=false;
oobr=false;
oepo=false;
omas=false;
opit=false;
odol=false;

vdist=1200;
avdist=2200;
gdel=0;
gdate = [2007,7,4,Param2,59];
scores = [];
Playerlist = [];
Playercount = 1;
spawned=0;
lives=500;
allvar_packed = "";
end=false;
sop=objNull;
sot=objNull;
sor=0;
sup=objNull;
sut="";
sur="";
fattack=false;
mpoint=objNull;
epoint=objNull;
mbase=objNull;
cbase=abase1;
dunit="none";
runit=objNull;
rtype="none";
tunit=objNull;
junit = objNull;
lunit = objNull;
lpoint = 0;
jgroup=grpNull;
mgroupa=grpNull;
mgroupb=grpNull;
mgroupc=grpNull;
mgroupd=grpNull;
lastalert="mobj1";
placetag = "";
pmis=0;
punit=objNull;
prew=0;
pscore = -1;
aunit=objNull;
arank="NULL";
rscripts=0;
vscripts=0;
cfound = "";
elock = 0;
ltrk = objNull;
mtar=objNull;
fmission=false;
latk=objNull;
10 setRadioMsg "NULL";
egroups = 0;
player addscore 2;

aaweapons = ["M_Sidewinder_AA","M_R73_AA","M_Strela_AA","M_Stinger_AA"];
pallammo = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","M136","M136","15rnd_9x19_m9","15rnd_9x19_m9","15rnd_9x19_m9","15rnd_9x19_m9"];
pweapons = ["M16A2","M9","binocular","NVGoggles"];
"0" objstatus "Active";
"1" objstatus "Active";
"2" objstatus "Active";
"3" objstatus "Active";
"4" objstatus "Active";
"5" objstatus "Active";
"6" objstatus "Active";
"7" objstatus "Active";
"8" objstatus "Active";
"9" objstatus "Active";
"10" objstatus "Active";
"11" objstatus "Active";
"12" objstatus "Active";


setDate gdate;

if (local Server) then 
{
	EVO_aamarker = "scripts\vecrespawna.sqf";
	/*
	parso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = parso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	somso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = somso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	cayso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = cayso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	dolso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = dolso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	ortso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = ortso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	corso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = corso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	obrso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = obrso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	bagso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = bagso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	eposo1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = eposo1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	masso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = masso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];
	pitso1 addEventHandler ["killed", {(_this select 0) removealleventhandlers "killed";sop = (_this select 1);sot = pitso1;sor = 10;publicVariable "sop";publicVariable "sot";publicVariable "sor"}];	
	*/
	_radios = [parso1,somso1,cayso1,dolso1,ortso1,corso1,obrso1,bagso1,eposo1,masso1,pitso1];
	//_radios = [parso1];
	{
		_x addEventHandler ["hit", {if((_this select 1) != latk) then {(_this select 0) setdamage 0}}];
		_c4 = [_x] execVM "scripts\c4only.sqf";
	} forEach _radios;
	
	onplayerconnected "[_name] exec ""scripts\update.sqf"";if(dunit == _name) then {dunit = ""none""}";
	onPlayerDisconnected "
	dunit = _name;
	_mark = format[""%1mash"",dunit];
	deleteMarker _mark;
	_mark = format[""%1farp"",dunit];
	deleteMarker _mark;
	";
};

if (isServer && isClass (configFile >> "CfgPatches" >> "ARMAAC")) then {[] execVM "\ARMAAC\ARMAAC.sqf";}; //Anti cheat plugin support

if ((local server) and not (local player)) exitWith {}; 
_cevents = [] execVM "scripts\EventsC.sqf";
_nul=[] execVM "Dialogs\Common\CommonDialogFunctions.sqf";

if !(debug) then {KEGsShownSides = [west]};
[] execVM "spect\specta_init.sqf";

//Client


waitUntil {allvar_packed != ""};

_temp = compile allvar_packed;
_vars = call _temp;
end = _vars select 0;
opar = _vars select 1;
osom = _vars select 2;
ocay = _vars select 3;
oort = _vars select 4;
ocor = _vars select 5;
obag = _vars select 6;
oobr = _vars select 7;
oepo = _vars select 8;
omas = _vars select 9;
opit = _vars select 10;
odol = _vars select 11;
lives = _vars select 12;

if !(debug) then {titleCut ["","black faded", 0]};

