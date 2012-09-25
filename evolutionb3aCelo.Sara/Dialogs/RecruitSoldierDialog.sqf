// Description: Recruit AI Soldier dialog
// By: Dr Eyeball
// Version: 1.0 (June 2007)
//-----------------------------------------------------------------------------
// Constants
//-----------------------------------------------------------------------------
// The following IDD & IDC variables should match their equivalents for the dialog (from "Dialogs\RecruitSoldierDialog.hpp")
RAI9_IDD_RecruitSoldierDialog = 396;

RAI9_IDC_ListBox = 891;
RAI9_IDC_Picture = 893;
RAI9_IDC_Picture2 = 894;
RAI9_IDC_OkButton = 896;
RAI9_IDC_CloseButton = 897;
RAI9_IDC_StructuredTextCaption = 899;
RAI9_IDC_StructuredText = 900;

//-----------------------------------------------------------------------------
// Functions
//-----------------------------------------------------------------------------
RAI9_OnClose = 
{
  //
};
//-----------------------------------------------------------------------------
RAI9_Select =
{
  _selection = _this select 0;  
  
  _control = _selection select 0;
  _selectedIndex = _selection select 1; 

  _picture = "";
  _picture2 = "";
  _weaponDesc = "";
  _roleDesc = "";
  
 _array = [["Rifeman", "SoldierWB", "m_30stanag_ca.paa", "m_30stanag_ca.paa", "---"]];
 
_sco = score player;
if(_sco >= rank1) then 
{
 	_array = [];
	_array = _array +[["Rifeman", "SoldierWB", "w_m4aim_ca.paa", "m_30stanag_ca.paa", "M4 Aimpoint plus hand grenades."]];
	_array = _array +[["AT", "SoldierWAT", "w_m136_launcher_ca.paa", "m_m136_ca.paa", "M4 Aimpoint plus M136 rocket launcher."]];
};
if(_sco >= rank2) then 
{
	_array = _array +[["Medic", "SoldierWMedic", "w_m4aim_ca.paa", "m_30stanag_ca.paa", "M4 Aimpoint plus medic equipment."]];
};
if(_sco >= rank3) then 
{
	_array = _array +[["MG", "SoldierWMG", "w_m240_ca.paa", "m_m240_ca.paa", "M240."]];
	_array = _array +[["AA", "SoldierWAA", "w_fim92_ca.paa", "m_stinger_ca.paa", "FM-92F."]];
};
if(_sco >= rank4) then 
{
	_array = _array +[["Grenadier", "SoldierWG", "w_m4gl_acog_ca.paa", "m_40mmhp_ca.paa", "M4 with M203 grenade launcher."]];	
};
if(_sco >= rank5) then 
{
	_array = _array +[["Sniper", "SoldierWSniper", "w_m24_green_ca.paa", "m_m24_ca.paa", "M24 sniper weapon."]];
};
if(_sco >= rank6) then 
{
	_array = _array +[["Special Ops", "SoldierWSaboteurPipe", "w_m4sd_aim_ca.paa", "m_satchel_ca.paa", "M4A1 QDS CompM2 plus satchel charges."]];
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
  _i = 0;
  {
    if (_i == _selectedIndex) then
    {
      _role = _x select 1;
      _picture = _x select 2;
      _picture2 = _x select 3;
      _weaponDesc = _x select 4;
      _weapon = objNull;
      
      // This only provides info on primary weapons, whereas we want to emphasize class's secondary weapon. Eg: AT.
      _classPath = configFile >> "cfgVehicles" >> _role;
      if (isClass _classPath) then
      {
        _class = _classPath >> "displayName"; if (isText _class) then { _roleDesc = getText _class };
        //_class = _classPath >> "weapons"; if (isArray _class) then { _weapons = getArray _class; _weapon = _weapons select 0 };        
      };
      
      /*
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
  _PathName = format["\CA\weapons\Data\Equip\%1", _picture];
  _PathName2 = format["\CA\weapons\Data\Equip\%1", _picture2];
  ctrlSetText [RAI9_IDC_Picture, _PathName];
  ctrlSetText [RAI9_IDC_Picture2, _PathName2];
  
  ctrlSetText [RAI9_IDC_StructuredTextCaption, format["Description", _roleDesc]];
  
  // show structured text
  _ctrl = RAI9_display displayCtrl RAI9_IDC_StructuredText;
  _ctrl ctrlSetStructuredText parseText format["The %1 is equipped with a %2", _roleDesc, _weaponDesc];
};
//----------------------
RAI9_OkButton =
{
  _selectedIndex = lbCurSel RAI9_IDC_ListBox;
  
  _role = lbData [RAI9_IDC_ListBox, _selectedIndex];
  _roleDesc = "";
  
  _classPath = configFile >> "cfgVehicles" >> _role;
  if (isClass _classPath) then
  {
    _class = _classPath >> "displayName"; 
    if (isText _class) then { _roleDesc = getText _class };
  };

 // player groupChat format["Recruited %1", _roleDesc];
  _rec = [_role] execVM "scripts\recruit.sqf";
};
//----------------------
RAI9_Start =
{
  _Params = _this;
  
  //RAI9_display displaySetEventHandler["KeyDown", _closeDialog]; // uncomment to enable close on key press
  RAI9_display displaySetEventHandler["Unload", "call RAI9_OnClose"];
  //---------------------
 
 _ListBoxArray = [["Insufficient rank", "none", "\Ca\characters\data\Ico\i_null_CA.paa"]];
  
_sco = score player;
if(_sco >= rank1) then 
{
	_ListBoxArray = [];
	_ListBoxArray = _ListBoxArray +[["Rifleman", "SoldierWB", "\Ca\weapons\data\Ico\i_regular_CA.paa"]];
	_ListBoxArray = _ListBoxArray +[["AT", "SoldierWAT", "\Ca\weapons\data\Ico\i_at_CA.paa"]];
};
if(_sco >= rank2) then 
{
	_ListBoxArray = _ListBoxArray +[["   Medic", "SoldierWMedic", "\Ca\characters\data\Ico\i_Med_CA.paa"]];
};
if(_sco >= rank3) then 
{
	_ListBoxArray = _ListBoxArray +[["MG", "SoldierWMG", "\Ca\weapons\data\Ico\i_mg_CA.paa"]];
	_ListBoxArray = _ListBoxArray +[["AA", "SoldierWAA", "\Ca\weapons\data\Ico\i_aa_CA.paa"]];
};
if(_sco >= rank4) then 
{
	_ListBoxArray = _ListBoxArray +[["Grenadier", "SoldierWG", "\Ca\weapons\data\Ico\i_regular_CA.paa"]];	
};
if(_sco >= rank5) then 
{
	_ListBoxArray = _ListBoxArray +[["Sniper", "SoldierWSniper", "\Ca\weapons\data\Ico\i_sniper_CA.paa"]];
};
if(_sco >= rank6) then 
{
	_ListBoxArray = _ListBoxArray +[["   Special Ops", "SoldierWSaboteurPipe", "\Ca\characters\data\Ico\i_sf_CA.paa"]];
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
  [RAI9_IDC_ListBox, _ListBoxArray] call Dlg_FillListBoxLists;
  
  // disable/grey out rows which are above your rank
  // TODO: finish
  /*
  lbSetColor [RAI9_IDC_ListBox, 2, [0, 1, 0, 0.9]]; 
  lbSetColor [RAI9_IDC_ListBox, 3, [1, 0.3, 0, 0.9]];
  */
};
//-----------------------------------------------------------------------------
// Init
//-----------------------------------------------------------------------------

_ok = createDialog "RAI9_RecruitSoldierDialog";
if !(_ok) exitWith { hint "createDialog failed" };

RAI9_display = findDisplay RAI9_IDD_RecruitSoldierDialog; 

_Params = _this;
_Params call RAI9_Start;
