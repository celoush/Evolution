// Description: Recruit AI Soldier dialog
// By: Dr Eyeball
// Version: 1.0 (June 2007)
//-----------------------------------------------------------------------------
// RAI9_ is the unique prefix associated with all unique classes for this dialog.

//-----------------------------------------------------------------------------
// IDD's & IDC's
//-----------------------------------------------------------------------------
#define RAI9_IDD_RecruitSoldierDialog 396

#define RAI9_IDC_ListBox 891
#define RAI9_IDC_Picture 893
#define RAI9_IDC_Picture2 894
#define RAI9_IDC_OkButton 896
#define RAI9_IDC_CloseButton 897
#define RAI9_IDC_StructuredTextCaption 899
#define RAI9_IDC_StructuredText 900
#define RAI9_X 0.22
#define RAI9_Y 0.21

//-----------------------------------------------------------------------------
// Personalisation - Custom modifications to the standard control classes
//-----------------------------------------------------------------------------

class RAI9_Button: RscButton
{
  x = RAI9_X + 1*Dlg_COLWIDTH;
  y = RAI9_Y + 0.1;
  w = 0.1;
};

class RAI9_BaselineButton: RAI9_Button
{
  w = 0.15;
  y = 1.0-0.21-Dlg_CONTROLHGT-0.01; // last row
};

class RAI9_Caption: Dlg_Caption
{
};

//-----------------------------------------------------------------------------
// Main dialog
//-----------------------------------------------------------------------------
class RAI9_RecruitSoldierDialog
{
  idd = RAI9_IDD_RecruitSoldierDialog;

  movingEnable = true;
  controlsBackground[] = { RAI9_Background, RAI9_Frame };

  class RAI9_Background: Dlg_FullBackground
  {
    x = RAI9_X;
    y = RAI9_Y;
    w = 0.56;
    h = 0.58
  };

  class RAI9_Frame: Dlg_FullBackgroundFrame
  {
    text = " Recruit Soldier ";
    x = RAI9_X;
    y = RAI9_Y;
    w = 0.56;
    h = 0.58
  };

  //---------------------------------------------
  objects[] = 
  { 
  };
  
  controls[] = 
  {
    //---------------------------------------------
    RAI9_ListBoxCaption,
    RAI9_ListBox,
    
    RAI9_PictureCaption,
    RAI9_Picture,

    RAI9_Picture2Caption,
    RAI9_Picture2,

    RAI9_TextCaption,
    RAI9_StructuredText,

    RAI9_OkButton,
    RAI9_CloseButton
  };
  //---------------------------------------------
  // captions
  class RAI9_ListBoxCaption: RAI9_Caption
  {
    x = RAI9_X + 0.01;
    y = RAI9_Y + 0.03;
    w = 0.20;
    text = "Soldier Class";
  };
  class RAI9_PictureCaption: RAI9_Caption
  {
  	x	= RAI9_X + 0.22; 
  	y	= RAI9_Y + 0.03; 
    w = 0.33;
    text = "Weapon";
  };
  class RAI9_Picture2Caption: RAI9_Caption
  {
  	x	= RAI9_X + 0.22 + 0.165;
    y = RAI9_Y + 0.07 + 0.22 + 0.02;
    w = 0.165;
    text = "Gear/Ammo";
  };
  class RAI9_TextCaption: RAI9_Caption
  {
    idc = RAI9_IDC_StructuredTextCaption;
  	x = RAI9_X + 0.01;
    y = RAI9_Y + 0.07 + 0.22 + 0.02;
    w = 0.365;
    text = "Description";
  };
  //---------------------------------------------
  // Controls
  class RAI9_ListBox: RscListBox
  { 
    idc = RAI9_IDC_ListBox;
    x = RAI9_X + 0.01;
    y = RAI9_Y + 0.07;
    w = 0.20;
    h = 0.22;
    //text = "";
    columns[] = {0.05, 0.05};
  	
    onLBSelChanged = "[_this] call RAI9_Select";
    onLBDblClick = "[_this] call RAI9_OkButton";
  };  
  class RAI9_Picture: RscPicture 
  { 
    idc = RAI9_IDC_Picture;
  	x	= RAI9_X + 0.22; 
  	y	= RAI9_Y + 0.07; 
    w = 0.33;
    h = 0.22;
  };
  class RAI9_Picture2: RscPicture 
  { 
    idc = RAI9_IDC_Picture2;
  	x	= RAI9_X + 0.22 + 0.165;
    y = RAI9_Y + 0.07 + 0.22 + 0.01 + 0.04 + 0.01;
    w = 0.165;
    h = 0.22;
  };
  class RAI9_StructuredText: RscStructuredText
  {
    idc = RAI9_IDC_StructuredText;
  	x = RAI9_X + 0.01;
    y = RAI9_Y + 0.07 + 0.22 + 0.01 + 0.04 + 0.01;
    w = 0.365;
    h = 0.16;
    text = "This soldier class is equiped with a <t color='#f00000ff'>m203</t> grenade launcher.";
  };
  //---------------------------------------------
  // buttons
  class RAI9_OkButton: RAI9_BaselineButton
  {
  	idc = RAI9_IDC_OkButton;
  	x = RAI9_X + 03*Dlg_COLWIDTH;
  	text = "Recruit";
  	action = "[] call RAI9_OkButton";
  };
  class RAI9_CloseButton: RAI9_BaselineButton
  {
  	idc = RAI9_IDC_CloseButton;
  	x = RAI9_X + 19*Dlg_COLWIDTH;
  	text = "Cancel";
  	action = "closeDialog 0";
  };
  //---------------------------------------------
};
