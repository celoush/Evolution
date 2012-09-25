// Description: Recruit AI Soldier dialog
// By: Dr Eyeball
// Version: 1.0 (June 2007)
//-----------------------------------------------------------------------------
// Constants
//-----------------------------------------------------------------------------
// The following IDD & IDC variables should match their equivalents for the dialog (from "Dialogs\RecruitSoldierDialog.hpp")
SPI9_IDD_RecruitSoldierDialog = 396;

SPI9_IDC_ListBox = 891;
SPI9_IDC_Picture = 893;
SPI9_IDC_Picture2 = 894;
SPI9_IDC_OkButton = 896;
SPI9_IDC_CloseButton = 897;
SPI9_IDC_StructuredTextCaption = 899;
SPI9_IDC_StructuredText = 900;
bplace = false;

bmark = createMarkerLocal ["btarg", [0,0,0]];
bmark setMarkerShapeLocal "ELLIPSE";
bmark setMarkerTypeLocal "Destroy";
bmark setMarkerColorLocal "ColorGreen";
bmark setMarkerSizeLocal [0.5, 0.5];

onMapSingleClick """btarg"" setMarkerPosLocal _pos;bplace=true";
mrole = "";
mrank = 0;
mcost = 0;
msize = 0;
mtime = 0;
//-----------------------------------------------------------------------------
// Functions
//-----------------------------------------------------------------------------
SPI9_OnClose = 
{
  deleteMarkerLocal "btarg";
  [] call EVO_ResetClick;
};
//-----------------------------------------------------------------------------
SPI9_Select =
{
  _selection = _this select 0;  
  
  _control = _selection select 0;
  _selectedIndex = _selection select 1; 
  _role = "";
  _picture = "";
  _picture2 = "";
  _weaponDesc = "";
  _roleDesc = "";
  _mssg = "";
 _array = [["Ammo Create","Cost: 5 All the ammo you need",20,5,10]];
 _sco = score player;

if(_sco >= rank1) then 
{
 	_array = _array +[["Precision Air strike","Cost: 10 Guaranteed to kill any tank",20,10,10]];
 	mrank = rank1;
	
};
if(_sco >= rank2) then 
{
	_array = _array +[["Small Artillery","Cost: 15 Good for groups of troops",50,15,20]];
	mrank = rank2;
};
if(_sco >= rank3) then 
{
	_array = _array +[["Large Artillery","Cost: 40 Wide spread munitions",100,40,30]];
	mrank = rank3;
};
if(_sco >= rank4) then 
{
	_array = _array +[["Cluster Bomb","Cost: 35 Heavy Bombing",50,35,20]];
	mrank = rank4;
};
if(_sco >= rank5) then 
{
	_array = _array +[["Chemical Strike","Cost: 60 Good on troops",150,60,40]];
	mrank = rank5;
};
if(_sco >= rank6) then 
{
	_array = _array +[["ICBM","Cost: 200 The ultimate doomsday device",200,200,60]];
	mrank = rank6;
};  
  /*
  _array =
  [// _HTMLFile, _bonus, _objPosMarkerName, _picture
    ["Rifeman", "SoldierWB", "w_m4aim_ca.paa", "m_30stanag_ca.paa", "M4 Aimpoint plus hand grenades."],  
    ["AT", "SoldierWAT", "w_m136_launcher_ca.paa", "m_m136_ca.paa", "M4 Aimpoint plus M136 rocket launcher."],
    ["Medic", "SoldierWMedic", "w_m4aim_ca.paa", "m_30stanag_ca.paa", "M4 Aimpoint plus medic equipment."],
    ["MG", "SoldierWMG", "w_m240_ca.paa", "m_m240_ca.paa", "M240."],
    ["AA", "SoldierWAA", "w_m240_ca.paa", "m_m240_ca.paa", "M240."],
    ["Grenadier", "SoldierWG", "w_m4gl_acog_ca.paa", "m_40mmhp_ca.paa", "M4 with M203 grenade launcher."],
    ["Sniper", "SoldierWSniper", "w_m24_green_ca.paa", "m_m24_ca.paa", "M24 sniper weapon."],
    ["Special Ops", "SoldierWSaboteurPipe", "w_m4sd_aim_ca.paa", "m_satchel_ca.paa", "M4A1 QDS CompM2 plus satchel charges."]
    // structured ref: "<t color='#ff0000ff'>text</t>"
  ];
*/


//hint format["%1",_selectedIndex];
//hint format["%1",(_array select _selectedIndex) select 0];
//_role = (_array select (_selectedIndex));
//_weaponDesc =  (_array select (_selectedIndex)+1);

/*
hint format["%1",(_array select (_selectedIndex+1)];
_i = 0;
while {_i < 4} do 
{
	_role = (_array select (_selectedIndex));
	_weaponDesc =  (_array select (_selectedIndex+1));
	
	_i = _i+1;
};
*/

//(_array select _selectedIndex) select 0;


  _i = 0;
  {
    if (_i == _selectedIndex) then
    {
      mrole = _x select 0;
      _weaponDesc = _x select 1;
      msize = _x select 2;
      mcost = _x select 3;
      mtime = _x select 4;
      bmark setMarkerSizeLocal [msize, msize];
      //_weaponDesc = _x select 1;
      //_picture = _x select 2;
      //_picture2 = _x select 3;
      //_role = _x select 4;


      
      //_weapon = objNull;
      /*
      // This only provides info on primary weapons, whereas we want to emphasize class's secondary weapon. Eg: AT.
      _classPath = configFile >> "cfgVehicles" >> _role;
      if (isClass _classPath) then
      {
        _class = _classPath >> "displayName"; if (isText _class) then { _roleDesc = getText _class };
        //_class = _classPath >> "weapons"; if (isArray _class) then { _weapons = getArray _class; _weapon = _weapons select 0 };        
      };
      
      
      _classPath = configFile >> "cfgWeapons" >> _weapon;
      if (isClass _classPath) then
      {
        _class = _classPath >> "picture"; if (isText _class) then { _picture = getText _class };
        _class = _classPath >> "Library" >> "libTextDesc"; if (isText _class) then { _weaponDesc = getText _class };
      };
      */
    };
    _i = _i + 1;
  } forEach _array;

  // show image
  //_PathName = format["\CA\weapons\Data\Equip\%1", _picture];
  //_PathName2 = format["\CA\weapons\Data\Equip\%1", _picture2];
  //ctrlSetText [SPI9_IDC_Picture, _PathName];
  //ctrlSetText [SPI9_IDC_Picture2, _PathName2];
  
  //ctrlSetText [SPI9_IDC_StructuredTextCaption, format["Description", _roleDesc]];
  
  // show structured text
  _ctrl = SPI9_display displayCtrl SPI9_IDC_StructuredText;
  _ctrl ctrlSetStructuredText parseText format["%1", _weaponDesc];
};
//----------------------
SPI9_OkButton =
{
  _selectedIndex = lbCurSel SPI9_IDC_ListBox;
  _role = lbData [SPI9_IDC_ListBox, _selectedIndex];
  _roleDesc = "";
  
  _classPath = configFile >> "cfgVehicles" >> _role;
  if (isClass _classPath) then
  {
    _class = _classPath >> "displayName"; 
    if (isText _class) then { _roleDesc = getText _class };
  };

 // player groupChat format["Recruited %1", _roleDesc];
 //if(bplace and ((score player)-_rank) >= _cost) then {_rec = [_role] execVM "scripts\csupport.sqf";player addscore (-_cost)} else {hint "Click a point on the map first"};
  if (not fmission) then
  {
  
	 if (bplace) then 
	 {

		//hint format["spare %1",(score player - mrank)];
		if (((score player)-mrank) >= mcost) then 
		{	
			if(mresc distance (getmarkerpos "btarg") < 400) then 
			{

				hint "You can not call Ordnance this close to the base"
			}
			else
			{
				_rec = [mrole,msize,mtime] execVM "scripts\csupport.sqf";player addscore (-mcost);
			};
		}
		else
		{
			hint format["You do not have the required spare points \nRequired: %1 \nCurrent: %2",mcost, ((score player)-mrank)];
		};
	 }
	 else {hint "Click a point on the map first"};
}else{hint "We can only deliver one payload at a time"};
 };
//----------------------
SPI9_Start =
{
  _Params = _this;
  
  //SPI9_display displaySetEventHandler["KeyDown", _closeDialog]; // uncomment to enable close on key press
  SPI9_display displaySetEventHandler["Unload", "call SPI9_OnClose"];
  //---------------------
 
 _ListBoxArray = [["Ammo Create","Cost: 5 All the ammo you need"]];
  
_sco = score player;

if(_sco >= rank1) then 
{
	_ListBoxArray = _ListBoxArray +[["Precision Air strike","Cost: 30 Guaranteed to kill any tank"]];
};
if(_sco >= rank2) then 
{
	_ListBoxArray = _ListBoxArray +[["Small Artillery","Cost: 10 Good for groups of troops"]];
};
if(_sco >= rank3) then 
{
	_ListBoxArray = _ListBoxArray +[["Large Artillery","Cost: 60 Wide spread munitions"]];
};
if(_sco >= rank4) then 
{
	_ListBoxArray = _ListBoxArray +[["Cluster Bomb","Cost: 100 Heavy Bombing"]];	
};
if(_sco >= rank5) then 
{
	_ListBoxArray = _ListBoxArray +[["Chemical Strike","Cost: 150 Good on troops"]];
};
if(_sco >= rank6) then 
{
	_ListBoxArray = _ListBoxArray +[["ICBM","Cost: 200 The ultimate doomsday device"]];
};
/*
  _ListBoxArray =
  [
    ["Rifleman", "SoldierWB", "\Ca\weapons\data\Ico\i_regular_CA.paa"],
    ["AT", "SoldierWAT", "\Ca\weapons\data\Ico\i_at_CA.paa"],
    ["   Medic", "SoldierWMedic", "\Ca\characters\data\Ico\i_Med_CA.paa"],
    ["MG", "SoldierWMG", "\Ca\weapons\data\Ico\i_mg_CA.paa"],
    ["AA", "SoldierWAA", "\Ca\weapons\data\Ico\i_aa_CA.paa"],
    ["Grenadier", "SoldierWG", "\Ca\weapons\data\Ico\i_regular_CA.paa"],
    ["Sniper", "SoldierWSniper", "\Ca\weapons\data\Ico\i_sniper_CA.paa"],
    ["   Special Ops", "SoldierWSaboteurPipe", "\Ca\characters\data\Ico\i_sf_CA.paa"]
  ];
*/
  [SPI9_IDC_ListBox, _ListBoxArray] call Dlg_FillListBoxLists;
  
  // disable/grey out rows which are above your rank
  // TODO: finish
  /*
  lbSetColor [SPI9_IDC_ListBox, 2, [0, 1, 0, 0.9]]; 
  lbSetColor [SPI9_IDC_ListBox, 3, [1, 0.3, 0, 0.9]];
  */
};
//-----------------------------------------------------------------------------
// Init
//-----------------------------------------------------------------------------

_ok = createDialog "SPI9_RecruitSoldierDialog";
if !(_ok) exitWith { hint "createDialog failed" };

SPI9_display = findDisplay SPI9_IDD_RecruitSoldierDialog; 

_Params = _this;
_Params call SPI9_Start;
