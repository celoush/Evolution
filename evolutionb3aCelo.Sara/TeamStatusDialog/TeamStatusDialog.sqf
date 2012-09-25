// Desc: Team Status Dialog
// Features: Group joining, Team Leader selection, statistics for team/group/vehicle/opposition
// By: Dr Eyeball
// Purpose: Script & functions for dialog control
// Version: 1.0 (23 Mar 2007)
//-----------------------------------------------------------------------------
// The following variables should match their equivalents for the dialog (from description.ext or included file)
TSD9_ROWS = 42;
TSD9_TeamStatusDialogIDD = 385;
//-----------------------------------------------------------------------------

TSD9_color_white = [1.0, 1.0, 1.0, 1.0];
TSD9_color_black = [0.0, 0.0, 0.0, 0.5];
TSD9_color_maroon = [0.5, 0.0, 0.2, 1.0];
TSD9_color_red = [1.0, 0.0, 0.0, 1.0];
TSD9_color_green = [0.0, 1.0, 0.0, 1.0];
TSD9_color_blue = [0.41, 0.33, 0.39, 0.5];
TSD9_color_orange = [0.8, 0.2, 0.1, 1.0];
TSD9_color_yellow = [.85, .85, 0.0, 1.0];
TSD9_color_ltPurple = [0.7, 0.7, 1.0, 1.0];
TSD9_color_paleYellow = [0.83, 0.78, 0.68, 0.5];
TSD9_color_paleGreen = [0.33, 0.73, 0.49, 0.5];
TSD9_color_paleBlue = [0.41, 0.33, 0.39, 0.5];
TSD9_color_paleBlue2 = [0.33, 0.40, 0.33, 1.0];
TSD9_color_paleRed = [0.7, 0.3, 0.3, 0.7];
TSD9_color_Gray_10 = [0.0, 0.0, 0.0, 0.2];
TSD9_color_Gray_20 = [0.0, 0.0, 0.0, 0.5];
TSD9_color_Gray_30 = [0.3, 0.3, 0.3, 0.5];
TSD9_color_Gray_40 = [0.4, 0.4, 0.4, 0.5];
TSD9_color_Gray_50 = [0.5, 0.5, 0.5, 0.5];

TSD9_color_default = [-1.0, -1.0, -1.0, -1.0];
TSD9_color_textFG = TSD9_color_white;
TSD9_color_groupBG = TSD9_color_paleBlue2;
TSD9_color_playerBG = TSD9_color_paleyellow;
TSD9_color_cellABG = TSD9_color_Gray_20;
TSD9_color_cellBBG = TSD9_color_Gray_30;
TSD9_color_voidBG = TSD9_color_Gray_10;

TSD9_hightlight_text_code = "%$Highlight$%";
//TSD9_ProgressIDC = 99;
TSD9_MyTeamButtonIDC = 103;
TSD9_MyGroupButton = 104;
TSD9_VehicleButton = 105;
TSD9_OppositionButtonIDC = 106;

fn_GridRefCoords = compile preprocessFile "TeamStatusDialog\GridRefCoords.sqf";

TSD9_ClosedGroups = [];

//-----------------------------------------------------------------------------
//---- Control functions
//-----------------------------------------------------------------------------
TSD9_ArraysAreEqual =
{
  _Array1 = _this select 0;
  _Array2 = _this select 1;

  _Result = true;
  if (count _Array1 != count _Array2) then
  {
    _Result = false
  }
  else
  {
    for "_i" from 0 to (count _Array1 - 1) do
    {
      if (_Array1 select _i != _Array2 select _i) then 
      {
      _Result = false 
      };
    };  
  };
  _Result;
};
//----------------------
TSD9_SetCtrlColors = 
{
  _idc2 = _this select 0;
  _col = _this select 1;
  _fg2 = _this select 2; 
  _bg2 = _this select 3;
  
  if (_fg2 select 0 == TSD9_color_default select 0) then { _fg2 = TSD9_color_textFG; };
  
  // add alternating column colors
  if (_bg2 select 0 == TSD9_color_default select 0) then 
  {
    if ((_col <= 13) || (_col >= 18)) then // col 18 rearranged, so special exception
    {
      if (_idc2 / 2 == round(_idc2 / 2)) 
      then { _bg2 = TSD9_color_cellBBG }
      else { _bg2 = TSD9_color_cellABG };
    }
    else
    {
      if (_idc2 / 2 == round(_idc2 / 2)) 
      then { _bg2 = TSD9_color_cellABG }
      else { _bg2 = TSD9_color_cellBBG };
    };
  };

  // add alternating row colors
  _grey = _bg2 select 0;
  // don't alternate: a) last column, b) bottom area, c) non-cell colours.
  if (
    (_col != 19) && 
    //(!([_bg2, TSD9_color_voidBG] call TSD9_ArraysAreEqual)) && 
    (([_bg2, TSD9_color_cellABG] call TSD9_ArraysAreEqual) || ([_bg2, TSD9_color_cellBBG] call TSD9_ArraysAreEqual))
    ) then
  {
    _row = round((_idc2-1000)/100);  
    if (_row / 3 == round(_row / 3)) then 
    //if ((_row mod 4 == 0)) then 
    {
      _altRow = _grey+0.03;
      _bg2 = [_altRow, _altRow, _altRow, _bg2 select 3];
    };  
  };
  
  /* TODO: finish later, but change logic to use array instead of embedded strings
  if ((_txt2 find/str _hightlight_text_code) != -1) then
  {
    _control ctrlSetTextColor TSD9_color_textFG;
    _control ctrlSetBackgroundColor TSD9_color_maroon;
  }
  else
  {
  */
    _control ctrlSetTextColor _fg2;
    _control ctrlSetBackgroundColor _bg2;
  //};  
};
//----------------------
TSD9_SetText = 
{
  _idc2 = _this select 0;
  /*
  _col = _this select 1;
  _fg2 = _this select 2; 
  _bg2 = _this select 3;
  */
  _txt2 = _this select 4;
  
  _control = TSD9_display displayCtrl _idc2;

  ctrlSetText [_idc2, _txt2];
  _control ctrlSetTooltip _txt2; // doesn't do anything for text ctrl types

  _this call TSD9_SetCtrlColors;
};
//----------------------
TSD9_SetCombo = 
{
  _idc2 = _this select 0;
  /*
  _col = _this select 1;
  _fg2 = _this select 2; 
  _bg2 = _this select 3;
  */
  _txtArray2 = _this select 4;
  
  _control = TSD9_display displayCtrl _idc2;

  //ctrlSetText [_idc2, Format["%1", _txtArray2]];
  //_control ctrlSetTooltip Format["%1", _txtArray2];
  
  lbClear _idc2;
  {
    _index = lbAdd [_idc2, _x];
    lbSetData [_idc2, _index, _x];
  } forEach _txtArray2;
  
  lbSetCurSel [_idc2, 0];
  
  _this call TSD9_SetCtrlColors;
};
//----------------------
TSD9_SetComboButton = 
{
  _idc2 = _this select 0;
  /*
  _col = _this select 1;
  _fg2 = _this select 2; 
  _bg2 = _this select 3;
  */
  _txtArray2 = _this select 4;
  
  _control = TSD9_display displayCtrl _idc2;

  //ctrlSetText [_idc2, Format["%1", _txtArray2]];
  //_control ctrlSetTooltip Format["%1", _txtArray2];
  
  lbClear _idc2;
  {
    _index = lbAdd [_idc2, _x];
    lbSetData [_idc2, _index, _x];
  } forEach _txtArray2;
  
  lbSetCurSel [_idc2, 0];
  
  _this call TSD9_SetCtrlColors;
};
//----------------------
TSD9_HideCtrl =
{
  _idc2 = _this select 0;
  _col = _this select 1;

  // I had trouble hiding, then showing the control again later, so I worked around the problem by simply changing it's BG color.
  [_idc2, _col, TSD9_color_default, TSD9_color_voidBG, ""] call TSD9_SetText;
  lbClear _idc2;
  ctrlShow [_idc2, false];
};
//----------------------
TSD9_ShowCtrl =
{
  _idc2 = _this select 0;
  _col = _this select 1;

  //[_idc2, _col, TSD9_color_default, TSD9_color_default, ""] call TSD9_SetText;
  ctrlShow [_idc2, true]; // doesn't seem to show after a hide
};
//----------------------
TSD9_GetRowIdc =
{
  _row = _this select 0;

  1000+(_row*100); // (row:col = RRCC, max = 100 * 100 cells)
};
//-----------------------------------------------------------------------------
//---- Player Stats functions
//-----------------------------------------------------------------------------
TSD9_GetPlayerIndex =
{
  //_player = _this select 0;
  //_row = _this select 1;
  _id = _this select 2;

  if (_id < 0) 
  then { "" } 
  else { Format["%1", _id] };
  // can't find a reliable command to return the true group position id, similar to the "3" in "WEST 1-1-A-3"
};
//----------------------
TSD9_GetCloseGroupButtonText =
{
  _group = _this select 0;
  
  if ((TSD9_Page == "Team") || (TSD9_Page == "Opposition")) then
  {
    _ExpandOrCollapseBlock = "-";
    if (format["%1", _group] in TSD9_ClosedGroups) then
    { 
      _ExpandOrCollapseBlock = "+";
    };

    format["[%1]", _ExpandOrCollapseBlock];
  }
  else
  {
    "";
  };
};
//----------------------
TSD9_CreateCloseGroupButtonAction =
{
  _group = _this select 0;
  
  if ((TSD9_Page == "Team") || (TSD9_Page == "Opposition")) then
  {
    _AddOrRemoveSet = "+";
    if (format["%1", _group] in TSD9_ClosedGroups) then
    { 
      _AddOrRemoveSet = "-"; 
    };

    format[ "TSD9_ClosedGroups = TSD9_ClosedGroups %1 [""%2""]; [] call TSD9_DrawPage", _AddOrRemoveSet, _group];
  }
  else
  {
    ""
  };
};
//----------------------
TSD9_GetPlayerName =
{
  _player = _this select 0;
  _name = name _player;
  if (not isPlayer _player) then { _name = "(A.I.) "+_name };
  if (_name == "Error: No unit") then { _name = Format[ "--Dead-- %1. Name unknown", vehicleVarName _player ] };

  _name;
};
//----------------------
TSD9_IsVehicle =
{
  _obj = _this select 0;
  if ((_obj isKindOf "LandVehicle") OR (_obj isKindOf "Air") OR (_obj isKindOf "Ship"))
  then { true } 
  else { false }; 
};
//----------------------
TSD9_PlayerIsOpposition =
{
  _player = _this select 0;

  if (side _player != playerSide) 
  then { true } 
  else { false }; 
};
//----------------------
TSD9_HideOppositionInfo =
{
  _player = _this select 0;
  _txt = _this select 1;
  
  if (side _player != playerSide) 
  then { "" }
  else { _txt };
};
//----------------------
TSD9_HideOppositionComboInfo =
{
  _player = _this select 0;
  _txt = _this select 1;
  
  if (side _player != playerSide) 
  then { [""] }
  else { _txt };
};
//----------------------
TSD9_GetVehicleType =
{
  _obj = _this select 0;

  //if ([_player] call TSD9_PlayerIsOpposition) then exitWith { "-XX-" };
  _vehicle = objNull;
  _isVehicle = ([_obj] call TSD9_IsVehicle);
  if (_isVehicle) 
  then { _vehicle = _obj }
  else { _vehicle = vehicle _obj };

  _result = "";
  if ([_vehicle] call TSD9_IsVehicle) 
  then { _result = [typeOf _vehicle] call TSD9_GetShortRoleName }
  else { _result = "" };

  _result;
};
//----------------------
TSD9_GetVehicleSeat =
{
  _player = _this select 0;

  _seat = "";
  if (not ([_player] call TSD9_IsVehicle)) then
  {
    _vehicle = vehicle _player;
    if ([_vehicle] call TSD9_IsVehicle)
    then 
    {
      if (_player == driver _vehicle) then {
        if (_vehicle isKindOf "Air") 
        then { _seat = "Pilot" } 
        else { _seat = "Driver" };
      };
      if (_player == gunner _vehicle) then { _seat = "Gunner" };
      if (_player == commander _vehicle) then { _seat = "Cmdr" };
      if (_seat == "" && _player in crew _vehicle) then { _seat = "Cargo" };    
    };
  };

  _seat;
};
//----------------------
TSD9_GetShortRoleName =
{
  _ObjType = _this select 0;
  
  _role = "?";
  switch (_ObjType) do
  {
    case "AAMOW009": { _role = "Mi17 attack" };
    case "AAMOW010": { _role = "Mi17 transport" };

    case "SoldierWAA": { _role = "AA" };
    case "SoldierEAA": { _role = "AA" };
    case "SoldierWAT": { _role = "AT" };
    case "SoldierEAT": { _role = "AT" };
    case "SoldierWAR": { _role = "Auto Rifleman" };
    case "SoldierEAR": { _role = "Auto Rifleman" };
    case "BISCamelPilot2": { _role = "Camel Pilot" };
    case "BISCamelPilot": { _role = "Camel Pilot" };
    case "SoldierWCrew": { _role = "Crewman" };
    case "SoldierECrew": { _role = "Crewman" };
    case "SoldierWMiner": { _role = "Engineer" };
    case "SoldierEMiner": { _role = "Engineer" };
    case "SoldierWG": { _role = "Grenadier" };
    case "SoldierEG": { _role = "Grenadier" };
    case "SoldierWMG": { _role = "MG" };
    case "SoldierEMG": { _role = "MG" };
    case "SoldierWMedic": { _role = "Medic" };
    case "SoldierEMedic": { _role = "Medic" };
    case "OfficerW": { _role = "Officer" };
    case "OfficerE": { _role = "Officer" };
    case "SoldierWPilot": { _role = "Pilot" };
    case "SoldierEPilot": { _role = "Pilot" };
    case "SoldierWB": { _role = "Rifleman" };
    case "SoldierEB": { _role = "Rifleman" };
    case "SoldierWSaboteurAssault": { _role = "SF Assault" };
    case "SoldierESaboteurAssault": { _role = "SF Assault" };
    case "SoldierWSaboteurMarksman": { _role = "SF Marksman" };
    case "SoldierESaboteurMarksman": { _role = "SF Marksman" };
    case "SoldierWSaboteurRecon": { _role = "SF Recon" };
    case "SoldierESaboteurRecon": { _role = "SF Recon" };
    case "SoldierWSaboteur": { _role = "SF Saboteur" };
    case "SoldierESaboteur": { _role = "SF Saboteur" };
    case "SoldierWSaboteurPipe": { _role = "SF Saboteur Pipe" };
    case "SoldierESaboteurPipe": { _role = "SF Saboteur Pipe" };
    case "SoldierWSniper": { _role = "Sniper" };
    case "SoldierESniper": { _role = "Sniper" };
    case "SquadLeaderW": { _role = "SL" };
    case "SquadLeaderE": { _role = "SL" };
    case "TeamLeaderW": { _role = "TL" };
    case "TeamLeaderE": { _role = "TL" };
    //SoldierESaboteurBizon STR_DN_SPECNAZ_S ??
    default { _role = _ObjType };
  };

  _role;
};
//----------------------
TSD9_GetRole =
{
  _player = _this select 0;
  
  _role = rank _player;
  /*
  if (not ([_player] call TSD9_IsVehicle)) then
  {
    _role = typeOf _player;
    _role = [_role] call TSD9_GetShortRoleName;
    if (_player == leader _player) then
    { 
      _role = "[TL] "+_role; 
    };
  };
  */
  _role;
};
//----------------------
TSD9_GetSpecialGear =
{
  _player = _this select 0;
  
  _gear = [];

  _weapons = weapons _player;
  { _gear = _gear + [_x /*+"  (weapon)"*/] } forEach _weapons;
  _gear = _gear + ["--------------------"];
  
  _magazines = magazines _player;
  { _gear = _gear + [_x /*+"  (ammo)"*/] } forEach _magazines;
  
  _gear;
};
//----------------------
TSD9_GetScoreTotal =
{
  _player = _this select 0;
  
  if ([_player] call TSD9_IsVehicle) then
  {
    "--"
  }
  else
  {
    format["%1", score _player]
  };
};
//----------------------
TSD9_GetBonusScore =
{
  _player = _this select 0;
  
  "--"; //format["%1", score _player];
};
//----------------------
TSD9_GetKills =
{
  _player = _this select 0;
  
  "--"; //format["%1", score _player];
};
//----------------------
TSD9_GetDeaths =
{
  _player = _this select 0;
  
  "--"; //format["%1", score _player];
};
//----------------------
TSD9_GetTKs =
{
  _player = _this select 0;
  
  "--"; //format["%1", score _player];
};
//----------------------
TSD9_GetCommand =
{
  _player = _this select 0;
  
  /*
  _vehicle = vehicle _player;
  if ((_vehicle isKindOf "LandVehicle") OR (_vehicle isKindOf "Air") OR (_vehicle isKindOf "Ship")) then 
  { currentCommand _vehicle } else { currentCommand _player };
  */  
  _command = currentCommand _player;
  
  if (not alive _player) then { _command = /*_hightlight_text_code+*/ "--Dead--" }; // +format[" (%1s)", playerRespawnTime]
  _command;
};
//----------------------
TSD9_GetRequires =
{
  _obj = _this select 0;

  _requires = [];
  _vehicle = objNull;
  if ([_obj] call TSD9_IsVehicle) 
  then { _vehicle = _obj }
  else { _vehicle = vehicle _player };
  
  if ([_vehicle] call TSD9_IsVehicle) then
  { 
    if (damage _vehicle > 0.2) then { _requires = _requires+[ format["Repairs (%1 damage)", round((damage _vehicle) * 100) ] ] };
	  if (fuel _vehicle < 0.1) then { _requires = _requires+[ format["Refuel (%1 fuel)", round((fuel _vehicle) * 100) ] ] };
  };

  if (!([_obj] call TSD9_IsVehicle)) then // assume obj=person
  {
    if (damage _obj > 0.1) then { _requires = _requires+[ format["Medic (%1 damage)", round((damage _obj) * 100) ] ] };
  };
  
  _requires;
};
//----------------------
TSD9_GetPos =
{
  _obj = _this select 0;
  
  _MapGridRef = [_obj] call fn_GridRefCoords;
  _MapGridRef;  
};
//----------------------
TSD9_GetSLProximity =
{
  _player = _this select 0;
  
  format["%1m", round(_player distance leader _player) ];
};
//----------------------
TSD9_GetMyProximity =
{
  _player = _this select 0;
  
  format["%1m", round(_player distance player) ];
};
//----------------------
TSD9_GetTargetOrThreats =
{
  _player = _this select 0;

  _Target = objNull;
  if (vehicle _player == objNull) then
    { _Target = assignedTarget _player }
  else
    { _Target = assignedTarget (vehicle _player) };

  _TargetName = "";
  if (_Target == objNull) then
    { _TargetName = "" }
  else
    { _TargetName = [format[ "%1", typeOf _Target]] call TSD9_GetShortRoleName };
  
  /*if (_TargetName == "<NULL-object>") then
    { _TargetName = "" };*/
    
  format[ "%1", _TargetName];
};
//----------------------
TSD9_GetGroupDesc =
{
  _group = _this select 0;

  _MyGroup = "";
  if (_group == group player) then { _MyGroup = " (My squad)" };

  _GroupName = Format[ "%1", _group];
  if ((TSD9_Page == "Vehicle") && ((_group == grpNull /* doens't work? */) || (_GroupName == "<NULL-group>"))) then 
  { _GroupName = "Vacant Seats" };

  Format[ "%1%2", _GroupName, _MyGroup]; //"[%1] White" // TODO: determine how to obtain group team/squad colour.
};
//----------------------
TSD9_GetGroupSize =
{
  _group = _this select 0;

  if (TSD9_Page == "Vehicle") 
  then { "" }
  else { Format[ "(%1)", count units _group ] };
};
//----------------------
TSD9_JoinGroupByNameFromList =
{
  _groupName = _this select 0;
  _UnitList = _this select 1;
  
  _groupList = [_UnitList] call TSD9_GetAllGroupsFromUnits;

  {
    _group = _x;
    if (format["%1", _group] == format["%1", _groupName]) then
    {
      //(leader player) groupChat format["%1 has left your group", name player];
      
	junit=player;
	jgroup=_group;
	publicVariable "junit";
	publicVariable "jgroup";
	titleText ["Request Sent", "PLAIN DOWN"];
	(player) sideChat format["%1, Requesting transfer to your squad %2",(name leader _group) , _group];
      //[player] join _group;
      //(leader _group) groupChat format["%1 has joined your group", name player];
      
      [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
    };
  } forEach _groupList;
  closeDialog 0;
};
//----------------------
TSD9_JoinGroupByName =
{
  _groupName = _this select 0;

  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    format["['%1', thislist] call TSD9_JoinGroupByNameFromList", _groupName],
    "" ];
};
//----------------------
TSD9_SetDropAIList =
{
  _PlayerName = _this select 0;
  _UnitList = _this select 1;
  
  _CheckIfPlayerMatches =
  {
    _player = _this select 0;
    if (format["%1", _player] == _PlayerName) then
    {
  	//unassignVehicle _player; 
	//deleteVehicle _player;
	[_player] join grpNull;
      //(leader player) groupChat format["Your new Team Leader is %1. %2 has resigned.", name _player, name player];
      //(group player) selectLeader _player;
      
      [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
    };  
  };
  
  {
    _unit = _x;
    if (group _unit == group player) then
    {
      if ([_unit] call TSD9_IsVehicle) then
      {
        // process vehicle crew list
        {
          [_x] call _CheckIfPlayerMatches;        
        } forEach crew _unit;      
      }
      else
      {
        [_unit] call _CheckIfPlayerMatches;
      };      
    };
  } forEach _UnitList;
};
//----------------------
TSD9_SetDropAI =
{
  _PlayerName = _this select 0;

  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    format["['%1', thislist] call TSD9_SetDropAIList", _PlayerName],
    "" ];
};
//----------------------
TSD9_SetDropPlayerList =
{
  _PlayerName = _this select 0;
  _UnitList = _this select 1;
  
  _CheckIfPlayerMatches =
  {
    _player = _this select 0;
    
    if (format["%1", _player] == _PlayerName) then
    {
    	[_player] join grpNull;
    	/*
    	junit = _player;
	jgroup = grpNull;
	publicVariable "junit";
	publicVariable "jgroup";
	*/
      //(leader player) groupChat format["Your new Team Leader is %1. %2 has resigned.", name _player, name player];
      //(group player) selectLeader _player;
      
      [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
    };  
  };
  
  {
    _unit = _x;
    if (group _unit == group player) then
    {
      if ([_unit] call TSD9_IsVehicle) then
      {
        // process vehicle crew list
        {
          [_x] call _CheckIfPlayerMatches;        
        } forEach crew _unit;      
      }
      else
      {
        [_unit] call _CheckIfPlayerMatches;
      };      
    };
  } forEach _UnitList;




	//hint format["You are now leader of\n%1",group player]; 
};
//----------------------
TSD9_SetDropPlayer =
{
  _PlayerName = _this select 0;

  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    format["['%1', thislist] call TSD9_SetDropPlayerList", _PlayerName],
    "" ];
};
//----------------------
TSD9_SetNewTeamLeaderByNameFromList =
{
  _PlayerName = _this select 0;
  _UnitList = _this select 1;
  
  _CheckIfPlayerMatches =
  {
    _player = _this select 0;
    
    if (format["%1", _player] == _PlayerName) then
    {
      (leader player) groupChat format["Your new Team Leader is %1. %2 has resigned.", name _player, name player];
      (group player) selectLeader _player;
      
      [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
    };  
  };
  
  {
    _unit = _x;
    if (group _unit == group player) then
    {
      if ([_unit] call TSD9_IsVehicle) then
      {
        // process vehicle crew list
        {
          [_x] call _CheckIfPlayerMatches;        
        } forEach crew _unit;      
      }
      else
      {
        [_unit] call _CheckIfPlayerMatches;
      };      
    };
  } forEach _UnitList;
};
//----------------------
TSD9_SetNewTeamLeaderByName =
{
  _PlayerName = _this select 0;

  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    format["['%1', thislist] call TSD9_SetNewTeamLeaderByNameFromList", _PlayerName],
    "" ];
};
//----------------------
TSD9_LeaveGroup =
{
  (leader player) groupChat format["%1 has left your group", name player];
	[player] join grpNull;
  [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
};
//----------------------
TSD9_SetNewTLForAITeamLeader =
{
  _TL_is_AI = (!(isPlayer (leader player)));

  if (_TL_is_AI) then
  {
    (leader player) groupChat format["You are the new Team Leader. (AI) %1 has been demoted.", name (leader player)];
    (group player) selectLeader player;    
  }
  else
  {
    (leader player) groupChat format["The Team Leader is no longer an AI player."];
    hint "The Team Leader is no longer an AI player.";
  };
    
  [] call TSD9_DrawPage; // refresh screen to redraw "join group" buttons
};
//-----------------------------------------------------------------------------
//---- Cell Grid functions
//-----------------------------------------------------------------------------
TSD9_HideRow =
{
  _row = _this select 0;

  _idc = [_row] call TSD9_GetRowIdc;

  // TODO: change to for loop   // for "_i" from 0 to (_seatCount - 1) do {
  [_idc+01, 01] call TSD9_HideCtrl;
  [_idc+02, 02] call TSD9_HideCtrl;
  [_idc+03, 03] call TSD9_HideCtrl;
  [_idc+04, 04] call TSD9_HideCtrl;
  [_idc+05, 05] call TSD9_HideCtrl;
  [_idc+06, 06] call TSD9_HideCtrl;
  [_idc+07, 07] call TSD9_HideCtrl;
  [_idc+08, 08] call TSD9_HideCtrl;
  /*
  [_idc+09, 09] call TSD9_HideCtrl;
  [_idc+10, 10] call TSD9_HideCtrl;
  [_idc+11, 11] call TSD9_HideCtrl;
  [_idc+12, 12] call TSD9_HideCtrl;
  */
  [_idc+13, 13] call TSD9_HideCtrl;
  [_idc+14, 14] call TSD9_HideCtrl;
  [_idc+15, 15] call TSD9_HideCtrl;
  [_idc+16, 16] call TSD9_HideCtrl;
  [_idc+17, 17] call TSD9_HideCtrl;
  [_idc+18, 18] call TSD9_HideCtrl;
  [_idc+19, 19] call TSD9_HideCtrl;
  buttonSetAction [_idc+19, ""];
};
//----------------------
TSD9_ShowRow =
{
  _row = _this select 0;

  _idc = [_row] call TSD9_GetRowIdc;

  // TODO: change to for loop  // for "_i" from 0 to (_seatCount - 1) do {
  [_idc+01, 01] call TSD9_ShowCtrl;
  [_idc+02, 02] call TSD9_ShowCtrl;
  [_idc+03, 03] call TSD9_ShowCtrl;
  [_idc+04, 04] call TSD9_ShowCtrl;
  [_idc+05, 05] call TSD9_ShowCtrl;
  [_idc+06, 06] call TSD9_ShowCtrl;
  [_idc+07, 07] call TSD9_ShowCtrl;
  [_idc+08, 08] call TSD9_ShowCtrl;
  /*
  [_idc+09, 09] call TSD9_ShowCtrl;
  [_idc+10, 10] call TSD9_ShowCtrl;
  [_idc+11, 11] call TSD9_ShowCtrl;
  [_idc+12, 12] call TSD9_ShowCtrl;
  */
  [_idc+13, 13] call TSD9_ShowCtrl;
  [_idc+14, 14] call TSD9_ShowCtrl;
  [_idc+15, 15] call TSD9_ShowCtrl;
  [_idc+16, 16] call TSD9_ShowCtrl;
  [_idc+17, 17] call TSD9_ShowCtrl;
  [_idc+18, 18] call TSD9_ShowCtrl;
  [_idc+19, 19] call TSD9_ShowCtrl;
};
//----------------------
TSD9_ConfigTitleRow =
{
  _row = 0;
  _idc = [_row] call TSD9_GetRowIdc;

  _fg = TSD9_color_default;
  _bg = TSD9_color_default;

  [_idc+01, 01, _fg, _bg, "+/-"] call TSD9_SetText;
  [_idc+02, 02, _fg, _bg, "#"] call TSD9_SetText;
  [_idc+03, 03, _fg, _bg, "Name"] call TSD9_SetText;
  [_idc+04, 04, _fg, _bg, "Seat"] call TSD9_SetText;
  [_idc+05, 05, _fg, _bg, "Rank"] call TSD9_SetText;
  [_idc+06, 06, _fg, _bg, "Vehicle"] call TSD9_SetText;
  [_idc+07, 07, _fg, _bg, "Gear +"] call TSD9_SetText;
  [_idc+08, 08, _fg, _bg, "Score"] call TSD9_SetText;
  /*
  [_idc+09, 09, _fg, _bg, "Work"] call TSD9_SetText;
  [_idc+10, 10, _fg, _bg, "Kills"] call TSD9_SetText;
  [_idc+11, 11, _fg, _bg, "Deaths"] call TSD9_SetText;
  [_idc+12, 12, _fg, _bg, "TK's"] call TSD9_SetText;
  */
  [_idc+13, 13, _fg, _bg, "Command"] call TSD9_SetText;
  [_idc+14, 14, _fg, _bg, "Requires +"] call TSD9_SetText;
  [_idc+15, 15, _fg, _bg, "Pos"] call TSD9_SetText;
  [_idc+16, 16, _fg, _bg, "SL Prox"] call TSD9_SetText;
  [_idc+17, 17, _fg, _bg, "My Prox"] call TSD9_SetText;
  [_idc+18, 18, _fg, _bg, "Target"] call TSD9_SetText;
  [_idc+19, 19, _fg, TSD9_color_default, [_player,"test1","test2"]] call TSD9_SetComboButton;
  buttonSetAction [_idc+19, ""];

  if ((TSD9_Page == "Group")) then 
  {

        [_idc+19, 19, _fg, TSD9_color_default, "Switch"] call TSD9_SetText;
        buttonSetAction [_idc+19, "[] call TSD9_DrawPageB"]; 

  };    
  
  
};
//----------------------
TSD9_ConfigTitleRowB =
{
  _row = 0;
  _idc = [_row] call TSD9_GetRowIdc;

  _fg = TSD9_color_default;
  _bg = TSD9_color_default;

  [_idc+01, 01, _fg, _bg, "+/-"] call TSD9_SetText;
  [_idc+02, 02, _fg, _bg, "#"] call TSD9_SetText;
  [_idc+03, 03, _fg, _bg, "Name"] call TSD9_SetText;
  [_idc+04, 04, _fg, _bg, "Seat"] call TSD9_SetText;
  [_idc+05, 05, _fg, _bg, "Rank"] call TSD9_SetText;
  [_idc+06, 06, _fg, _bg, "Vehicle"] call TSD9_SetText;
  [_idc+07, 07, _fg, _bg, "Gear +"] call TSD9_SetText;
  [_idc+08, 08, _fg, _bg, "Score"] call TSD9_SetText;
  /*
  [_idc+09, 09, _fg, _bg, "Work"] call TSD9_SetText;
  [_idc+10, 10, _fg, _bg, "Kills"] call TSD9_SetText;
  [_idc+11, 11, _fg, _bg, "Deaths"] call TSD9_SetText;
  [_idc+12, 12, _fg, _bg, "TK's"] call TSD9_SetText;
  */
  [_idc+13, 13, _fg, _bg, "Command"] call TSD9_SetText;
  [_idc+14, 14, _fg, _bg, "Requires +"] call TSD9_SetText;
  [_idc+15, 15, _fg, _bg, "Pos"] call TSD9_SetText;
  [_idc+16, 16, _fg, _bg, "SL Prox"] call TSD9_SetText;
  [_idc+17, 17, _fg, _bg, "My Prox"] call TSD9_SetText;
  [_idc+18, 18, _fg, _bg, "Target"] call TSD9_SetText;
  [_idc+19, 19, _fg, TSD9_color_default, ""] call TSD9_SetText;
  buttonSetAction [_idc+19, ""];

  if ((TSD9_Page == "Group")) then 
  {

        [_idc+19, 19, _fg, TSD9_color_default, "Switch"] call TSD9_SetText;
        buttonSetAction [_idc+19, "[] call TSD9_DrawPage"]; 

  };    
  
  
};
//----------------------
TSD9_AddGroup =
{
  _group = _this select 0;
  _row = _this select 1;

  _idc = [_row] call TSD9_GetRowIdc;
  [_row] call TSD9_ShowRow;

  _fg = TSD9_color_default;
  _bg = TSD9_color_groupBG;

  if ((TSD9_Page == "Team") || (TSD9_Page == "Opposition")) then
  {
    buttonSetAction [_idc+01, [_group] call TSD9_CreateCloseGroupButtonAction ];
    [_idc+01, 01, _fg, TSD9_color_default, [_group] call TSD9_GetCloseGroupButtonText ] call TSD9_SetText;
  }
  else
  {
    buttonSetAction [_idc+01, "" ];
    [_idc+01, 01, _fg, TSD9_color_default, "" ] call TSD9_SetText;
  };
  [_idc+02, 02, _fg, _bg, [_group] call TSD9_GetGroupSize ] call TSD9_SetText;
  [_idc+03, 03, _fg, _bg, [_group] call TSD9_GetGroupDesc ] call TSD9_SetText;
  [_idc+04, 04, _fg, _bg, ""] call TSD9_SetText;
  [_idc+05, 05, _fg, _bg, ""] call TSD9_SetText;
  [_idc+06, 06, _fg, _bg, ""] call TSD9_SetText;
  [_idc+07, 07, _fg, _bg, [""]] call TSD9_SetCombo;
  [_idc+08, 08, _fg, _bg, ""] call TSD9_SetText;
  /*
  [_idc+09, 09, _fg, _bg, ""] call TSD9_SetText;
  [_idc+10, 10, _fg, _bg, ""] call TSD9_SetText;
  [_idc+11, 11, _fg, _bg, ""] call TSD9_SetText;
  [_idc+12, 12, _fg, _bg, ""] call TSD9_SetText;
  */
  [_idc+13, 13, _fg, _bg, ""] call TSD9_SetText;
  [_idc+14, 14, _fg, _bg, [""]] call TSD9_SetCombo;
  [_idc+15, 15, _fg, _bg, ""] call TSD9_SetText;
  [_idc+16, 16, _fg, _bg, ""] call TSD9_SetText;
  [_idc+17, 17, _fg, _bg, ""] call TSD9_SetText;
  [_idc+18, 18, _fg, _bg, ""] call TSD9_SetText;
  [_idc+19, 19, _fg, TSD9_color_default, ""] call TSD9_SetText;  
  buttonSetAction [_idc+19, ""];

  if ((TSD9_Page == "Team") || (TSD9_Page == "Group") || (TSD9_Page == "Vehicle")) then 
  {
    if (_group == group player and (count units group player) > 1) then
    {
      [_idc+19, 19, _fg, TSD9_color_default, "New group"] call TSD9_SetText;  
      buttonSetAction [_idc+19, "[] call TSD9_LeaveGroup"]; 
    }
    else
    {
      if (count units _group > 0 and _group != group player/*_group != grpNull*/) then
      {
        [_idc+19, 19, _fg, TSD9_color_default, "Join group"] call TSD9_SetText;  
        buttonSetAction [_idc+19, format["['%1'] call TSD9_JoinGroupByName", _group]];
      };
    };
  };  
};
//----------------------
TSD9_FillStats =
{
  _player = _this select 0;
  _row = _this select 1;
  _id = _this select 2;
  _vehicleDesc = _this select 3; // special empty vehicle seat case
  
  _vehicleDescParamUsed = count _this >= 4;
  _idc = [_row] call TSD9_GetRowIdc;
  [_row] call TSD9_ShowRow;
  
  // special case - "Empty seat" rows
  _nameDesc = "";
  if (_vehicleDescParamUsed) then { _nameDesc = _vehicleDesc } else { _nameDesc = [_player] call TSD9_GetPlayerName};
  //_nameDesc = [_player] call TSD9_GetPlayerName;

  _fg = TSD9_color_default;
  _bg = TSD9_color_default;
  if (_player == player) then { _bg = TSD9_color_playerBG };
  
  buttonSetAction [_idc+01, "" ];
  [_idc+01, 01, _fg, _bg, ""] call TSD9_SetText;
  [_idc+02, 02, _fg, _bg, [_player, _row, _id] call TSD9_GetPlayerIndex ] call TSD9_SetText;
  [_idc+03, 03, _fg, _bg, _nameDesc] call TSD9_SetText;
  [_idc+04, 04, _fg, _bg, [_player, [_player] call TSD9_GetRole] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+05, 05, _fg, _bg, [_player, [_player] call TSD9_GetVehicleType] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+06, 06, _fg, _bg, [_player, [_player] call TSD9_GetVehicleSeat] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+07, 07, _fg, _bg, [_player, [_player] call TSD9_GetSpecialGear] call TSD9_HideOppositionComboInfo ] call TSD9_SetCombo;
  [_idc+08, 08, _fg, _bg, [_player] call TSD9_GetScoreTotal ] call TSD9_SetText;
  /*
  [_idc+09, 09, _fg, _bg, [_player] call TSD9_GetBonusScore ] call TSD9_SetText;
  [_idc+10, 10, _fg, _bg, [_player] call TSD9_GetKills ] call TSD9_SetText;
  [_idc+11, 11, _fg, _bg, [_player] call TSD9_GetDeaths ] call TSD9_SetText;
  [_idc+12, 12, _fg, _bg, [_player] call TSD9_GetTKs ] call TSD9_SetText;
  */
  [_idc+13, 13, _fg, _bg, [_player, [_player] call TSD9_GetCommand] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+14, 14, _fg, _bg, [_player, [_player] call TSD9_GetRequires] call TSD9_HideOppositionComboInfo ] call TSD9_SetCombo;
  [_idc+15, 15, _fg, _bg, [_player, [_player] call TSD9_GetPos] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+16, 16, _fg, _bg, [_player, [_player] call TSD9_GetSLProximity] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+17, 17, _fg, _bg, [_player, [_player] call TSD9_GetMyProximity] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+18, 18, _fg, _bg, [_player, [_player] call TSD9_GetTargetOrThreats] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+19, 19, _fg, TSD9_color_default, ""] call TSD9_SetText;
  buttonSetAction [_idc+19, ""];

  if ((TSD9_Page == "Group") || (TSD9_Page == "Vehicle")) then 
  {
	if ((isPlayer _player) and _player != player) then
	//if ((isPlayer _player)) then
	{
		[_idc+19, 19, _fg, TSD9_color_default, "Drop"] call TSD9_SetText;
		buttonSetAction [_idc+19, format["['%1',thislist] call TSD9_SetDropPlayer", _player]];
		//buttonSetAction [_idc+19, [_player] call TSD9_SetDropPlayer];	
	};
	if (not (isPlayer _player) and _player != player) then
	{
	
		[_idc+19, 19, _fg, TSD9_color_default, "Drop"] call TSD9_SetText;
		buttonSetAction [_idc+19, format["['%1',thislist] call TSD9_SetDropAI", _player]];
		//buttonSetAction [_idc+19, [_player] call TSD9_SetDropAI]; 
	};
  };  

};
//----------------------
TSD9_FillStatsAlt =
{
  _player = _this select 0;
  _row = _this select 1;
  _id = _this select 2;
  _vehicleDesc = _this select 3; // special empty vehicle seat case
  
  _vehicleDescParamUsed = count _this >= 4;
  _idc = [_row] call TSD9_GetRowIdc;
  [_row] call TSD9_ShowRow;
  
  // special case - "Empty seat" rows
  _nameDesc = "";
  if (_vehicleDescParamUsed) then { _nameDesc = _vehicleDesc } else { _nameDesc = [_player] call TSD9_GetPlayerName};
  //_nameDesc = [_player] call TSD9_GetPlayerName;

  _fg = TSD9_color_default;
  _bg = TSD9_color_default;
  if (_player == player) then { _bg = TSD9_color_playerBG };
  
  buttonSetAction [_idc+01, "" ];
  [_idc+01, 01, _fg, _bg, ""] call TSD9_SetText;
  [_idc+02, 02, _fg, _bg, [_player, _row, _id] call TSD9_GetPlayerIndex ] call TSD9_SetText;
  [_idc+03, 03, _fg, _bg, _nameDesc] call TSD9_SetText;
  [_idc+04, 04, _fg, _bg, [_player, [_player] call TSD9_GetRole] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+05, 05, _fg, _bg, [_player, [_player] call TSD9_GetVehicleType] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+06, 06, _fg, _bg, [_player, [_player] call TSD9_GetVehicleSeat] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+07, 07, _fg, _bg, [_player, [_player] call TSD9_GetSpecialGear] call TSD9_HideOppositionComboInfo ] call TSD9_SetCombo;
  [_idc+08, 08, _fg, _bg, [_player] call TSD9_GetScoreTotal ] call TSD9_SetText;
  /*
  [_idc+09, 09, _fg, _bg, [_player] call TSD9_GetBonusScore ] call TSD9_SetText;
  [_idc+10, 10, _fg, _bg, [_player] call TSD9_GetKills ] call TSD9_SetText;
  [_idc+11, 11, _fg, _bg, [_player] call TSD9_GetDeaths ] call TSD9_SetText;
  [_idc+12, 12, _fg, _bg, [_player] call TSD9_GetTKs ] call TSD9_SetText;
  */
  [_idc+13, 13, _fg, _bg, [_player, [_player] call TSD9_GetCommand] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+14, 14, _fg, _bg, [_player, [_player] call TSD9_GetRequires] call TSD9_HideOppositionComboInfo ] call TSD9_SetCombo;
  [_idc+15, 15, _fg, _bg, [_player, [_player] call TSD9_GetPos] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+16, 16, _fg, _bg, [_player, [_player] call TSD9_GetSLProximity] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+17, 17, _fg, _bg, [_player, [_player] call TSD9_GetMyProximity] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+18, 18, _fg, _bg, [_player, [_player] call TSD9_GetTargetOrThreats] call TSD9_HideOppositionInfo ] call TSD9_SetText;
  [_idc+19, 19, _fg, TSD9_color_default, ""] call TSD9_SetText;
  buttonSetAction [_idc+19, ""];

  if ((TSD9_Page == "Team") || (TSD9_Page == "Group") || (TSD9_Page == "Vehicle")) then 
  {
    if (_player == player) then
    {
      _TL_is_AI = (!(isPlayer (leader player)));
      if (_TL_is_AI) then
      {
        [_idc+19, 19, _fg, TSD9_color_default, "Go TL"] call TSD9_SetText;
        buttonSetAction [_idc+19, "[] call TSD9_SetNewTLForAITeamLeader"];  
      };
    }
    else
    {
      if ((player == leader player) && (group _player == group player) && (!_vehicleDescParamUsed) && isPlayer _player) then
      {
        [_idc+19, 19, _fg, TSD9_color_default, "New TL"] call TSD9_SetText;
        buttonSetAction [_idc+19, format["['%1'] call TSD9_SetNewTeamLeaderByName", _player]];
      };
    };
  };  

};
//-----------------------------------------------------------------------------
//---- Group/Unit/Vehicle processing functions
//-----------------------------------------------------------------------------
TSD9_GetAllGroupsFromUnits =
{
  _AllUnits = _this select 0;

  _AllGroups = [];
  {
    _group = group _x;
    if ((!(_group in _AllGroups)) && (_group != grpNull)) then 
      { _AllGroups = _AllGroups + [_group] };
    } forEach _AllUnits;
  _AllGroups;
};
//----------------------
// currently only sorts the first 26 groups on any side
TSD9_SortGroupsArray =
{
  _GroupArray = _this select 0;
  
  _Result = [];
  {
    _SideStr = _x;
    {
      _Letter = _x;
      _GroupStr = format["%1 1-1-%2", _SideStr, _Letter]; // Eg: "WEST 1-1-A"
      {
        //if (_GroupStr (object) in _GroupArray) then 
        _Group = _x;
        if (_GroupStr == format["%1", _Group]) then 
        { 
          _Result = _Result + [_Group];
          _GroupArray = _GroupArray - [_Group];
        };
      } forEach _GroupArray;
    } forEach ["A","B","C","D","E","F","G","H","I","J","K","L","M"/*,"N","O","P","Q","R","S","T","U","V","W","X","Y","Z"*/];
  } forEach ["WEST", "EAST", "GUER", "CIV"];
  
  _Result = _Result+_GroupArray; // add remaining unknown group id's to array
  
  _Result;
};
//----------------------
TSD9_FillGroups =
{
  _AllUnitsOrVehicle = _this select 0;
  _pageReqd = _this select 1;

  /*
  _control = TSD9_display displayCtrl _idc2;
  ctrlSetText [99, "Loading"]; // doesn't show until redrawn
  */

  [] call TSD9_ConfigTitleRow;
  
  _row = 1;
  _reservedRows = 1;
  _lastRow = TSD9_ROWS-1-_reservedRows;

  //---------------------------------
  if ((TSD9_Page == "Team") || (TSD9_Page == "Opposition") || (TSD9_Page == "Group")) then
  {
    _AllUnits = _AllUnitsOrVehicle;
    _AllGroups = [_AllUnits] call TSD9_GetAllGroupsFromUnits;

    // Sort group object list
    /*
    _fn_SortBubble = compile preprocessFile "SortBubble.sqf";
    _ok = [_AllGroups, "_element"] call _fn_SortBubble;
    */
    _AllGroups = [_AllGroups] call TSD9_SortGroupsArray;

    // process all groups
    {
      _group = _x;
      if ( (count units _group > 0) && 
          (
          ((TSD9_Page == "Team") && (side _group == playerSide)) || 
          ((TSD9_Page == "Opposition") && (side _group != playerSide)) || 
          (TSD9_Page == "Group") 
          )
        ) then // determines which sides to include
      {
        [_group, _row] call TSD9_AddGroup;
        _row = _row + 1;

        // display all units for "Group", but only display "open" groups for "Team"
        if (
            (TSD9_Page == "Group") || 
            (
              ((TSD9_Page == "Team") || (TSD9_Page == "Opposition")) && 
              !(format["%1", _group] in TSD9_ClosedGroups)
            )
          ) then
        {
          // process all units in group
          _units = units _group;
          _id = 1;
          {
            if (_row < _lastRow) then
            {
              [_x, _row, _id] call TSD9_FillStats;
              _row = _row + 1;
              _id = _id + 1;
            };
          } forEach _units;
        };
      };
      
    } forEach _AllGroups;
  };  
  //---------------------------------
  if (TSD9_Page == "Vehicle") then
  {
    _vehicle = _AllUnitsOrVehicle;
    _AllUnits = crew _vehicle;
    _AllGroups = [_AllUnits] call TSD9_GetAllGroupsFromUnits;
    _id = 0;

    // process all groups
    {
      _group = _x;
      [_group, _row] call TSD9_AddGroup;
      _row = _row + 1;

      // process all units in group
      _id = 1;
      {
        if (_row < _lastRow) then
        {
          if (_x in (units _group)) then
          {
            [_x, _row, _id] call TSD9_FillStats;
            _row = _row + 1;
            _id = _id + 1;
          };
        };
      } forEach _AllUnits;
      
    } forEach _AllGroups;
    
    // add all vacant seats
    _dr = _vehicle emptyPositions "driver";
    _gu = _vehicle emptyPositions "gunner";
    _co = _vehicle emptyPositions "commander";
    _ca = _vehicle emptyPositions "cargo";
    if ((_dr > 0) || (_gu > 0) || (_co > 0) || (_ca > 0)) then
    {
      [grpNull, _row] call TSD9_AddGroup;
      _row = _row + 1;
      _id = 1; 

      _drType = ""; 
      if (_vehicle isKindOf "Air") then { _drType = "Pilot" } else { _drType = "Driver" };
      {
        _seatCount = _x select 0;
        _seatName = _x select 1;
        if ( (_seatCount > 0)) then 
        {
          // this does not yet detect multiple gunners, etc, but instead adds secondary gunners to passenger list
          for "_i" from 0 to (_seatCount - 1) do
          {
            [_vehicle, _row, _id, "--No "+_seatName+"--"] call TSD9_FillStats;
            _row = _row + 1; 
            _id = _id + 1; 
          };
        };
      } forEach [[_dr, _drType], [_gu, "Gunner"], [_co, "Commander"]];

      for "_i" from 0 to (_ca - 1) do
      {    
        [_vehicle, _row, _id, format["--No Passenger (%1)--", 1+_i]] call TSD9_FillStats; 
        _row = _row + 1;
        _id = _id + 1;
      };
    };
  };
  //---------------------------------
  
  // hide unused cell rows
  while { _row < _lastRow+_reservedRows } do
  {
    [_row] call TSD9_HideRow;
    _row = _row + 1;
  };

  //ctrlSetText [99, ""];
};  
//----------------------
TSD9_FillGroupsB =
{
  _AllUnitsOrVehicle = _this select 0;
  _pageReqd = _this select 1;

  /*
  _control = TSD9_display displayCtrl _idc2;
  ctrlSetText [99, "Loading"]; // doesn't show until redrawn
  */

  [] call TSD9_ConfigTitleRowB;
  
  _row = 1;
  _reservedRows = 1;
  _lastRow = TSD9_ROWS-1-_reservedRows;

  //---------------------------------
  if ((TSD9_Page == "Team") || (TSD9_Page == "Opposition") || (TSD9_Page == "Group")) then
  {
    _AllUnits = _AllUnitsOrVehicle;
    _AllGroups = [_AllUnits] call TSD9_GetAllGroupsFromUnits;

    // Sort group object list
    /*
    _fn_SortBubble = compile preprocessFile "SortBubble.sqf";
    _ok = [_AllGroups, "_element"] call _fn_SortBubble;
    */
    _AllGroups = [_AllGroups] call TSD9_SortGroupsArray;

    // process all groups
    {
      _group = _x;
      if ( (count units _group > 0) && 
          (
          ((TSD9_Page == "Team") && (side _group == playerSide)) || 
          ((TSD9_Page == "Opposition") && (side _group != playerSide)) || 
          (TSD9_Page == "Group") 
          )
        ) then // determines which sides to include
      {
        [_group, _row] call TSD9_AddGroup;
        _row = _row + 1;

        // display all units for "Group", but only display "open" groups for "Team"
        if (
            (TSD9_Page == "Group") || 
            (
              ((TSD9_Page == "Team") || (TSD9_Page == "Opposition")) && 
              !(format["%1", _group] in TSD9_ClosedGroups)
            )
          ) then
        {
          // process all units in group
          _units = units _group;
          _id = 1;
          {
            if (_row < _lastRow) then
            {
              [_x, _row, _id] call TSD9_FillStatsAlt;
              _row = _row + 1;
              _id = _id + 1;
            };
          } forEach _units;
        };
      };
      
    } forEach _AllGroups;
  }; 
  //---------------------------------
  if (TSD9_Page == "Vehicle") then
  {
    _vehicle = _AllUnitsOrVehicle;
    _AllUnits = crew _vehicle;
    _AllGroups = [_AllUnits] call TSD9_GetAllGroupsFromUnits;
    _id = 0;

    // process all groups
    {
      _group = _x;
      [_group, _row] call TSD9_AddGroup;
      _row = _row + 1;

      // process all units in group
      _id = 1;
      {
        if (_row < _lastRow) then
        {
          if (_x in (units _group)) then
          {
            [_x, _row, _id] call TSD9_FillStats;
            _row = _row + 1;
            _id = _id + 1;
          };
        };
      } forEach _AllUnits;
      
    } forEach _AllGroups;
    
    // add all vacant seats
    _dr = _vehicle emptyPositions "driver";
    _gu = _vehicle emptyPositions "gunner";
    _co = _vehicle emptyPositions "commander";
    _ca = _vehicle emptyPositions "cargo";
    if ((_dr > 0) || (_gu > 0) || (_co > 0) || (_ca > 0)) then
    {
      [grpNull, _row] call TSD9_AddGroup;
      _row = _row + 1;
      _id = 1; 

      _drType = ""; 
      if (_vehicle isKindOf "Air") then { _drType = "Pilot" } else { _drType = "Driver" };
      {
        _seatCount = _x select 0;
        _seatName = _x select 1;
        if ( (_seatCount > 0)) then 
        {
          // this does not yet detect multiple gunners, etc, but instead adds secondary gunners to passenger list
          for "_i" from 0 to (_seatCount - 1) do
          {
            [_vehicle, _row, _id, "--No "+_seatName+"--"] call TSD9_FillStatsAlt;
            _row = _row + 1; 
            _id = _id + 1; 
          };
        };
      } forEach [[_dr, _drType], [_gu, "Gunner"], [_co, "Commander"]];

      for "_i" from 0 to (_ca - 1) do
      {    
        [_vehicle, _row, _id, format["--No Passenger (%1)--", 1+_i]] call TSD9_FillStatsAlt; 
        _row = _row + 1;
        _id = _id + 1;
      };
    };
  };
  //---------------------------------
  
  // hide unused cell rows
  while { _row < _lastRow+_reservedRows } do
  {
    [_row] call TSD9_HideRow;
    _row = _row + 1;
  };

  //ctrlSetText [99, ""];
};
//----------------------
TSD9_DrawPage_MyVehicle =
{
  TSD9_Page = "Vehicle";
  [vehicle player] call TSD9_FillGroups;
};
//----------------------
TSD9_DrawPage_MyGroup =
{
  TSD9_Page = "Group";
  [[player]] call TSD9_FillGroups;
};
//----------------------
TSD9_DrawPage_MyGroupB =
{
  TSD9_Page = "Group";
  [[player]] call TSD9_FillGroupsB;
};
//----------------------
TSD9_DrawPage_Opposition =
{
  TSD9_Page = "Opposition";
  
  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    "[thislist] call TSD9_FillGroups; ",
    "" ];
};
//----------------------
TSD9_DrawPage_MyTeam =
{
  TSD9_Page = "Team";
  
  _Trig = createTrigger ["EmptyDetector", [0, 0, 0] ];
  _Trig setTriggerActivation ["ANY", "PRESENT", false];
  _Trig setTriggerArea [31000, 31000, 0, true ];
  _Trig setTriggerStatements [ 
    "this", 
    "[thislist] call TSD9_FillGroups; ",
    "" ];
  //_Trig setTriggerType "SWITCH";
  //_Trig setTriggerTimeout [0, 0, 0, false];
};
//----------------------
TSD9_DrawPage =
{
  switch (format["%1", TSD9_Page]) do
  {
    case "Vehicle": { [] call TSD9_DrawPage_MyVehicle };
    case "Group": { [] call TSD9_DrawPage_MyGroup };
    case "Opposition": { [] call TSD9_DrawPage_Opposition };
    default { [] call TSD9_DrawPage_MyTeam };
  };  
};
TSD9_DrawPageB =
{
  switch (format["%1", TSD9_Page]) do
  {
    case "Vehicle": { [] call TSD9_DrawPage_MyVehicle };
    case "Group": { [] call TSD9_DrawPage_MyGroupB };
    case "Opposition": { [] call TSD9_DrawPage_Opposition };
    default { [] call TSD9_DrawPage_MyTeam };
  };  
};
//-----------------------------------------------------------------------------
//---- Init
//-----------------------------------------------------------------------------

//closeDialog 0;
_ok = createDialog "DrE_TeamStatusDialog";
_ad=finddisplay 385;
_ad displaySetEventHandler["KeyDown", "closeDialog 0;closeDialog 1;"];


if !(_ok) then { hint "createDialog failed" };
TSD9_display = findDisplay TSD9_TeamStatusDialogIDD; // class TSD9_TeamStatusDialog: idd = 385; TSD9_TeamStatusDialogIDD

_varA = _this select 3;


if ((_varA select 0) == 1) then { TSD9_Page = "Team" };
if ((_varA select 0)  == 2) then { TSD9_Page = "Group" };
if ((_varA select 0)  == 3) then { TSD9_Page = "Vehicle" };
if ((_varA select 0)  == 4) then { TSD9_Page = "Opposition"};

if ((_varA select 1)  == 1) then {ctrlShow [TSD9_MyGroupButton, false];ctrlShow [TSD9_VehicleButton, false];ctrlShow [TSD9_OppositionButtonIDC, false];};
if ((_varA select 1)  == 2) then { ctrlShow [TSD9_MyTeamButtonIDC, false];ctrlShow [TSD9_OppositionButtonIDC, false];};



//buttonSetAction [_idc+19, ""];

[] call TSD9_DrawPage;
