/*
_ok = "bin\config.bin/RscDisplayMPInterrupt/controlsBackground/PausedTitleBack";
_cf1 = (configFile >> "RscDisplayMPInterrupt" >> "controlsBackground") select 1;
_cf2 = count (configFile >> "RscDisplayOptions" >> "controls");
//if(_cf1 != _ok or _cf2 > 20) then {hint "busted"};
*/

//_text = getText configFile >> (configFile >> "RscDisplayMPInterrupt" >> "controlsBackground" >> "B_adcon"  >> "action");

//_ok = isText (configFile >> "RscDisplayMPInterrupt" >> "controlsBackground" >> "PausedTitleBack" >> "")

//hint format["%1",_ok];

//_icount = format["%1",_ok2];
//_ok = "bin\config.bin/RscDisplayMPInterrupt/controlsBackground/PausedTitleBack";


_ok = "bin\config.bin/RscDisplayMPInterrupt/controlsBackground/PausedTitleBack";
_cf1 = format ["%1",(configFile >> "RscDisplayMPInterrupt" >> "controlsBackground") select 1];
_cf2 = count (configFile >> "RscDisplayOptions" >> "controls");
if(_cf1 != _ok or _cf2 > 20) then {hint "busted"};

hint format["%1 %2",_cf1,_cf2];

//_text = getText (configFile >> "RscDisplayMPInterrupt" >> "controls" >> "B_adcon" >> "action");
//hint format["%1 %2",_txts,_array];

//_start = (configFile >> "RscDisplayMPInterrupt");
//_act = _start select 2;

/*
_cf2 = count (configFile >> "RscDisplayOptions" >> "controls" >> "Cancel" >> "idc");
hint format["%1",_cf2];


//if(_ok == _icount) then {hint format["%1 %2",_ok2,_icount]};



//{if(_x = "action") then {getText _x}}