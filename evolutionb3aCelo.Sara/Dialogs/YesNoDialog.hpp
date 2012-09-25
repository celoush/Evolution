// Desc: A Yes/No dialog
// By: Dr Eyeball
// Version: 1.0 (May 2007)
//-----------------------------------------------------------------------------
// YN3_ is the unique prefix associated with all unique classes for this dialog.

//-----------------------------------------------------------------------------
// IDD's & IDC's
//-----------------------------------------------------------------------------
#define YN3_IDD_YesNoDialog 390

#define YN3_IDC_Text 894
#define YN3_IDC_YesButton 896
#define YN3_IDC_NoButton 897

#define YN3_dlg_x 0.30
#define YN3_dlg_y 0.40
#define YN3_dlg_wid 0.40
#define YN3_dlg_hgt 0.20

//-----------------------------------------------------------------------------
// Personalisation - Custom modifications to the standard control classes
//-----------------------------------------------------------------------------

class YN3_Button: RscButton
{
  x = 1.5*Dlg_COLWIDTH;
  y = YN3_dlg_y+YN3_dlg_hgt-(1.5*Dlg_CONTROLHGT);
  w = 0.4*YN3_dlg_wid;
  h = Dlg_CONTROLHGT*2;
};

//-----------------------------------------------------------------------------
// Main dialog
//-----------------------------------------------------------------------------
class YN3_YesNoDialog
{
  idd = YN3_IDD_YesNoDialog;

  movingEnable = true;
  controlsBackground[] = { YN3_Background /*, YN3_Frame*/ };

  class YN3_Background: Dlg_FullBackground
  {
    colorBackground[] = {Dlg_ColorScheme_WindowBackground, 1};
    x = YN3_dlg_x;
    y = YN3_dlg_y;
    w = YN3_dlg_wid;
    h = YN3_dlg_hgt;
  };

  objects[] = 
  { 
  };
  
  controls[] = 
  {
    YN3_Caption,
//    YN3_StructuredText,

    YN3_YesButton,
    YN3_NoButton
  };
  //---------------------------------------------
  // Controls
  class YN3_Caption: Dlg_Caption
  {
    x = YN3_dlg_x; 
    y = YN3_dlg_y;
    w = YN3_dlg_wid;
    text = "Respawn Dialog";
  };
  class YN3_StructuredText: RscStructuredText //RscMemo //RscStructuredText
  {
  	idc = YN3_IDC_Text;
  	x	= YN3_dlg_x; 
    y = YN3_dlg_y+Dlg_CONTROLHGT;
    w = YN3_dlg_wid;
    h = 0.12; // YN3_dlg_hgt-3*Dlg_CONTROLHGT
    text = "Select Respawn Area";
  };
  //---------------------------------------------
  // buttons
  class YN3_YesButton: YN3_Button
  {
  	idc = YN3_IDC_YesButton;
  	y = YN3_dlg_y + 0.20*YN3_dlg_hgt;
  	x = YN3_dlg_x + 0.30*YN3_dlg_wid;
  	text = "MHQ";
  	action = "[] call YN3_YesButton";
  };
  class YN3_NoButton: YN3_Button
  {
  	idc = YN3_IDC_NoButton;
  	y = YN3_dlg_y + 0.60*YN3_dlg_hgt;
  	x = YN3_dlg_x + 0.30*YN3_dlg_wid;
  	text = "Letiště";
  	action = "[] call YN3_NoButton";
  };
  //---------------------------------------------
};
