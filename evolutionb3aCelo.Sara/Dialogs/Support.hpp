// Description: Recruit AI Soldier dialog
// By: Dr Eyeball
// Version: 1.0 (June 2007)
//-----------------------------------------------------------------------------
// SPI9_ is the unique prefix associated with all unique classes for this dialog.

//-----------------------------------------------------------------------------
// IDD's & IDC's
//-----------------------------------------------------------------------------
#define SPI9_IDD_RecruitSoldierDialog 396

#define SPI9_IDC_ListBox 891
#define SPI9_IDC_Picture 893
#define SPI9_IDC_Picture2 894
#define SPI9_IDC_OkButton 896
#define SPI9_IDC_CloseButton 897
#define SPI9_IDC_StructuredTextCaption 899
#define SPI9_IDC_StructuredText 900
#define SPI9_X 0.22
#define SPI9_Y 0.21

//-----------------------------------------------------------------------------
// Personalisation - Custom modifications to the standard control classes
//-----------------------------------------------------------------------------

class SPI9_Button: RscButton
{
  x = SPI9_X + 1*Dlg_COLWIDTH;
  y = SPI9_Y + 0.1;
  w = 0.1;
};

class SPI9_BaselineButton: SPI9_Button
{
  w = 0.15;
  y = 1.0-0.21-Dlg_CONTROLHGT-0.01; // last row
};

class SPI9_Caption: Dlg_Caption
{
};

//-----------------------------------------------------------------------------
// Main dialog
//-----------------------------------------------------------------------------
class SPI9_RecruitSoldierDialog
{
  idd = SPI9_IDD_RecruitSoldierDialog;

  movingEnable = true;
  controlsBackground[] = { SPI9_Background, SPI9_Frame };

  class SPI9_Background: Dlg_FullBackground
  {
    x = SPI9_X;
    y = SPI9_Y;
    w = 0.56;
    h = 0.58
  };

  class SPI9_Frame: Dlg_FullBackgroundFrame
  {
    text = " Request Ordnance ";
    x = SPI9_X;
    y = SPI9_Y;
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
    SPI9_ListBoxCaption,
    SPI9_ListBox,

    SPI9_PictureCaption,
    //SPI9_Picture,

    //SPI9_Picture2Caption,
    //SPI9_Picture2,

    SPI9_TextCaption,
    SPI9_StructuredText,

    SPI9_OkButton,
    SPI9_CloseButton
  };
  //---------------------------------------------
  // captions
  class SPI9_ListBoxCaption: SPI9_Caption
  {
    x = SPI9_X + 0.01;
    y = SPI9_Y + 0.03;
    w = 0.20;
    text = "Ordnance";
  };
  /*
  class SPI9_PictureCaption: SPI9_Caption
  {
  	x	= SPI9_X + 0.22;
  	y	= SPI9_Y + 0.03;
    w = 0.33;
    text = "Weapon";
  };

  class SPI9_Picture2Caption: SPI9_Caption
  {
  	x	= SPI9_X + 0.22 + 0.165;
    y = SPI9_Y + 0.07 + 0.22 + 0.02;
    w = 0.165;
    text = "Gear/Ammo";
  };
    */
	class SPI9_PictureCaption: RscMapControl
	{
		idc = 858;
		colorBackground[] = {1,1,1,1};
		colorSea[] = {0.56,0.8,0.98,0.5};
  		x	= SPI9_X + 0.22;
  		y	= SPI9_Y + 0.03;
   		 w = 0.33;
		h = 0.48;
		default = true;
	};

  class SPI9_TextCaption: SPI9_Caption
  {
    idc = SPI9_IDC_StructuredTextCaption;
  	x = SPI9_X + 0.01;
    y = SPI9_Y + 0.07 + 0.22 + 0.02;
    w = 0.20;
    text = "Description";
  };
  //---------------------------------------------
  // Controls
  class SPI9_ListBox: RscListBox
  {
    idc = SPI9_IDC_ListBox;
    x = SPI9_X + 0.01;
    y = SPI9_Y + 0.07;
    w = 0.20;
    h = 0.22;
    //text = "";
    columns[] = {0.05, 0.05};

    onLBSelChanged = "[_this] call SPI9_Select";
    onLBDblClick = "[_this] call SPI9_OkButton";
  };
  class SPI9_Picture: RscPicture
  {
    idc = SPI9_IDC_Picture;
  	x	= SPI9_X + 0.22;
  	y	= SPI9_Y + 0.07;
    w = 0.33;
    h = 0.22;
  };
  /*
  class SPI9_Picture2: RscPicture
  {
    idc = SPI9_IDC_Picture2;
  	x	= SPI9_X + 0.22 + 0.165;
    y = SPI9_Y + 0.07 + 0.22 + 0.01 + 0.04 + 0.01;
    w = 0.165;
    h = 0.22;
  };
  */
  class SPI9_StructuredText: RscStructuredText
  {
    idc = SPI9_IDC_StructuredText;
  	x = SPI9_X + 0.01;
    y = SPI9_Y + 0.07 + 0.22 + 0.01 + 0.04 + 0.01;
    w = 0.20;
    h = 0.16;
    text = "This soldier class is equiped with a <t color='#f00000ff'>m203</t> grenade launcher.";
  };
  //---------------------------------------------
  // buttons
  class SPI9_OkButton: SPI9_BaselineButton
  {
  	idc = SPI9_IDC_OkButton;
  	x = SPI9_X + 03*Dlg_COLWIDTH;
  	text = "Confirm";
  	action = "[] call SPI9_OkButton";
  };
  class SPI9_CloseButton: SPI9_BaselineButton
  {
  	idc = SPI9_IDC_CloseButton;
  	x = SPI9_X + 19*Dlg_COLWIDTH;
  	text = "Close";
  	action = "closeDialog 0";
  };
  //---------------------------------------------
};
