// Desc: Team Status Dialog
// Features: Group joining, Team Leader selection, statistics for team/group/vehicle/opposition
// By: Dr Eyeball
// Purpose: Class descriptions for dialog control
// Version: 1.0 (23 Mar 2007)
//-----------------------------------------------------------------------------
// TSD9_ is the unique prefix associated with all unique classes for the TeamStatus dialog.

#define TSD9_TeamStatusDialogIDD 385

#define TSD9_FontM "TahomaB"
#define TSD9_FontHTML "TahomaB"
//"CourierNewB64" "TahomaB" "Bitstream" "Zeppelin32"

#define TSD9_ST_HPOS       0x0F
#define TSD9_ST_LEFT       0
#define TSD9_ST_RIGHT      1
#define TSD9_ST_CENTER     2
#define TSD9_ST_FRAME      64

#define TSD9_CT_STATIC     0
#define TSD9_CT_BUTTON	    1
#define TSD9_CT_EDIT       2
#define TSD9_CT_SLIDER	    3
#define TSD9_CT_COMBO      4
#define TSD9_CT_LISTBOX    5
#define TSD9_CT_ACTIVETEXT 11
#define TSD9_CT_3DSTATIC     20
#define TSD9_CT_3DACTIVETEXT 21
#define TSD9_CT_3DLISTBOX    22
#define TSD9_CT_3DHTML       23
#define TSD9_CT_3DSLIDER     24
#define TSD9_CT_3DEDIT       25
#define TSD9_CT_OBJECT	           80
#define TSD9_CT_OBJECT_ZOOM       81
#define TSD9_CT_OBJECT_CONTAINER  82
#define TSD9_CT_OBJECT_CONT_ANIM  83

#define TSD9_color_Black {0, 0, 0, 1}
#define TSD9_color_White {1, 1, 1, 1}
#define TSD9_color_White20 {1, 1, 1, 0.2}
#define TSD9_color_White50 {1, 1, 1, 0.5}
#define TSD9_color_Red {1, 0, 0, 1}
#define TSD9_color_paleBlue {0.41, 0.33, 0.39, 0.5}
#define TSD9_color_paleRed {0.7, 0.3, 0.3, 0.7}
#define TSD9_color_Aqua10 {0, 0, 0, 0.1}
#define TSD9_color_Yellow40 {0, 0, 0, 0.4}
#define TSD9_color_Red10 {1, 0, 0, 0.1}
#define TSD9_color_Pink20 {0, 0, 0, 0.2}

#define TSD9_color_Gray_10 {0.1, 0.1, 0.1, 0.5}
#define TSD9_color_Gray_20 {0.2, 0.2, 0.2, 0.5}
#define TSD9_color_Gray_30 {0.3, 0.3, 0.3, 0.5}
#define TSD9_color_Gray_40 {0.4, 0.4, 0.4, 0.5}
#define TSD9_color_Gray_50 {0.5, 0.5, 0.5, 0.5}
#define TSD9_color_Gray_40_75 {0.4, 0.4, 0.4, 0.75}

//#define TSD9_color_textFG TSD9_color_white
//#define TSD9_color_group TSD9_color_paleBlue2
//#define TSD9_color_player TSD9_color_paleyellow
#define TSD9_color_cellABG {0.2, 0.2, 0.2, 0.0}
#define TSD9_color_cellBBG {0.3, 0.3, 0.3, 0.0}

#define TSD9_ROWS 42

#define TSD9_ROWHGT ((100/(TSD9_ROWS+1))/100) // +1 reserves bottom row
#define TSD9_FIRSTROW (1*TSD9_ROWHGT)

#define TSD9_ROWHGT_MOD 1.0
#define TSD9_TEXTHGT_MOD 1.3

// Base Column Widths
#define BCW_1 4 //left border button
#define BCW_2 5 //#
#define BCW_3 25 //name
#define BCW_4 12 //vehicle
#define BCW_5 15 //seat
#define BCW_6 7 //role
#define BCW_7 10 //gear
#define BCW_8 8 //score
#define BCW_9 0 // 8 //work - can't obtain info - removed temporarily
#define BCW_10 0 // 7 //kills - can't obtain info - removed temporarily
#define BCW_11 0 // 7 //deaths - can't obtain info - removed temporarily
#define BCW_12 0 // 6 //TKs - can't obtain info - removed temporarily
#define BCW_13 14 //cmd
#define BCW_18 15 //Target
#define BCW_14 12 //req
#define BCW_15 8 //pos
#define BCW_16 10 //SL prox
#define BCW_17 10 //My prox
#define BCW_19 12 //right border

#define BCW_Total (BCW_1+BCW_2+BCW_3+BCW_4+BCW_5+BCW_6+BCW_7+BCW_8+BCW_9+BCW_10+BCW_11+BCW_12+BCW_13+BCW_14+BCW_15+BCW_16+BCW_17+BCW_18+BCW_19)

// Column Width Perctages
#define CWP_1 (BCW_1/BCW_Total)
#define CWP_2 (BCW_2/BCW_Total)
#define CWP_3 (BCW_3/BCW_Total)
#define CWP_4 (BCW_4/BCW_Total)
#define CWP_5 (BCW_5/BCW_Total)
#define CWP_6 (BCW_6/BCW_Total)
#define CWP_7 (BCW_7/BCW_Total)
#define CWP_8 (BCW_8/BCW_Total)
#define CWP_9 (BCW_9/BCW_Total)
#define CWP_10 (BCW_10/BCW_Total)
#define CWP_11 (BCW_11/BCW_Total)
#define CWP_12 (BCW_12/BCW_Total)
#define CWP_13 (BCW_13/BCW_Total)
#define CWP_14 (BCW_14/BCW_Total)
#define CWP_15 (BCW_15/BCW_Total)
#define CWP_16 (BCW_16/BCW_Total)
#define CWP_17 (BCW_17/BCW_Total)
#define CWP_18 (BCW_18/BCW_Total)
#define CWP_19 (BCW_19/BCW_Total)

//-----------------------------------------------------------------
class TSD9_RscText
{
  type = TSD9_CT_STATIC;
  idc = -1;
  style = TSD9_ST_LEFT;
  colorBackground[] = TSD9_color_Black;
  colorText[] = TSD9_color_White;
  font = TSD9_FontM;
  sizeEx = TSD9_ROWHGT/TSD9_TEXTHGT_MOD;
  h = TSD9_ROWHGT/TSD9_ROWHGT_MOD;
  text = "";
};

class TSD9_RscActiveText
{
  type = TSD9_CT_ACTIVETEXT;
  idc = -1;
  style = TSD9_ST_LEFT;
  color[] = TSD9_color_White;
  colorActive[] = TSD9_color_Red;
  font = TSD9_FontM;
  sizeEx = 0.04/3;
  soundEnter[] = {"ui\ui_over", 0.2, 1};
  soundPush[] = {, 0.2, 1};
  soundClick[] = {"ui\ui_ok", 0.2, 1};
  soundEscape[] = {"ui\ui_cc", 0.2, 1};
  default = false;
};

class TSD9_RscButton
{
  type = TSD9_CT_BUTTON;
  idc = -1;
  style = TSD9_ST_CENTER;

  colorText[] = TSD9_color_White;
  colorDisabled[] = TSD9_color_Aqua10; // added
  colorBackground[] = TSD9_color_Gray_20; // added
  colorBackgroundActive[] = TSD9_color_Yellow40; // added
  colorBackgroundDisabled[] = TSD9_color_Red10; // added
  colorFocused[] = TSD9_color_Black; // added
  colorShadow[] = TSD9_color_Pink20; // added
  colorBorder[] = TSD9_color_White20; // added

  offsetX = 0;
  offsetY = 0;
  offsetPressedX = 0;
  offsetPressedY = 0;
  borderSize = 0.001;
  soundEnter[] = {"ui\ui_ok", 0.2, 1};

  font = TSD9_FontHTML;
  sizeEx = 0.015;
  soundPush[] = {, 0.2, 1};
  soundClick[] = {"ui\ui_ok", 0.2, 1};
  soundEscape[] = {"ui\ui_cc", 0.2, 1};
  default = false;
  text = "";
  action = "";
};

class TSD9_RscEdit
{
 type = TSD9_CT_EDIT;
 idc = -1;
 style = TSD9_ST_LEFT;
 font = TSD9_FontHTML;
 sizeEx = 0.02/3;
 colorText[] = TSD9_color_Black;
 colorSelection[] = TSD9_color_Gray_50;
 autocomplete = false;
 text = "";
};

class TSD9_RscLB_C
{
  style = TSD9_ST_LEFT;
  idc = -1;

  colorText[] = TSD9_color_White;
  colorBackground[] = TSD9_color_Gray_40;
  colorSelect[] = TSD9_color_White;
  colorSelectBackground[] = TSD9_color_Gray_20;
  colorSelect2[] = TSD9_color_White;
  colorSelectBackground2[] = TSD9_color_Gray_40_75;
  colorScrollbar[] = TSD9_color_White;
  color[] = TSD9_color_White;

  font = TSD9_FontHTML;
  sizeEx = TSD9_ROWHGT/TSD9_TEXTHGT_MOD;
  h = TSD9_ROWHGT/TSD9_ROWHGT_MOD; // added
  rowHeight = TSD9_ROWHGT/TSD9_ROWHGT_MOD;

  soundSelect[] = {"ui\ui_cc", 0.2, 1}; // added
  soundExpand[] = {"ui\ui_cc", 0.2, 1}; // added
  soundCollapse[] = {"ui\ui_cc", 0.2, 1}; // added
};

class TSD9_RscListBox : TSD9_RscLB_C
{
  type = TSD9_CT_LISTBOX;
};

class TSD9_RscCombo : TSD9_RscLB_C
{
  type = TSD9_CT_COMBO;
  wholeHeight = 0.3;
};

class TSD9_RscObject
{
	type = TSD9_CT_OBJECT;
	scale = 1.0;
	direction[] = {0, 0, 1};
	up[] = {0, 1, 0};
};

class TSD9_Rsc3DStatic
{
	type = TSD9_CT_3DSTATIC;
	font = TSD9_FontHTML;
	style = TSD9_ST_LEFT;
	selection = "display";
	angle = 0;
	size = 0.04;
	color[] = TSD9_color_Black;
};

/*
class TSD9_RscSliderH
{
  type = TSD9_CT_SLIDER;
  style = TSD9_ST_HPOS;
  color[] = TSD9_color_Gray_20;
  idc = -1;
  sizeEx = 0.025;
};
*/

//-----------------------------------------------------------------
class TSD9_CELL: TSD9_RscText
{
  colorBackground[] = TSD9_color_Black;
  colorText[] = TSD9_color_White;
};

class TSD9_CELLA: TSD9_CELL
{
  colorBackground[] = TSD9_color_cellABG;
};

class TSD9_CELLB: TSD9_CELL
{
  colorBackground[] = TSD9_color_cellBBG;
};

class TSD9_CELLCombo: TSD9_RscCombo
{
};

class TSD9_CELLButton: TSD9_RscButton
{
  x = 0.01;
  y = 0.98;
  w = 0.08;
  h = TSD9_ROWHGT/TSD9_ROWHGT_MOD;
};

class TSD9_MainButton: TSD9_CELLButton
{
  y = 0.98;
  w = 0.08;
};

//-----------------------------------------------------------------
class TSD9_ColBase_01: TSD9_CELLA
{
  w = CWP_1;
  x = 0.0;
};

//---- variation
class TSD9_ColBase_01_Button: TSD9_CELLButton
{
  w = CWP_1;
  x = 0.0;
};

class TSD9_ColBase_02: TSD9_CELLB
{
  w = CWP_2;
  x = 0.0+CWP_1;
};

class TSD9_ColBase_03: TSD9_CELLA
{
  w = CWP_3;
  x = 0.0+CWP_1+CWP_2;
};

class TSD9_ColBase_04: TSD9_CELLB
{
  w = CWP_4;
  x = 0.0+CWP_1+CWP_2+CWP_3;
};

class TSD9_ColBase_05: TSD9_CELLA
{
  w = CWP_5;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4;
};

class TSD9_ColBase_06: TSD9_CELLB
{
  w = CWP_6;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5;
};

class TSD9_ColBase_07: TSD9_CELLCombo
{
  colorBackground[] = TSD9_color_cellABG;
  w = CWP_7;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6;
};

//---- title variation
class TSD9_ColBase_07_combo: TSD9_CELLA
{
  w = CWP_7;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6;
};

class TSD9_ColBase_08: TSD9_CELLB
{
  style = TSD9_ST_RIGHT;
  w = CWP_8;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7;
};

class TSD9_ColBase_09: TSD9_CELLA
{
  style = TSD9_ST_RIGHT;
  w = CWP_9;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8;
};

class TSD9_ColBase_10: TSD9_CELLB
{
  style = TSD9_ST_RIGHT;
  w = CWP_10;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9;
};

class TSD9_ColBase_11: TSD9_CELLA
{
  style = TSD9_ST_RIGHT;
  w = CWP_11;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10;
};

class TSD9_ColBase_12: TSD9_CELLB
{
  style = TSD9_ST_RIGHT;
  w = CWP_12;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11;
};

class TSD9_ColBase_13: TSD9_CELLA
{
  w = CWP_13;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11+CWP_12;
};

class TSD9_ColBase_18: TSD9_CELLB
{
  w = CWP_18;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11+CWP_12+CWP_13;
};

class TSD9_ColBase_14: TSD9_CELLCombo
{
  w = CWP_14;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+ CWP_11+CWP_12+CWP_13+CWP_18;
  colorBackground[] = TSD9_color_cellABG;
};

//---- title variation
class TSD9_ColBase_14_combo: TSD9_CELLA
{
  w = CWP_14;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+ CWP_11+CWP_12+CWP_13+CWP_18;
};

class TSD9_ColBase_15: TSD9_CELLB
{
  w = CWP_15;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+ CWP_11+CWP_12+CWP_13+CWP_18+CWP_14;
};

class TSD9_ColBase_16: TSD9_CELLA
{
  style = TSD9_ST_RIGHT;
  w = CWP_16;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+ CWP_11+CWP_12+CWP_13+CWP_18+CWP_14+CWP_15;
};

class TSD9_ColBase_17: TSD9_CELLB
{
  style = TSD9_ST_RIGHT;
  w = CWP_17;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11+CWP_12+CWP_13+CWP_18+CWP_14+CWP_15+CWP_16;
};

class TSD9_ColBase_19: TSD9_CELLButton
{
  w = CWP_19;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11+CWP_12+CWP_13+CWP_18+CWP_14+CWP_15+CWP_16+CWP_17;
  //x = TSD9_ColBase_18.x + CWP_18;
};

//---- variation
class TSD9_ColBase_19_Button: TSD9_CELLButton
{
  w = CWP_19;
  x = 0.0+CWP_1+CWP_2+CWP_3+CWP_4+CWP_5+CWP_6+CWP_7+CWP_8+CWP_9+CWP_10+CWP_11+CWP_12+CWP_13+CWP_18+CWP_14+CWP_15+CWP_16+CWP_17;
  //text = "New group";
};

//------------------------------------------------
class DrE_TeamStatusDialog
{
  idd = TSD9_TeamStatusDialogIDD;

  movingEnable = true;
  controlsBackground[] = { MY_BACKGROUND, MY_FRAME };

  //---------------------------------------------
  class MY_BACKGROUND : TSD9_RscText
  {
    idc = -1;
    colorBackground[] = TSD9_color_Gray_10;
    text = ;
    x = 0.0;
    y = 0.0;
    w = 1.0;
    h = 1.0;
  };
  class MY_FRAME : TSD9_RscText
  {
    idc = -1;
    style = TSD9_ST_FRAME;
    colorText[] = TSD9_color_White;
    text = "Squad Info";
    font = TSD9_FontHTML;
    sizeEx = 0.02;
    x = 0.0;
    y = 0.0;
    w = 1.0;
    h = 1.0;
  };
  //---------
  objects[] = { };
  controls[] = {

    TSD9_Col_01,
    TSD9_Col_02,
    TSD9_Col_03,
    TSD9_Col_04,
    TSD9_Col_05,
    TSD9_Col_06,
    TSD9_Col_07,
    TSD9_Col_08,
    /*TSD9_Col_09,
    TSD9_Col_10,
    TSD9_Col_11,
    TSD9_Col_12,*/
    TSD9_Col_13,
    TSD9_Col_14,
    TSD9_Col_15,
    TSD9_Col_16,
    TSD9_Col_17,
    TSD9_Col_18,
    TSD9_Col_19,

    TSD9_Col_01_Row_01,
    TSD9_Col_02_Row_01,
    TSD9_Col_03_Row_01,
    TSD9_Col_04_Row_01,
    TSD9_Col_05_Row_01,
    TSD9_Col_06_Row_01,
    TSD9_Col_07_Row_01,
    TSD9_Col_08_Row_01,
    /* TSD9_Col_09_Row_01,
    TSD9_Col_10_Row_01,
    TSD9_Col_11_Row_01,
    TSD9_Col_12_Row_01,
    */ TSD9_Col_13_Row_01,
    TSD9_Col_14_Row_01,
    TSD9_Col_15_Row_01,
    TSD9_Col_16_Row_01,
    TSD9_Col_17_Row_01,
    TSD9_Col_18_Row_01,
    TSD9_Col_19_Row_01,

    TSD9_Col_01_Row_02,
    TSD9_Col_02_Row_02,
    TSD9_Col_03_Row_02,
    TSD9_Col_04_Row_02,
    TSD9_Col_05_Row_02,
    TSD9_Col_06_Row_02,
    TSD9_Col_07_Row_02,
    TSD9_Col_08_Row_02,
    /* TSD9_Col_09_Row_02,
    TSD9_Col_10_Row_02,
    TSD9_Col_11_Row_02,
    TSD9_Col_12_Row_02,
    */ TSD9_Col_13_Row_02,
    TSD9_Col_14_Row_02,
    TSD9_Col_15_Row_02,
    TSD9_Col_16_Row_02,
    TSD9_Col_17_Row_02,
    TSD9_Col_18_Row_02,
    TSD9_Col_19_Row_02,

    TSD9_Col_01_Row_03,
    TSD9_Col_02_Row_03,
    TSD9_Col_03_Row_03,
    TSD9_Col_04_Row_03,
    TSD9_Col_05_Row_03,
    TSD9_Col_06_Row_03,
    TSD9_Col_07_Row_03,
    TSD9_Col_08_Row_03,
    /* TSD9_Col_09_Row_03,
    TSD9_Col_10_Row_03,
    TSD9_Col_11_Row_03,
    TSD9_Col_12_Row_03,
    */ TSD9_Col_13_Row_03,
    TSD9_Col_14_Row_03,
    TSD9_Col_15_Row_03,
    TSD9_Col_16_Row_03,
    TSD9_Col_17_Row_03,
    TSD9_Col_18_Row_03,
    TSD9_Col_19_Row_03,

    TSD9_Col_01_Row_04,
    TSD9_Col_02_Row_04,
    TSD9_Col_03_Row_04,
    TSD9_Col_04_Row_04,
    TSD9_Col_05_Row_04,
    TSD9_Col_06_Row_04,
    TSD9_Col_07_Row_04,
    TSD9_Col_08_Row_04,
    /* TSD9_Col_09_Row_04,
    TSD9_Col_10_Row_04,
    TSD9_Col_11_Row_04,
    TSD9_Col_12_Row_04,
    */ TSD9_Col_13_Row_04,
    TSD9_Col_14_Row_04,
    TSD9_Col_15_Row_04,
    TSD9_Col_16_Row_04,
    TSD9_Col_17_Row_04,
    TSD9_Col_18_Row_04,
    TSD9_Col_19_Row_04,

    TSD9_Col_01_Row_05,
    TSD9_Col_02_Row_05,
    TSD9_Col_03_Row_05,
    TSD9_Col_04_Row_05,
    TSD9_Col_05_Row_05,
    TSD9_Col_06_Row_05,
    TSD9_Col_07_Row_05,
    TSD9_Col_08_Row_05,
    /* TSD9_Col_09_Row_05,
    TSD9_Col_10_Row_05,
    TSD9_Col_11_Row_05,
    TSD9_Col_12_Row_05,
    */ TSD9_Col_13_Row_05,
    TSD9_Col_14_Row_05,
    TSD9_Col_15_Row_05,
    TSD9_Col_16_Row_05,
    TSD9_Col_17_Row_05,
    TSD9_Col_18_Row_05,
    TSD9_Col_19_Row_05,

    TSD9_Col_01_Row_06,
    TSD9_Col_02_Row_06,
    TSD9_Col_03_Row_06,
    TSD9_Col_04_Row_06,
    TSD9_Col_05_Row_06,
    TSD9_Col_06_Row_06,
    TSD9_Col_07_Row_06,
    TSD9_Col_08_Row_06,
    /* TSD9_Col_09_Row_06,
    TSD9_Col_10_Row_06,
    TSD9_Col_11_Row_06,
    TSD9_Col_12_Row_06,
    */ TSD9_Col_13_Row_06,
    TSD9_Col_14_Row_06,
    TSD9_Col_15_Row_06,
    TSD9_Col_16_Row_06,
    TSD9_Col_17_Row_06,
    TSD9_Col_18_Row_06,
    TSD9_Col_19_Row_06,

    TSD9_Col_01_Row_07,
    TSD9_Col_02_Row_07,
    TSD9_Col_03_Row_07,
    TSD9_Col_04_Row_07,
    TSD9_Col_05_Row_07,
    TSD9_Col_06_Row_07,
    TSD9_Col_07_Row_07,
    TSD9_Col_08_Row_07,
    /* TSD9_Col_09_Row_07,
    TSD9_Col_10_Row_07,
    TSD9_Col_11_Row_07,
    TSD9_Col_12_Row_07,
    */ TSD9_Col_13_Row_07,
    TSD9_Col_14_Row_07,
    TSD9_Col_15_Row_07,
    TSD9_Col_16_Row_07,
    TSD9_Col_17_Row_07,
    TSD9_Col_18_Row_07,
    TSD9_Col_19_Row_07,

    TSD9_Col_01_Row_08,
    TSD9_Col_02_Row_08,
    TSD9_Col_03_Row_08,
    TSD9_Col_04_Row_08,
    TSD9_Col_05_Row_08,
    TSD9_Col_06_Row_08,
    TSD9_Col_07_Row_08,
    TSD9_Col_08_Row_08,
    /* TSD9_Col_09_Row_08,
    TSD9_Col_10_Row_08,
    TSD9_Col_11_Row_08,
    TSD9_Col_12_Row_08,
    */ TSD9_Col_13_Row_08,
    TSD9_Col_14_Row_08,
    TSD9_Col_15_Row_08,
    TSD9_Col_16_Row_08,
    TSD9_Col_17_Row_08,
    TSD9_Col_18_Row_08,
    TSD9_Col_19_Row_08,

    TSD9_Col_01_Row_09,
    TSD9_Col_02_Row_09,
    TSD9_Col_03_Row_09,
    TSD9_Col_04_Row_09,
    TSD9_Col_05_Row_09,
    TSD9_Col_06_Row_09,
    TSD9_Col_07_Row_09,
    TSD9_Col_08_Row_09,
    /* TSD9_Col_09_Row_09,
    TSD9_Col_10_Row_09,
    TSD9_Col_11_Row_09,
    TSD9_Col_12_Row_09,
    */ TSD9_Col_13_Row_09,
    TSD9_Col_14_Row_09,
    TSD9_Col_15_Row_09,
    TSD9_Col_16_Row_09,
    TSD9_Col_17_Row_09,
    TSD9_Col_18_Row_09,
    TSD9_Col_19_Row_09,

    TSD9_Col_01_Row_10,
    TSD9_Col_02_Row_10,
    TSD9_Col_03_Row_10,
    TSD9_Col_04_Row_10,
    TSD9_Col_05_Row_10,
    TSD9_Col_06_Row_10,
    TSD9_Col_07_Row_10,
    TSD9_Col_08_Row_10,
    /* TSD9_Col_09_Row_10,
    TSD9_Col_10_Row_10,
    TSD9_Col_11_Row_10,
    TSD9_Col_12_Row_10,
    */ TSD9_Col_13_Row_10,
    TSD9_Col_14_Row_10,
    TSD9_Col_15_Row_10,
    TSD9_Col_16_Row_10,
    TSD9_Col_17_Row_10,
    TSD9_Col_18_Row_10,
    TSD9_Col_19_Row_10,

    TSD9_Col_01_Row_11,
    TSD9_Col_02_Row_11,
    TSD9_Col_03_Row_11,
    TSD9_Col_04_Row_11,
    TSD9_Col_05_Row_11,
    TSD9_Col_06_Row_11,
    TSD9_Col_07_Row_11,
    TSD9_Col_08_Row_11,
    /* TSD9_Col_09_Row_11,
    TSD9_Col_10_Row_11,
    TSD9_Col_11_Row_11,
    TSD9_Col_12_Row_11,
    */ TSD9_Col_13_Row_11,
    TSD9_Col_14_Row_11,
    TSD9_Col_15_Row_11,
    TSD9_Col_16_Row_11,
    TSD9_Col_17_Row_11,
    TSD9_Col_18_Row_11,
    TSD9_Col_19_Row_11,

    TSD9_Col_01_Row_12,
    TSD9_Col_02_Row_12,
    TSD9_Col_03_Row_12,
    TSD9_Col_04_Row_12,
    TSD9_Col_05_Row_12,
    TSD9_Col_06_Row_12,
    TSD9_Col_07_Row_12,
    TSD9_Col_08_Row_12,
    /* TSD9_Col_09_Row_12,
    TSD9_Col_10_Row_12,
    TSD9_Col_11_Row_12,
    TSD9_Col_12_Row_12,
    */ TSD9_Col_13_Row_12,
    TSD9_Col_14_Row_12,
    TSD9_Col_15_Row_12,
    TSD9_Col_16_Row_12,
    TSD9_Col_17_Row_12,
    TSD9_Col_18_Row_12,
    TSD9_Col_19_Row_12,

    TSD9_Col_01_Row_13,
    TSD9_Col_02_Row_13,
    TSD9_Col_03_Row_13,
    TSD9_Col_04_Row_13,
    TSD9_Col_05_Row_13,
    TSD9_Col_06_Row_13,
    TSD9_Col_07_Row_13,
    TSD9_Col_08_Row_13,
    /* TSD9_Col_09_Row_13,
    TSD9_Col_10_Row_13,
    TSD9_Col_11_Row_13,
    TSD9_Col_12_Row_13,
    */ TSD9_Col_13_Row_13,
    TSD9_Col_14_Row_13,
    TSD9_Col_15_Row_13,
    TSD9_Col_16_Row_13,
    TSD9_Col_17_Row_13,
    TSD9_Col_18_Row_13,
    TSD9_Col_19_Row_13,

    TSD9_Col_01_Row_14,
    TSD9_Col_02_Row_14,
    TSD9_Col_03_Row_14,
    TSD9_Col_04_Row_14,
    TSD9_Col_05_Row_14,
    TSD9_Col_06_Row_14,
    TSD9_Col_07_Row_14,
    TSD9_Col_08_Row_14,
    /* TSD9_Col_09_Row_14,
    TSD9_Col_10_Row_14,
    TSD9_Col_11_Row_14,
    TSD9_Col_12_Row_14,
    */ TSD9_Col_13_Row_14,
    TSD9_Col_14_Row_14,
    TSD9_Col_15_Row_14,
    TSD9_Col_16_Row_14,
    TSD9_Col_17_Row_14,
    TSD9_Col_18_Row_14,
    TSD9_Col_19_Row_14,

    TSD9_Col_01_Row_15,
    TSD9_Col_02_Row_15,
    TSD9_Col_03_Row_15,
    TSD9_Col_04_Row_15,
    TSD9_Col_05_Row_15,
    TSD9_Col_06_Row_15,
    TSD9_Col_07_Row_15,
    TSD9_Col_08_Row_15,
    /* TSD9_Col_09_Row_15,
    TSD9_Col_10_Row_15,
    TSD9_Col_11_Row_15,
    TSD9_Col_12_Row_15,
    */ TSD9_Col_13_Row_15,
    TSD9_Col_14_Row_15,
    TSD9_Col_15_Row_15,
    TSD9_Col_16_Row_15,
    TSD9_Col_17_Row_15,
    TSD9_Col_18_Row_15,
    TSD9_Col_19_Row_15,

    TSD9_Col_01_Row_16,
    TSD9_Col_02_Row_16,
    TSD9_Col_03_Row_16,
    TSD9_Col_04_Row_16,
    TSD9_Col_05_Row_16,
    TSD9_Col_06_Row_16,
    TSD9_Col_07_Row_16,
    TSD9_Col_08_Row_16,
    /* TSD9_Col_09_Row_16,
    TSD9_Col_10_Row_16,
    TSD9_Col_11_Row_16,
    TSD9_Col_12_Row_16,
    */ TSD9_Col_13_Row_16,
    TSD9_Col_14_Row_16,
    TSD9_Col_15_Row_16,
    TSD9_Col_16_Row_16,
    TSD9_Col_17_Row_16,
    TSD9_Col_18_Row_16,
    TSD9_Col_19_Row_16,

    TSD9_Col_01_Row_17,
    TSD9_Col_02_Row_17,
    TSD9_Col_03_Row_17,
    TSD9_Col_04_Row_17,
    TSD9_Col_05_Row_17,
    TSD9_Col_06_Row_17,
    TSD9_Col_07_Row_17,
    TSD9_Col_08_Row_17,
    /* TSD9_Col_09_Row_17,
    TSD9_Col_10_Row_17,
    TSD9_Col_11_Row_17,
    TSD9_Col_12_Row_17,
    */ TSD9_Col_13_Row_17,
    TSD9_Col_14_Row_17,
    TSD9_Col_15_Row_17,
    TSD9_Col_16_Row_17,
    TSD9_Col_17_Row_17,
    TSD9_Col_18_Row_17,
    TSD9_Col_19_Row_17,

    TSD9_Col_01_Row_18,
    TSD9_Col_02_Row_18,
    TSD9_Col_03_Row_18,
    TSD9_Col_04_Row_18,
    TSD9_Col_05_Row_18,
    TSD9_Col_06_Row_18,
    TSD9_Col_07_Row_18,
    TSD9_Col_08_Row_18,
    /* TSD9_Col_09_Row_18,
    TSD9_Col_10_Row_18,
    TSD9_Col_11_Row_18,
    TSD9_Col_12_Row_18,
    */ TSD9_Col_13_Row_18,
    TSD9_Col_14_Row_18,
    TSD9_Col_15_Row_18,
    TSD9_Col_16_Row_18,
    TSD9_Col_17_Row_18,
    TSD9_Col_18_Row_18,
    TSD9_Col_19_Row_18,

    TSD9_Col_01_Row_19,
    TSD9_Col_02_Row_19,
    TSD9_Col_03_Row_19,
    TSD9_Col_04_Row_19,
    TSD9_Col_05_Row_19,
    TSD9_Col_06_Row_19,
    TSD9_Col_07_Row_19,
    TSD9_Col_08_Row_19,
    /* TSD9_Col_09_Row_19,
    TSD9_Col_10_Row_19,
    TSD9_Col_11_Row_19,
    TSD9_Col_12_Row_19,
    */ TSD9_Col_13_Row_19,
    TSD9_Col_14_Row_19,
    TSD9_Col_15_Row_19,
    TSD9_Col_16_Row_19,
    TSD9_Col_17_Row_19,
    TSD9_Col_18_Row_19,
    TSD9_Col_19_Row_19,

    TSD9_Col_01_Row_20,
    TSD9_Col_02_Row_20,
    TSD9_Col_03_Row_20,
    TSD9_Col_04_Row_20,
    TSD9_Col_05_Row_20,
    TSD9_Col_06_Row_20,
  	TSD9_Col_07_Row_20,
  	TSD9_Col_08_Row_20,
  	/* TSD9_Col_09_Row_20,
  	TSD9_Col_10_Row_20,
  	TSD9_Col_11_Row_20,
  	TSD9_Col_12_Row_20,
  	*/ TSD9_Col_13_Row_20,
  	TSD9_Col_14_Row_20,
  	TSD9_Col_15_Row_20,
  	TSD9_Col_16_Row_20,
  	TSD9_Col_17_Row_20,
  	TSD9_Col_18_Row_20,
  	TSD9_Col_19_Row_20,

  	TSD9_Col_01_Row_21,
  	TSD9_Col_02_Row_21,
  	TSD9_Col_03_Row_21,
  	TSD9_Col_04_Row_21,
  	TSD9_Col_05_Row_21,
  	TSD9_Col_06_Row_21,
  	TSD9_Col_07_Row_21,
  	TSD9_Col_08_Row_21,
  	/* TSD9_Col_09_Row_21,
  	TSD9_Col_10_Row_21,
  	TSD9_Col_11_Row_21,
  	TSD9_Col_12_Row_21,
  	*/ TSD9_Col_13_Row_21,
  	TSD9_Col_14_Row_21,
  	TSD9_Col_15_Row_21,
  	TSD9_Col_16_Row_21,
  	TSD9_Col_17_Row_21,
  	TSD9_Col_18_Row_21,
  	TSD9_Col_19_Row_21,

  	TSD9_Col_01_Row_22,
  	TSD9_Col_02_Row_22,
  	TSD9_Col_03_Row_22,
  	TSD9_Col_04_Row_22,
  	TSD9_Col_05_Row_22,
  	TSD9_Col_06_Row_22,
  	TSD9_Col_07_Row_22,
  	TSD9_Col_08_Row_22,
  	/* TSD9_Col_09_Row_22,
  	TSD9_Col_10_Row_22,
  	TSD9_Col_11_Row_22,
  	TSD9_Col_12_Row_22,
  	*/ TSD9_Col_13_Row_22,
  	TSD9_Col_14_Row_22,
  	TSD9_Col_15_Row_22,
  	TSD9_Col_16_Row_22,
  	TSD9_Col_17_Row_22,
  	TSD9_Col_18_Row_22,
  	TSD9_Col_19_Row_22,

  	TSD9_Col_01_Row_23,
  	TSD9_Col_02_Row_23,
  	TSD9_Col_03_Row_23,
  	TSD9_Col_04_Row_23,
  	TSD9_Col_05_Row_23,
  	TSD9_Col_06_Row_23,
  	TSD9_Col_07_Row_23,
  	TSD9_Col_08_Row_23,
  	/* TSD9_Col_09_Row_23,
  	TSD9_Col_10_Row_23,
  	TSD9_Col_11_Row_23,
  	TSD9_Col_12_Row_23,
  	*/ TSD9_Col_13_Row_23,
  	TSD9_Col_14_Row_23,
  	TSD9_Col_15_Row_23,
  	TSD9_Col_16_Row_23,
  	TSD9_Col_17_Row_23,
  	TSD9_Col_18_Row_23,
  	TSD9_Col_19_Row_23,

  	TSD9_Col_01_Row_24,
  	TSD9_Col_02_Row_24,
  	TSD9_Col_03_Row_24,
  	TSD9_Col_04_Row_24,
  	TSD9_Col_05_Row_24,
  	TSD9_Col_06_Row_24,
  	TSD9_Col_07_Row_24,
  	TSD9_Col_08_Row_24,
  	/* TSD9_Col_09_Row_24,
  	TSD9_Col_10_Row_24,
  	TSD9_Col_11_Row_24,
  	TSD9_Col_12_Row_24,
  	*/ TSD9_Col_13_Row_24,
  	TSD9_Col_14_Row_24,
  	TSD9_Col_15_Row_24,
  	TSD9_Col_16_Row_24,
  	TSD9_Col_17_Row_24,
  	TSD9_Col_18_Row_24,
  	TSD9_Col_19_Row_24,

  	TSD9_Col_01_Row_25,
  	TSD9_Col_02_Row_25,
  	TSD9_Col_03_Row_25,
  	TSD9_Col_04_Row_25,
  	TSD9_Col_05_Row_25,
  	TSD9_Col_06_Row_25,
  	TSD9_Col_07_Row_25,
  	TSD9_Col_08_Row_25,
  	/* TSD9_Col_09_Row_25,
  	TSD9_Col_10_Row_25,
  	TSD9_Col_11_Row_25,
  	TSD9_Col_12_Row_25,
  	*/ TSD9_Col_13_Row_25,
  	TSD9_Col_14_Row_25,
  	TSD9_Col_15_Row_25,
  	TSD9_Col_16_Row_25,
  	TSD9_Col_17_Row_25,
  	TSD9_Col_18_Row_25,
  	TSD9_Col_19_Row_25,

  	TSD9_Col_01_Row_26,
  	TSD9_Col_02_Row_26,
  	TSD9_Col_03_Row_26,
  	TSD9_Col_04_Row_26,
  	TSD9_Col_05_Row_26,
  	TSD9_Col_06_Row_26,
  	TSD9_Col_07_Row_26,
  	TSD9_Col_08_Row_26,
  	/* TSD9_Col_09_Row_26,
  	TSD9_Col_10_Row_26,
  	TSD9_Col_11_Row_26,
  	TSD9_Col_12_Row_26,
  	*/ TSD9_Col_13_Row_26,
  	TSD9_Col_14_Row_26,
  	TSD9_Col_15_Row_26,
  	TSD9_Col_16_Row_26,
  	TSD9_Col_17_Row_26,
  	TSD9_Col_18_Row_26,
  	TSD9_Col_19_Row_26,

  	TSD9_Col_01_Row_27,
  	TSD9_Col_02_Row_27,
  	TSD9_Col_03_Row_27,
  	TSD9_Col_04_Row_27,
  	TSD9_Col_05_Row_27,
  	TSD9_Col_06_Row_27,
  	TSD9_Col_07_Row_27,
  	TSD9_Col_08_Row_27,
  	/* TSD9_Col_09_Row_27,
  	TSD9_Col_10_Row_27,
  	TSD9_Col_11_Row_27,
  	TSD9_Col_12_Row_27,
  	*/ TSD9_Col_13_Row_27,
  	TSD9_Col_14_Row_27,
  	TSD9_Col_15_Row_27,
  	TSD9_Col_16_Row_27,
  	TSD9_Col_17_Row_27,
  	TSD9_Col_18_Row_27,
  	TSD9_Col_19_Row_27,

  	TSD9_Col_01_Row_28,
  	TSD9_Col_02_Row_28,
  	TSD9_Col_03_Row_28,
  	TSD9_Col_04_Row_28,
  	TSD9_Col_05_Row_28,
  	TSD9_Col_06_Row_28,
  	TSD9_Col_07_Row_28,
  	TSD9_Col_08_Row_28,
  	/* TSD9_Col_09_Row_28,
  	TSD9_Col_10_Row_28,
  	TSD9_Col_11_Row_28,
  	TSD9_Col_12_Row_28,
  	*/ TSD9_Col_13_Row_28,
  	TSD9_Col_14_Row_28,
  	TSD9_Col_15_Row_28,
  	TSD9_Col_16_Row_28,
  	TSD9_Col_17_Row_28,
  	TSD9_Col_18_Row_28,
  	TSD9_Col_19_Row_28,

  	TSD9_Col_01_Row_29,
  	TSD9_Col_02_Row_29,
  	TSD9_Col_03_Row_29,
  	TSD9_Col_04_Row_29,
  	TSD9_Col_05_Row_29,
  	TSD9_Col_06_Row_29,
  	TSD9_Col_07_Row_29,
  	TSD9_Col_08_Row_29,
  	/* TSD9_Col_09_Row_29,
  	TSD9_Col_10_Row_29,
  	TSD9_Col_11_Row_29,
  	TSD9_Col_12_Row_29,
  	*/ TSD9_Col_13_Row_29,
  	TSD9_Col_14_Row_29,
  	TSD9_Col_15_Row_29,
  	TSD9_Col_16_Row_29,
  	TSD9_Col_17_Row_29,
  	TSD9_Col_18_Row_29,
  	TSD9_Col_19_Row_29,

  	TSD9_Col_01_Row_30,
  	TSD9_Col_02_Row_30,
  	TSD9_Col_03_Row_30,
  	TSD9_Col_04_Row_30,
  	TSD9_Col_05_Row_30,
  	TSD9_Col_06_Row_30,
  	TSD9_Col_07_Row_30,
  	TSD9_Col_08_Row_30,
  	/* TSD9_Col_09_Row_30,
  	TSD9_Col_10_Row_30,
  	TSD9_Col_11_Row_30,
  	TSD9_Col_12_Row_30,
  	*/ TSD9_Col_13_Row_30,
  	TSD9_Col_14_Row_30,
  	TSD9_Col_15_Row_30,
  	TSD9_Col_16_Row_30,
  	TSD9_Col_17_Row_30,
  	TSD9_Col_18_Row_30,
  	TSD9_Col_19_Row_30,

  	TSD9_Col_01_Row_31,
  	TSD9_Col_02_Row_31,
  	TSD9_Col_03_Row_31,
  	TSD9_Col_04_Row_31,
  	TSD9_Col_05_Row_31,
  	TSD9_Col_06_Row_31,
  	TSD9_Col_07_Row_31,
  	TSD9_Col_08_Row_31,
  	/* TSD9_Col_09_Row_31,
  	TSD9_Col_10_Row_31,
  	TSD9_Col_11_Row_31,
  	TSD9_Col_12_Row_31,
  	*/ TSD9_Col_13_Row_31,
  	TSD9_Col_14_Row_31,
  	TSD9_Col_15_Row_31,
  	TSD9_Col_16_Row_31,
  	TSD9_Col_17_Row_31,
  	TSD9_Col_18_Row_31,
  	TSD9_Col_19_Row_31,

  	TSD9_Col_01_Row_32,
  	TSD9_Col_02_Row_32,
  	TSD9_Col_03_Row_32,
  	TSD9_Col_04_Row_32,
  	TSD9_Col_05_Row_32,
  	TSD9_Col_06_Row_32,
  	TSD9_Col_07_Row_32,
  	TSD9_Col_08_Row_32,
  	/* TSD9_Col_09_Row_32,
  	TSD9_Col_10_Row_32,
  	TSD9_Col_11_Row_32,
  	TSD9_Col_12_Row_32,
  	*/ TSD9_Col_13_Row_32,
  	TSD9_Col_14_Row_32,
  	TSD9_Col_15_Row_32,
  	TSD9_Col_16_Row_32,
  	TSD9_Col_17_Row_32,
  	TSD9_Col_18_Row_32,
  	TSD9_Col_19_Row_32,

  	TSD9_Col_01_Row_33,
  	TSD9_Col_02_Row_33,
  	TSD9_Col_03_Row_33,
  	TSD9_Col_04_Row_33,
  	TSD9_Col_05_Row_33,
  	TSD9_Col_06_Row_33,
  	TSD9_Col_07_Row_33,
  	TSD9_Col_08_Row_33,
  	/* TSD9_Col_09_Row_33,
  	TSD9_Col_10_Row_33,
  	TSD9_Col_11_Row_33,
  	TSD9_Col_12_Row_33,
  	*/ TSD9_Col_13_Row_33,
  	TSD9_Col_14_Row_33,
  	TSD9_Col_15_Row_33,
  	TSD9_Col_16_Row_33,
  	TSD9_Col_17_Row_33,
  	TSD9_Col_18_Row_33,
  	TSD9_Col_19_Row_33,

  	TSD9_Col_01_Row_34,
  	TSD9_Col_02_Row_34,
  	TSD9_Col_03_Row_34,
  	TSD9_Col_04_Row_34,
  	TSD9_Col_05_Row_34,
  	TSD9_Col_06_Row_34,
  	TSD9_Col_07_Row_34,
  	TSD9_Col_08_Row_34,
  	/* TSD9_Col_09_Row_34,
  	TSD9_Col_10_Row_34,
  	TSD9_Col_11_Row_34,
  	TSD9_Col_12_Row_34,
  	*/ TSD9_Col_13_Row_34,
  	TSD9_Col_14_Row_34,
  	TSD9_Col_15_Row_34,
  	TSD9_Col_16_Row_34,
  	TSD9_Col_17_Row_34,
  	TSD9_Col_18_Row_34,
  	TSD9_Col_19_Row_34,

  	TSD9_Col_01_Row_35,
  	TSD9_Col_02_Row_35,
  	TSD9_Col_03_Row_35,
  	TSD9_Col_04_Row_35,
  	TSD9_Col_05_Row_35,
  	TSD9_Col_06_Row_35,
  	TSD9_Col_07_Row_35,
  	TSD9_Col_08_Row_35,
  	/* TSD9_Col_09_Row_35,
  	TSD9_Col_10_Row_35,
  	TSD9_Col_11_Row_35,
  	TSD9_Col_12_Row_35,
  	*/ TSD9_Col_13_Row_35,
  	TSD9_Col_14_Row_35,
  	TSD9_Col_15_Row_35,
  	TSD9_Col_16_Row_35,
  	TSD9_Col_17_Row_35,
  	TSD9_Col_18_Row_35,
  	TSD9_Col_19_Row_35,

  	TSD9_Col_01_Row_36,
  	TSD9_Col_02_Row_36,
  	TSD9_Col_03_Row_36,
  	TSD9_Col_04_Row_36,
  	TSD9_Col_05_Row_36,
  	TSD9_Col_06_Row_36,
  	TSD9_Col_07_Row_36,
  	TSD9_Col_08_Row_36,
  	/* TSD9_Col_09_Row_36,
  	TSD9_Col_10_Row_36,
  	TSD9_Col_11_Row_36,
  	TSD9_Col_12_Row_36,
  	*/ TSD9_Col_13_Row_36,
  	TSD9_Col_14_Row_36,
  	TSD9_Col_15_Row_36,
  	TSD9_Col_16_Row_36,
  	TSD9_Col_17_Row_36,
  	TSD9_Col_18_Row_36,
  	TSD9_Col_19_Row_36,

  	TSD9_Col_01_Row_37,
  	TSD9_Col_02_Row_37,
  	TSD9_Col_03_Row_37,
  	TSD9_Col_04_Row_37,
  	TSD9_Col_05_Row_37,
  	TSD9_Col_06_Row_37,
  	TSD9_Col_07_Row_37,
  	TSD9_Col_08_Row_37,
  	/* TSD9_Col_09_Row_37,
  	TSD9_Col_10_Row_37,
  	TSD9_Col_11_Row_37,
  	TSD9_Col_12_Row_37,
  	*/ TSD9_Col_13_Row_37,
  	TSD9_Col_14_Row_37,
  	TSD9_Col_15_Row_37,
  	TSD9_Col_16_Row_37,
  	TSD9_Col_17_Row_37,
  	TSD9_Col_18_Row_37,
  	TSD9_Col_19_Row_37,

  	TSD9_Col_01_Row_38,
  	TSD9_Col_02_Row_38,
  	TSD9_Col_03_Row_38,
  	TSD9_Col_04_Row_38,
  	TSD9_Col_05_Row_38,
  	TSD9_Col_06_Row_38,
  	TSD9_Col_07_Row_38,
  	TSD9_Col_08_Row_38,
  	/* TSD9_Col_09_Row_38,
  	TSD9_Col_10_Row_38,
  	TSD9_Col_11_Row_38,
  	TSD9_Col_12_Row_38,
  	*/ TSD9_Col_13_Row_38,
  	TSD9_Col_14_Row_38,
  	TSD9_Col_15_Row_38,
  	TSD9_Col_16_Row_38,
  	TSD9_Col_17_Row_38,
  	TSD9_Col_18_Row_38,
  	TSD9_Col_19_Row_38,

  	TSD9_Col_01_Row_39,
  	TSD9_Col_02_Row_39,
  	TSD9_Col_03_Row_39,
  	TSD9_Col_04_Row_39,
  	TSD9_Col_05_Row_39,
  	TSD9_Col_06_Row_39,
  	TSD9_Col_07_Row_39,
  	TSD9_Col_08_Row_39,
  	/* TSD9_Col_09_Row_39,
  	TSD9_Col_10_Row_39,
  	TSD9_Col_11_Row_39,
  	TSD9_Col_12_Row_39,
  	*/ TSD9_Col_13_Row_39,
  	TSD9_Col_14_Row_39,
  	TSD9_Col_15_Row_39,
  	TSD9_Col_16_Row_39,
  	TSD9_Col_17_Row_39,
  	TSD9_Col_18_Row_39,
  	TSD9_Col_19_Row_39,

  	TSD9_Col_01_Row_40,
  	TSD9_Col_02_Row_40,
  	TSD9_Col_03_Row_40,
  	TSD9_Col_04_Row_40,
  	TSD9_Col_05_Row_40,
  	TSD9_Col_06_Row_40,
  	TSD9_Col_07_Row_40,
  	TSD9_Col_08_Row_40,
  	/* TSD9_Col_09_Row_40,
  	TSD9_Col_10_Row_40,
  	TSD9_Col_11_Row_40,
  	TSD9_Col_12_Row_40,
  	*/ TSD9_Col_13_Row_40,
  	TSD9_Col_14_Row_40,
  	TSD9_Col_15_Row_40,
  	TSD9_Col_16_Row_40,
  	TSD9_Col_17_Row_40,
  	TSD9_Col_18_Row_40,
  	TSD9_Col_19_Row_40,

    //TSD9_Progress,
    TSD9_CloseButton,
    TSD9_MyTeamButton,
    TSD9_MyGroupButton,
    TSD9_VehicleButton,
    TSD9_OppositionTeamButton
  };
  //---------
  /*
  class TSD9_Progress: TSD9_RscText
  {
  	idc = 99;
  	x = 0.01;
    y = 0.98;
    h = TSD9_ROWHGT/TSD9_ROWHGT_MOD;
    w = 0.08;
    colorBackground[] = TSD9_color_Gray_10;
    colorText[] = TSD9_color_White;
  };
  */
  //---------
  class TSD9_CloseButton : TSD9_MainButton
  {
  	idc = 100;
  	x = 0.1;
  	text = "Close";
  	action = "closeDialog 0";
  };
  //---------
  class TSD9_MyTeamButton : TSD9_MainButton
  {
  	idc = 103;
  	x = 0.5;
  	text = "My team";
  	action = "[] call TSD9_DrawPage_MyTeam;";
    default = true;
  };
  //---------
  class TSD9_MyGroupButton : TSD9_MainButton
  {
  	idc = 104;
  	x = 0.6;
  	text = "My squad";
  	action = "[] call TSD9_DrawPage_MyGroup;";
  };
  //---------
  class TSD9_VehicleButton : TSD9_MainButton
  {
  	idc = 105;
  	x = 0.7;
  	text = "My vehicle";
  	action = "[] call TSD9_DrawPage_MyVehicle;"; // TODO: Init these in sqf instead
  };
  //---------
  class TSD9_OppositionTeamButton : TSD9_MainButton
  {
  	idc = 106;
  	x = 0.8;
  	text = "Opposition";
  	action = "[] call TSD9_DrawPage_Opposition;"; // TODO: Init these in sqf instead
  };
//---------------------------------------------
// title row
class TSD9_Col_01 : TSD9_ColBase_01 { idc = 1001; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "+/-"; };
class TSD9_Col_02 : TSD9_ColBase_02 { idc = 1002; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "#"; };
class TSD9_Col_03 : TSD9_ColBase_03 { idc = 1003; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Name"; };
class TSD9_Col_04 : TSD9_ColBase_04 { idc = 1005; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Rank"; };
class TSD9_Col_05 : TSD9_ColBase_05 { idc = 1006; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Vehicle"; };
class TSD9_Col_06 : TSD9_ColBase_06 { idc = 1004; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Seat"; };
class TSD9_Col_07 : TSD9_ColBase_07_combo { idc = 1007; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Gear +"; }; // combo
class TSD9_Col_08 : TSD9_ColBase_08 { idc = 1008; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Score"; };
class TSD9_Col_09 : TSD9_ColBase_09 { idc = 1009; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Work"; };
class TSD9_Col_10 : TSD9_ColBase_10 { idc = 1010; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Kills"; };
class TSD9_Col_11 : TSD9_ColBase_11 { idc = 1011; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Deaths"; };
class TSD9_Col_12 : TSD9_ColBase_12 { idc = 1012; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "TK's"; };
class TSD9_Col_13 : TSD9_ColBase_13 { idc = 1013; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Command"; };
class TSD9_Col_14 : TSD9_ColBase_14_combo { idc = 1014; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Requires +"; }; // combo
class TSD9_Col_15 : TSD9_ColBase_15 { idc = 1015; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Pos"; };
class TSD9_Col_16 : TSD9_ColBase_16 { idc = 1016; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "SL Prox"; };
class TSD9_Col_17 : TSD9_ColBase_17 { idc = 1017; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "My Prox"; };
class TSD9_Col_18 : TSD9_ColBase_18 { idc = 1018; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = "Threats"; };
class TSD9_Col_19 : TSD9_ColBase_19 { idc = 1019; style = TSD9_ST_CENTER; y = TSD9_ROWHGT * 1; text = ""; };
//---------------------------------------------
// data cells
//--------------------01
class TSD9_Col_01_Row_01 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1101; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_01 : TSD9_ColBase_02 { idc = 1102; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_01 : TSD9_ColBase_03 { idc = 1103; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_01 : TSD9_ColBase_04 { idc = 1104; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_01 : TSD9_ColBase_05 { idc = 1105; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_01 : TSD9_ColBase_06 { idc = 1106; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_01 : TSD9_ColBase_07 { idc = 1107; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_01 : TSD9_ColBase_08 { idc = 1108; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_01 : TSD9_ColBase_09 { idc = 1109; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_01 : TSD9_ColBase_10 { idc = 1110; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_01 : TSD9_ColBase_11 { idc = 1111; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_01 : TSD9_ColBase_12 { idc = 1112; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_01 : TSD9_ColBase_13 { idc = 1113; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_01 : TSD9_ColBase_14 { idc = 1114; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_01 : TSD9_ColBase_15 { idc = 1115; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_01 : TSD9_ColBase_16 { idc = 1116; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_01 : TSD9_ColBase_17 { idc = 1117; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_01 : TSD9_ColBase_18 { idc = 1118; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_01 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1119; y = (TSD9_ROWHGT * 1)+TSD9_FIRSTROW; };
//--------------------02
class TSD9_Col_01_Row_02 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1201; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_02 : TSD9_ColBase_02 { idc = 1202; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_02 : TSD9_ColBase_03 { idc = 1203; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_02 : TSD9_ColBase_04 { idc = 1204; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_02 : TSD9_ColBase_05 { idc = 1205; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_02 : TSD9_ColBase_06 { idc = 1206; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_02 : TSD9_ColBase_07 { idc = 1207; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_02 : TSD9_ColBase_08 { idc = 1208; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_02 : TSD9_ColBase_09 { idc = 1209; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_02 : TSD9_ColBase_10 { idc = 1210; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_02 : TSD9_ColBase_11 { idc = 1211; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_02 : TSD9_ColBase_12 { idc = 1212; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_02 : TSD9_ColBase_13 { idc = 1213; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_02 : TSD9_ColBase_14 { idc = 1214; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_02 : TSD9_ColBase_15 { idc = 1215; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_02 : TSD9_ColBase_16 { idc = 1216; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_02 : TSD9_ColBase_17 { idc = 1217; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_02 : TSD9_ColBase_18 { idc = 1218; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_02 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1219; y = (TSD9_ROWHGT * 2)+TSD9_FIRSTROW; };
//--------------------03
class TSD9_Col_01_Row_03 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1301; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_03 : TSD9_ColBase_02 { idc = 1302; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_03 : TSD9_ColBase_03 { idc = 1303; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_03 : TSD9_ColBase_04 { idc = 1304; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_03 : TSD9_ColBase_05 { idc = 1305; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_03 : TSD9_ColBase_06 { idc = 1306; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_03 : TSD9_ColBase_07 { idc = 1307; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_03 : TSD9_ColBase_08 { idc = 1308; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_03 : TSD9_ColBase_09 { idc = 1309; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_03 : TSD9_ColBase_10 { idc = 1310; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_03 : TSD9_ColBase_11 { idc = 1311; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_03 : TSD9_ColBase_12 { idc = 1312; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_03 : TSD9_ColBase_13 { idc = 1313; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_03 : TSD9_ColBase_14 { idc = 1314; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_03 : TSD9_ColBase_15 { idc = 1315; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_03 : TSD9_ColBase_16 { idc = 1316; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_03 : TSD9_ColBase_17 { idc = 1317; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_03 : TSD9_ColBase_18 { idc = 1318; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_03 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1319; y = (TSD9_ROWHGT * 3)+TSD9_FIRSTROW; };
//--------------------04
class TSD9_Col_01_Row_04 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1401; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_04 : TSD9_ColBase_02 { idc = 1402; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_04 : TSD9_ColBase_03 { idc = 1403; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_04 : TSD9_ColBase_04 { idc = 1404; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_04 : TSD9_ColBase_05 { idc = 1405; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_04 : TSD9_ColBase_06 { idc = 1406; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_04 : TSD9_ColBase_07 { idc = 1407; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_04 : TSD9_ColBase_08 { idc = 1408; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_04 : TSD9_ColBase_09 { idc = 1409; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_04 : TSD9_ColBase_10 { idc = 1410; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_04 : TSD9_ColBase_11 { idc = 1411; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_04 : TSD9_ColBase_12 { idc = 1412; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_04 : TSD9_ColBase_13 { idc = 1413; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_04 : TSD9_ColBase_14 { idc = 1414; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_04 : TSD9_ColBase_15 { idc = 1415; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_04 : TSD9_ColBase_16 { idc = 1416; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_04 : TSD9_ColBase_17 { idc = 1417; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_04 : TSD9_ColBase_18 { idc = 1418; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_04 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1419; y = (TSD9_ROWHGT * 4)+TSD9_FIRSTROW; };
//--------------------05
class TSD9_Col_01_Row_05 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1501; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_05 : TSD9_ColBase_02 { idc = 1502; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_05 : TSD9_ColBase_03 { idc = 1503; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_05 : TSD9_ColBase_04 { idc = 1504; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_05 : TSD9_ColBase_05 { idc = 1505; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_05 : TSD9_ColBase_06 { idc = 1506; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_05 : TSD9_ColBase_07 { idc = 1507; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_05 : TSD9_ColBase_08 { idc = 1508; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_05 : TSD9_ColBase_09 { idc = 1509; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_05 : TSD9_ColBase_10 { idc = 1510; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_05 : TSD9_ColBase_11 { idc = 1511; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_05 : TSD9_ColBase_12 { idc = 1512; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_05 : TSD9_ColBase_13 { idc = 1513; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_05 : TSD9_ColBase_14 { idc = 1514; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_05 : TSD9_ColBase_15 { idc = 1515; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_05 : TSD9_ColBase_16 { idc = 1516; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_05 : TSD9_ColBase_17 { idc = 1517; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_05 : TSD9_ColBase_18 { idc = 1518; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_05 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1519; y = (TSD9_ROWHGT * 5)+TSD9_FIRSTROW; };
//--------------------06
class TSD9_Col_01_Row_06 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1601; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_06 : TSD9_ColBase_02 { idc = 1602; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_06 : TSD9_ColBase_03 { idc = 1603; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_06 : TSD9_ColBase_04 { idc = 1604; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_06 : TSD9_ColBase_05 { idc = 1605; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_06 : TSD9_ColBase_06 { idc = 1606; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_06 : TSD9_ColBase_07 { idc = 1607; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_06 : TSD9_ColBase_08 { idc = 1608; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_06 : TSD9_ColBase_09 { idc = 1609; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_06 : TSD9_ColBase_10 { idc = 1610; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_06 : TSD9_ColBase_11 { idc = 1611; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_06 : TSD9_ColBase_12 { idc = 1612; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_06 : TSD9_ColBase_13 { idc = 1613; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_06 : TSD9_ColBase_14 { idc = 1614; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_06 : TSD9_ColBase_15 { idc = 1615; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_06 : TSD9_ColBase_16 { idc = 1616; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_06 : TSD9_ColBase_17 { idc = 1617; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_06 : TSD9_ColBase_18 { idc = 1618; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_06 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1619; y = (TSD9_ROWHGT * 6)+TSD9_FIRSTROW; };
//--------------------07
class TSD9_Col_01_Row_07 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1701; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_07 : TSD9_ColBase_02 { idc = 1702; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_07 : TSD9_ColBase_03 { idc = 1703; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_07 : TSD9_ColBase_04 { idc = 1704; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_07 : TSD9_ColBase_05 { idc = 1705; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_07 : TSD9_ColBase_06 { idc = 1706; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_07 : TSD9_ColBase_07 { idc = 1707; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_07 : TSD9_ColBase_08 { idc = 1708; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_07 : TSD9_ColBase_09 { idc = 1709; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_07 : TSD9_ColBase_10 { idc = 1710; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_07 : TSD9_ColBase_11 { idc = 1711; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_07 : TSD9_ColBase_12 { idc = 1712; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_07 : TSD9_ColBase_13 { idc = 1713; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_07 : TSD9_ColBase_14 { idc = 1714; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_07 : TSD9_ColBase_15 { idc = 1715; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_07 : TSD9_ColBase_16 { idc = 1716; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_07 : TSD9_ColBase_17 { idc = 1717; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_07 : TSD9_ColBase_18 { idc = 1718; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_07 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1719; y = (TSD9_ROWHGT * 7)+TSD9_FIRSTROW; };
//--------------------08
class TSD9_Col_01_Row_08 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1801; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_08 : TSD9_ColBase_02 { idc = 1802; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_08 : TSD9_ColBase_03 { idc = 1803; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_08 : TSD9_ColBase_04 { idc = 1804; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_08 : TSD9_ColBase_05 { idc = 1805; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_08 : TSD9_ColBase_06 { idc = 1806; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_08 : TSD9_ColBase_07 { idc = 1807; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_08 : TSD9_ColBase_08 { idc = 1808; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_08 : TSD9_ColBase_09 { idc = 1809; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_08 : TSD9_ColBase_10 { idc = 1810; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_08 : TSD9_ColBase_11 { idc = 1811; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_08 : TSD9_ColBase_12 { idc = 1812; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_08 : TSD9_ColBase_13 { idc = 1813; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_08 : TSD9_ColBase_14 { idc = 1814; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_08 : TSD9_ColBase_15 { idc = 1815; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_08 : TSD9_ColBase_16 { idc = 1816; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_08 : TSD9_ColBase_17 { idc = 1817; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_08 : TSD9_ColBase_18 { idc = 1818; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_08 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1819; y = (TSD9_ROWHGT * 8)+TSD9_FIRSTROW; };
//--------------------09
class TSD9_Col_01_Row_09 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 1901; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_09 : TSD9_ColBase_02 { idc = 1902; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_09 : TSD9_ColBase_03 { idc = 1903; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_09 : TSD9_ColBase_04 { idc = 1904; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_09 : TSD9_ColBase_05 { idc = 1905; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_09 : TSD9_ColBase_06 { idc = 1906; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_09 : TSD9_ColBase_07 { idc = 1907; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_09 : TSD9_ColBase_08 { idc = 1908; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_09 : TSD9_ColBase_09 { idc = 1909; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_09 : TSD9_ColBase_10 { idc = 1910; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_09 : TSD9_ColBase_11 { idc = 1911; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_09 : TSD9_ColBase_12 { idc = 1912; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_09 : TSD9_ColBase_13 { idc = 1913; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_09 : TSD9_ColBase_14 { idc = 1914; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_09 : TSD9_ColBase_15 { idc = 1915; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_09 : TSD9_ColBase_16 { idc = 1916; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_09 : TSD9_ColBase_17 { idc = 1917; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_09 : TSD9_ColBase_18 { idc = 1918; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_09 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 1919; y = (TSD9_ROWHGT * 9)+TSD9_FIRSTROW; };
//---------------------------------------------
//--------------------10
class TSD9_Col_01_Row_10 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2001; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_10 : TSD9_ColBase_02 { idc = 2002; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_10 : TSD9_ColBase_03 { idc = 2003; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_10 : TSD9_ColBase_04 { idc = 2004; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_10 : TSD9_ColBase_05 { idc = 2005; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_10 : TSD9_ColBase_06 { idc = 2006; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_10 : TSD9_ColBase_07 { idc = 2007; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_10 : TSD9_ColBase_08 { idc = 2008; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_10 : TSD9_ColBase_09 { idc = 2009; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_10 : TSD9_ColBase_10 { idc = 2010; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_10 : TSD9_ColBase_11 { idc = 2011; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_10 : TSD9_ColBase_12 { idc = 2012; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_10 : TSD9_ColBase_13 { idc = 2013; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_10 : TSD9_ColBase_14 { idc = 2014; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_10 : TSD9_ColBase_15 { idc = 2015; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_10 : TSD9_ColBase_16 { idc = 2016; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_10 : TSD9_ColBase_17 { idc = 2017; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_10 : TSD9_ColBase_18 { idc = 2018; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_10 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2019; y = (TSD9_ROWHGT * 10)+TSD9_FIRSTROW; };
//--------------------11
class TSD9_Col_01_Row_11 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2101; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_11 : TSD9_ColBase_02 { idc = 2102; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_11 : TSD9_ColBase_03 { idc = 2103; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_11 : TSD9_ColBase_04 { idc = 2104; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_11 : TSD9_ColBase_05 { idc = 2105; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_11 : TSD9_ColBase_06 { idc = 2106; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_11 : TSD9_ColBase_07 { idc = 2107; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_11 : TSD9_ColBase_08 { idc = 2108; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_11 : TSD9_ColBase_09 { idc = 2109; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_11 : TSD9_ColBase_10 { idc = 2110; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_11 : TSD9_ColBase_11 { idc = 2111; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_11 : TSD9_ColBase_12 { idc = 2112; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_11 : TSD9_ColBase_13 { idc = 2113; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_11 : TSD9_ColBase_14 { idc = 2114; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_11 : TSD9_ColBase_15 { idc = 2115; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_11 : TSD9_ColBase_16 { idc = 2116; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_11 : TSD9_ColBase_17 { idc = 2117; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_11 : TSD9_ColBase_18 { idc = 2118; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_11 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2119; y = (TSD9_ROWHGT * 11)+TSD9_FIRSTROW; };
//--------------------12
class TSD9_Col_01_Row_12 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2201; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_12 : TSD9_ColBase_02 { idc = 2202; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_12 : TSD9_ColBase_03 { idc = 2203; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_12 : TSD9_ColBase_04 { idc = 2204; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_12 : TSD9_ColBase_05 { idc = 2205; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_12 : TSD9_ColBase_06 { idc = 2206; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_12 : TSD9_ColBase_07 { idc = 2207; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_12 : TSD9_ColBase_08 { idc = 2208; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_12 : TSD9_ColBase_09 { idc = 2209; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_12 : TSD9_ColBase_10 { idc = 2210; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_12 : TSD9_ColBase_11 { idc = 2211; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_12 : TSD9_ColBase_12 { idc = 2212; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_12 : TSD9_ColBase_13 { idc = 2213; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_12 : TSD9_ColBase_14 { idc = 2214; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_12 : TSD9_ColBase_15 { idc = 2215; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_12 : TSD9_ColBase_16 { idc = 2216; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_12 : TSD9_ColBase_17 { idc = 2217; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_12 : TSD9_ColBase_18 { idc = 2218; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_12 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2219; y = (TSD9_ROWHGT * 12)+TSD9_FIRSTROW; };
//--------------------13
class TSD9_Col_01_Row_13 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2301; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_13 : TSD9_ColBase_02 { idc = 2302; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_13 : TSD9_ColBase_03 { idc = 2303; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_13 : TSD9_ColBase_04 { idc = 2304; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_13 : TSD9_ColBase_05 { idc = 2305; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_13 : TSD9_ColBase_06 { idc = 2306; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_13 : TSD9_ColBase_07 { idc = 2307; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_13 : TSD9_ColBase_08 { idc = 2308; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_13 : TSD9_ColBase_09 { idc = 2309; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_13 : TSD9_ColBase_10 { idc = 2310; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_13 : TSD9_ColBase_11 { idc = 2311; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_13 : TSD9_ColBase_12 { idc = 2312; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_13 : TSD9_ColBase_13 { idc = 2313; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_13 : TSD9_ColBase_14 { idc = 2314; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_13 : TSD9_ColBase_15 { idc = 2315; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_13 : TSD9_ColBase_16 { idc = 2316; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_13 : TSD9_ColBase_17 { idc = 2317; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_13 : TSD9_ColBase_18 { idc = 2318; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_13 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2319; y = (TSD9_ROWHGT * 13)+TSD9_FIRSTROW; };
//--------------------14
class TSD9_Col_01_Row_14 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2401; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_14 : TSD9_ColBase_02 { idc = 2402; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_14 : TSD9_ColBase_03 { idc = 2403; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_14 : TSD9_ColBase_04 { idc = 2404; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_14 : TSD9_ColBase_05 { idc = 2405; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_14 : TSD9_ColBase_06 { idc = 2406; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_14 : TSD9_ColBase_07 { idc = 2407; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_14 : TSD9_ColBase_08 { idc = 2408; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_14 : TSD9_ColBase_09 { idc = 2409; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_14 : TSD9_ColBase_10 { idc = 2410; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_14 : TSD9_ColBase_11 { idc = 2411; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_14 : TSD9_ColBase_12 { idc = 2412; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_14 : TSD9_ColBase_13 { idc = 2413; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_14 : TSD9_ColBase_14 { idc = 2414; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_14 : TSD9_ColBase_15 { idc = 2415; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_14 : TSD9_ColBase_16 { idc = 2416; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_14 : TSD9_ColBase_17 { idc = 2417; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_14 : TSD9_ColBase_18 { idc = 2418; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_14 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2419; y = (TSD9_ROWHGT * 14)+TSD9_FIRSTROW; };
//--------------------15
class TSD9_Col_01_Row_15 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2501; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_15 : TSD9_ColBase_02 { idc = 2502; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_15 : TSD9_ColBase_03 { idc = 2503; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_15 : TSD9_ColBase_04 { idc = 2504; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_15 : TSD9_ColBase_05 { idc = 2505; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_15 : TSD9_ColBase_06 { idc = 2506; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_15 : TSD9_ColBase_07 { idc = 2507; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_15 : TSD9_ColBase_08 { idc = 2508; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_15 : TSD9_ColBase_09 { idc = 2509; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_15 : TSD9_ColBase_10 { idc = 2510; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_15 : TSD9_ColBase_11 { idc = 2511; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_15 : TSD9_ColBase_12 { idc = 2512; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_15 : TSD9_ColBase_13 { idc = 2513; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_15 : TSD9_ColBase_14 { idc = 2514; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_15 : TSD9_ColBase_15 { idc = 2515; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_15 : TSD9_ColBase_16 { idc = 2516; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_15 : TSD9_ColBase_17 { idc = 2517; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_15 : TSD9_ColBase_18 { idc = 2518; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_15 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2519; y = (TSD9_ROWHGT * 15)+TSD9_FIRSTROW; };
//--------------------16
class TSD9_Col_01_Row_16 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2601; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_16 : TSD9_ColBase_02 { idc = 2602; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_16 : TSD9_ColBase_03 { idc = 2603; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_16 : TSD9_ColBase_04 { idc = 2604; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_16 : TSD9_ColBase_05 { idc = 2605; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_16 : TSD9_ColBase_06 { idc = 2606; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_16 : TSD9_ColBase_07 { idc = 2607; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_16 : TSD9_ColBase_08 { idc = 2608; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_16 : TSD9_ColBase_09 { idc = 2609; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_16 : TSD9_ColBase_10 { idc = 2610; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_16 : TSD9_ColBase_11 { idc = 2611; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_16 : TSD9_ColBase_12 { idc = 2612; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_16 : TSD9_ColBase_13 { idc = 2613; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_16 : TSD9_ColBase_14 { idc = 2614; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_16 : TSD9_ColBase_15 { idc = 2615; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_16 : TSD9_ColBase_16 { idc = 2616; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_16 : TSD9_ColBase_17 { idc = 2617; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_16 : TSD9_ColBase_18 { idc = 2618; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_16 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2619; y = (TSD9_ROWHGT * 16)+TSD9_FIRSTROW; };
//--------------------17
class TSD9_Col_01_Row_17 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2701; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_17 : TSD9_ColBase_02 { idc = 2702; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_17 : TSD9_ColBase_03 { idc = 2703; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_17 : TSD9_ColBase_04 { idc = 2704; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_17 : TSD9_ColBase_05 { idc = 2705; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_17 : TSD9_ColBase_06 { idc = 2706; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_17 : TSD9_ColBase_07 { idc = 2707; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_17 : TSD9_ColBase_08 { idc = 2708; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_17 : TSD9_ColBase_09 { idc = 2709; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_17 : TSD9_ColBase_10 { idc = 2710; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_17 : TSD9_ColBase_11 { idc = 2711; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_17 : TSD9_ColBase_12 { idc = 2712; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_17 : TSD9_ColBase_13 { idc = 2713; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_17 : TSD9_ColBase_14 { idc = 2714; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_17 : TSD9_ColBase_15 { idc = 2715; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_17 : TSD9_ColBase_16 { idc = 2716; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_17 : TSD9_ColBase_17 { idc = 2717; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_17 : TSD9_ColBase_18 { idc = 2718; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_17 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2719; y = (TSD9_ROWHGT * 17)+TSD9_FIRSTROW; };
//--------------------18
class TSD9_Col_01_Row_18 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2801; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_18 : TSD9_ColBase_02 { idc = 2802; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_18 : TSD9_ColBase_03 { idc = 2803; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_18 : TSD9_ColBase_04 { idc = 2804; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_18 : TSD9_ColBase_05 { idc = 2805; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_18 : TSD9_ColBase_06 { idc = 2806; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_18 : TSD9_ColBase_07 { idc = 2807; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_18 : TSD9_ColBase_08 { idc = 2808; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_18 : TSD9_ColBase_09 { idc = 2809; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_18 : TSD9_ColBase_10 { idc = 2810; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_18 : TSD9_ColBase_11 { idc = 2811; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_18 : TSD9_ColBase_12 { idc = 2812; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_18 : TSD9_ColBase_13 { idc = 2813; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_18 : TSD9_ColBase_14 { idc = 2814; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_18 : TSD9_ColBase_15 { idc = 2815; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_18 : TSD9_ColBase_16 { idc = 2816; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_18 : TSD9_ColBase_17 { idc = 2817; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_18 : TSD9_ColBase_18 { idc = 2818; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_18 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2819; y = (TSD9_ROWHGT * 18)+TSD9_FIRSTROW; };
//--------------------19
class TSD9_Col_01_Row_19 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 2901; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_19 : TSD9_ColBase_02 { idc = 2902; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_19 : TSD9_ColBase_03 { idc = 2903; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_19 : TSD9_ColBase_04 { idc = 2904; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_19 : TSD9_ColBase_05 { idc = 2905; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_19 : TSD9_ColBase_06 { idc = 2906; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_19 : TSD9_ColBase_07 { idc = 2907; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_19 : TSD9_ColBase_08 { idc = 2908; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_19 : TSD9_ColBase_09 { idc = 2909; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_19 : TSD9_ColBase_10 { idc = 2910; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_19 : TSD9_ColBase_11 { idc = 2911; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_19 : TSD9_ColBase_12 { idc = 2912; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_19 : TSD9_ColBase_13 { idc = 2913; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_19 : TSD9_ColBase_14 { idc = 2914; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_19 : TSD9_ColBase_15 { idc = 2915; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_19 : TSD9_ColBase_16 { idc = 2916; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_19 : TSD9_ColBase_17 { idc = 2917; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_19 : TSD9_ColBase_18 { idc = 2918; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_19 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 2919; y = (TSD9_ROWHGT * 19)+TSD9_FIRSTROW; };
//---------------------------------------------
//--------------------20
class TSD9_Col_01_Row_20 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3001; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_20 : TSD9_ColBase_02 { idc = 3002; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_20 : TSD9_ColBase_03 { idc = 3003; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_20 : TSD9_ColBase_04 { idc = 3004; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_20 : TSD9_ColBase_05 { idc = 3005; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_20 : TSD9_ColBase_06 { idc = 3006; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_20 : TSD9_ColBase_07 { idc = 3007; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_20 : TSD9_ColBase_08 { idc = 3008; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_20 : TSD9_ColBase_09 { idc = 3009; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_20 : TSD9_ColBase_10 { idc = 3010; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_20 : TSD9_ColBase_11 { idc = 3011; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_20 : TSD9_ColBase_12 { idc = 3012; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_20 : TSD9_ColBase_13 { idc = 3013; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_20 : TSD9_ColBase_14 { idc = 3014; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_20 : TSD9_ColBase_15 { idc = 3015; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_20 : TSD9_ColBase_16 { idc = 3016; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_20 : TSD9_ColBase_17 { idc = 3017; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_20 : TSD9_ColBase_18 { idc = 3018; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_20 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3019; y = (TSD9_ROWHGT * 20)+TSD9_FIRSTROW; };
//--------------------21
class TSD9_Col_01_Row_21 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3101; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_21 : TSD9_ColBase_02 { idc = 3102; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_21 : TSD9_ColBase_03 { idc = 3103; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_21 : TSD9_ColBase_04 { idc = 3104; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_21 : TSD9_ColBase_05 { idc = 3105; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_21 : TSD9_ColBase_06 { idc = 3106; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_21 : TSD9_ColBase_07 { idc = 3107; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_21 : TSD9_ColBase_08 { idc = 3108; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_21 : TSD9_ColBase_09 { idc = 3109; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_21 : TSD9_ColBase_10 { idc = 3110; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_21 : TSD9_ColBase_11 { idc = 3111; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_21 : TSD9_ColBase_12 { idc = 3112; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_21 : TSD9_ColBase_13 { idc = 3113; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_21 : TSD9_ColBase_14 { idc = 3114; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_21 : TSD9_ColBase_15 { idc = 3115; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_21 : TSD9_ColBase_16 { idc = 3116; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_21 : TSD9_ColBase_17 { idc = 3117; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_21 : TSD9_ColBase_18 { idc = 3118; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_21 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3119; y = (TSD9_ROWHGT * 21)+TSD9_FIRSTROW; };
//--------------------22
class TSD9_Col_01_Row_22 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3201; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_22 : TSD9_ColBase_02 { idc = 3202; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_22 : TSD9_ColBase_03 { idc = 3203; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_22 : TSD9_ColBase_04 { idc = 3204; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_22 : TSD9_ColBase_05 { idc = 3205; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_22 : TSD9_ColBase_06 { idc = 3206; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_22 : TSD9_ColBase_07 { idc = 3207; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_22 : TSD9_ColBase_08 { idc = 3208; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_22 : TSD9_ColBase_09 { idc = 3209; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_22 : TSD9_ColBase_10 { idc = 3210; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_22 : TSD9_ColBase_11 { idc = 3211; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_22 : TSD9_ColBase_12 { idc = 3212; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_22 : TSD9_ColBase_13 { idc = 3213; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_22 : TSD9_ColBase_14 { idc = 3214; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_22 : TSD9_ColBase_15 { idc = 3215; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_22 : TSD9_ColBase_16 { idc = 3216; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_22 : TSD9_ColBase_17 { idc = 3217; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_22 : TSD9_ColBase_18 { idc = 3218; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_22 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3219; y = (TSD9_ROWHGT * 22)+TSD9_FIRSTROW; };
//--------------------23
class TSD9_Col_01_Row_23 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3301; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_23 : TSD9_ColBase_02 { idc = 3302; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_23 : TSD9_ColBase_03 { idc = 3303; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_23 : TSD9_ColBase_04 { idc = 3304; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_23 : TSD9_ColBase_05 { idc = 3305; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_23 : TSD9_ColBase_06 { idc = 3306; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_23 : TSD9_ColBase_07 { idc = 3307; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_23 : TSD9_ColBase_08 { idc = 3308; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_23 : TSD9_ColBase_09 { idc = 3309; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_23 : TSD9_ColBase_10 { idc = 3310; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_23 : TSD9_ColBase_11 { idc = 3311; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_23 : TSD9_ColBase_12 { idc = 3312; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_23 : TSD9_ColBase_13 { idc = 3313; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_23 : TSD9_ColBase_14 { idc = 3314; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_23 : TSD9_ColBase_15 { idc = 3315; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_23 : TSD9_ColBase_16 { idc = 3316; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_23 : TSD9_ColBase_17 { idc = 3317; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_23 : TSD9_ColBase_18 { idc = 3318; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_23 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3319; y = (TSD9_ROWHGT * 23)+TSD9_FIRSTROW; };
//--------------------24
class TSD9_Col_01_Row_24 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3401; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_24 : TSD9_ColBase_02 { idc = 3402; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_24 : TSD9_ColBase_03 { idc = 3403; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_24 : TSD9_ColBase_04 { idc = 3404; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_24 : TSD9_ColBase_05 { idc = 3405; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_24 : TSD9_ColBase_06 { idc = 3406; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_24 : TSD9_ColBase_07 { idc = 3407; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_24 : TSD9_ColBase_08 { idc = 3408; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_24 : TSD9_ColBase_09 { idc = 3409; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_24 : TSD9_ColBase_10 { idc = 3410; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_24 : TSD9_ColBase_11 { idc = 3411; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_24 : TSD9_ColBase_12 { idc = 3412; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_24 : TSD9_ColBase_13 { idc = 3413; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_24 : TSD9_ColBase_14 { idc = 3414; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_24 : TSD9_ColBase_15 { idc = 3415; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_24 : TSD9_ColBase_16 { idc = 3416; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_24 : TSD9_ColBase_17 { idc = 3417; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_24 : TSD9_ColBase_18 { idc = 3418; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_24 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3419; y = (TSD9_ROWHGT * 24)+TSD9_FIRSTROW; };
//--------------------25
class TSD9_Col_01_Row_25 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3501; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_25 : TSD9_ColBase_02 { idc = 3502; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_25 : TSD9_ColBase_03 { idc = 3503; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_25 : TSD9_ColBase_04 { idc = 3504; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_25 : TSD9_ColBase_05 { idc = 3505; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_25 : TSD9_ColBase_06 { idc = 3506; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_25 : TSD9_ColBase_07 { idc = 3507; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_25 : TSD9_ColBase_08 { idc = 3508; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_25 : TSD9_ColBase_09 { idc = 3509; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_25 : TSD9_ColBase_10 { idc = 3510; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_25 : TSD9_ColBase_11 { idc = 3511; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_25 : TSD9_ColBase_12 { idc = 3512; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_25 : TSD9_ColBase_13 { idc = 3513; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_25 : TSD9_ColBase_14 { idc = 3514; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_25 : TSD9_ColBase_15 { idc = 3515; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_25 : TSD9_ColBase_16 { idc = 3516; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_25 : TSD9_ColBase_17 { idc = 3517; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_25 : TSD9_ColBase_18 { idc = 3518; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_25 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3519; y = (TSD9_ROWHGT * 25)+TSD9_FIRSTROW; };
//--------------------26
class TSD9_Col_01_Row_26 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3601; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_26 : TSD9_ColBase_02 { idc = 3602; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_26 : TSD9_ColBase_03 { idc = 3603; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_26 : TSD9_ColBase_04 { idc = 3604; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_26 : TSD9_ColBase_05 { idc = 3605; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_26 : TSD9_ColBase_06 { idc = 3606; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_26 : TSD9_ColBase_07 { idc = 3607; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_26 : TSD9_ColBase_08 { idc = 3608; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_26 : TSD9_ColBase_09 { idc = 3609; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_26 : TSD9_ColBase_10 { idc = 3610; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_26 : TSD9_ColBase_11 { idc = 3611; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_26 : TSD9_ColBase_12 { idc = 3612; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_26 : TSD9_ColBase_13 { idc = 3613; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_26 : TSD9_ColBase_14 { idc = 3614; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_26 : TSD9_ColBase_15 { idc = 3615; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_26 : TSD9_ColBase_16 { idc = 3616; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_26 : TSD9_ColBase_17 { idc = 3617; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_26 : TSD9_ColBase_18 { idc = 3618; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_26 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3619; y = (TSD9_ROWHGT * 26)+TSD9_FIRSTROW; };
//--------------------27
class TSD9_Col_01_Row_27 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3701; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_27 : TSD9_ColBase_02 { idc = 3702; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_27 : TSD9_ColBase_03 { idc = 3703; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_27 : TSD9_ColBase_04 { idc = 3704; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_27 : TSD9_ColBase_05 { idc = 3705; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_27 : TSD9_ColBase_06 { idc = 3706; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_27 : TSD9_ColBase_07 { idc = 3707; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_27 : TSD9_ColBase_08 { idc = 3708; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_27 : TSD9_ColBase_09 { idc = 3709; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_27 : TSD9_ColBase_10 { idc = 3710; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_27 : TSD9_ColBase_11 { idc = 3711; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_27 : TSD9_ColBase_12 { idc = 3712; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_27 : TSD9_ColBase_13 { idc = 3713; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_27 : TSD9_ColBase_14 { idc = 3714; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_27 : TSD9_ColBase_15 { idc = 3715; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_27 : TSD9_ColBase_16 { idc = 3716; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_27 : TSD9_ColBase_17 { idc = 3717; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_27 : TSD9_ColBase_18 { idc = 3718; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_27 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3719; y = (TSD9_ROWHGT * 27)+TSD9_FIRSTROW; };
//--------------------28
class TSD9_Col_01_Row_28 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3801; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_28 : TSD9_ColBase_02 { idc = 3802; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_28 : TSD9_ColBase_03 { idc = 3803; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_28 : TSD9_ColBase_04 { idc = 3804; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_28 : TSD9_ColBase_05 { idc = 3805; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_28 : TSD9_ColBase_06 { idc = 3806; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_28 : TSD9_ColBase_07 { idc = 3807; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_28 : TSD9_ColBase_08 { idc = 3808; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_28 : TSD9_ColBase_09 { idc = 3809; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_28 : TSD9_ColBase_10 { idc = 3810; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_28 : TSD9_ColBase_11 { idc = 3811; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_28 : TSD9_ColBase_12 { idc = 3812; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_28 : TSD9_ColBase_13 { idc = 3813; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_28 : TSD9_ColBase_14 { idc = 3814; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_28 : TSD9_ColBase_15 { idc = 3815; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_28 : TSD9_ColBase_16 { idc = 3816; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_28 : TSD9_ColBase_17 { idc = 3817; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_28 : TSD9_ColBase_18 { idc = 3818; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_28 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3819; y = (TSD9_ROWHGT * 28)+TSD9_FIRSTROW; };
//--------------------29
class TSD9_Col_01_Row_29 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 3901; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_29 : TSD9_ColBase_02 { idc = 3902; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_29 : TSD9_ColBase_03 { idc = 3903; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_29 : TSD9_ColBase_04 { idc = 3904; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_29 : TSD9_ColBase_05 { idc = 3905; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_29 : TSD9_ColBase_06 { idc = 3906; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_29 : TSD9_ColBase_07 { idc = 3907; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_29 : TSD9_ColBase_08 { idc = 3908; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_29 : TSD9_ColBase_09 { idc = 3909; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_29 : TSD9_ColBase_10 { idc = 3910; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_29 : TSD9_ColBase_11 { idc = 3911; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_29 : TSD9_ColBase_12 { idc = 3912; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_29 : TSD9_ColBase_13 { idc = 3913; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_29 : TSD9_ColBase_14 { idc = 3914; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_29 : TSD9_ColBase_15 { idc = 3915; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_29 : TSD9_ColBase_16 { idc = 3916; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_29 : TSD9_ColBase_17 { idc = 3917; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_29 : TSD9_ColBase_18 { idc = 3918; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_29 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 3919; y = (TSD9_ROWHGT * 29)+TSD9_FIRSTROW; };
//---------------------------------------------
//--------------------30
class TSD9_Col_01_Row_30 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4001; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_30 : TSD9_ColBase_02 { idc = 4002; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_30 : TSD9_ColBase_03 { idc = 4003; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_30 : TSD9_ColBase_04 { idc = 4004; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_30 : TSD9_ColBase_05 { idc = 4005; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_30 : TSD9_ColBase_06 { idc = 4006; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_30 : TSD9_ColBase_07 { idc = 4007; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_30 : TSD9_ColBase_08 { idc = 4008; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_30 : TSD9_ColBase_09 { idc = 4009; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_30 : TSD9_ColBase_10 { idc = 4010; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_30 : TSD9_ColBase_11 { idc = 4011; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_30 : TSD9_ColBase_12 { idc = 4012; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_30 : TSD9_ColBase_13 { idc = 4013; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_30 : TSD9_ColBase_14 { idc = 4014; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_30 : TSD9_ColBase_15 { idc = 4015; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_30 : TSD9_ColBase_16 { idc = 4016; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_30 : TSD9_ColBase_17 { idc = 4017; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_30 : TSD9_ColBase_18 { idc = 4018; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_30 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4019; y = (TSD9_ROWHGT * 30)+TSD9_FIRSTROW; };
//--------------------31
class TSD9_Col_01_Row_31 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4101; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_31 : TSD9_ColBase_02 { idc = 4102; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_31 : TSD9_ColBase_03 { idc = 4103; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_31 : TSD9_ColBase_04 { idc = 4104; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_31 : TSD9_ColBase_05 { idc = 4105; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_31 : TSD9_ColBase_06 { idc = 4106; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_31 : TSD9_ColBase_07 { idc = 4107; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_31 : TSD9_ColBase_08 { idc = 4108; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_31 : TSD9_ColBase_09 { idc = 4109; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_31 : TSD9_ColBase_10 { idc = 4110; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_31 : TSD9_ColBase_11 { idc = 4111; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_31 : TSD9_ColBase_12 { idc = 4112; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_31 : TSD9_ColBase_13 { idc = 4113; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_31 : TSD9_ColBase_14 { idc = 4114; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_31 : TSD9_ColBase_15 { idc = 4115; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_31 : TSD9_ColBase_16 { idc = 4116; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_31 : TSD9_ColBase_17 { idc = 4117; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_31 : TSD9_ColBase_18 { idc = 4118; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_31 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4119; y = (TSD9_ROWHGT * 31)+TSD9_FIRSTROW; };
//--------------------32
class TSD9_Col_01_Row_32 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4201; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_32 : TSD9_ColBase_02 { idc = 4202; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_32 : TSD9_ColBase_03 { idc = 4203; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_32 : TSD9_ColBase_04 { idc = 4204; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_32 : TSD9_ColBase_05 { idc = 4205; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_32 : TSD9_ColBase_06 { idc = 4206; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_32 : TSD9_ColBase_07 { idc = 4207; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_32 : TSD9_ColBase_08 { idc = 4208; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_32 : TSD9_ColBase_09 { idc = 4209; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_32 : TSD9_ColBase_10 { idc = 4210; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_32 : TSD9_ColBase_11 { idc = 4211; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_32 : TSD9_ColBase_12 { idc = 4212; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_32 : TSD9_ColBase_13 { idc = 4213; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_32 : TSD9_ColBase_14 { idc = 4214; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_32 : TSD9_ColBase_15 { idc = 4215; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_32 : TSD9_ColBase_16 { idc = 4216; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_32 : TSD9_ColBase_17 { idc = 4217; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_32 : TSD9_ColBase_18 { idc = 4218; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_32 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4219; y = (TSD9_ROWHGT * 32)+TSD9_FIRSTROW; };
//--------------------33
class TSD9_Col_01_Row_33 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4301; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_33 : TSD9_ColBase_02 { idc = 4302; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_33 : TSD9_ColBase_03 { idc = 4303; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_33 : TSD9_ColBase_04 { idc = 4304; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_33 : TSD9_ColBase_05 { idc = 4305; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_33 : TSD9_ColBase_06 { idc = 4306; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_33 : TSD9_ColBase_07 { idc = 4307; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_33 : TSD9_ColBase_08 { idc = 4308; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_33 : TSD9_ColBase_09 { idc = 4309; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_33 : TSD9_ColBase_10 { idc = 4310; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_33 : TSD9_ColBase_11 { idc = 4311; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_33 : TSD9_ColBase_12 { idc = 4312; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_33 : TSD9_ColBase_13 { idc = 4313; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_33 : TSD9_ColBase_14 { idc = 4314; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_33 : TSD9_ColBase_15 { idc = 4315; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_33 : TSD9_ColBase_16 { idc = 4316; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_33 : TSD9_ColBase_17 { idc = 4317; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_33 : TSD9_ColBase_18 { idc = 4318; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_33 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4319; y = (TSD9_ROWHGT * 33)+TSD9_FIRSTROW; };
//--------------------34
class TSD9_Col_01_Row_34 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4401; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_34 : TSD9_ColBase_02 { idc = 4402; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_34 : TSD9_ColBase_03 { idc = 4403; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_34 : TSD9_ColBase_04 { idc = 4404; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_34 : TSD9_ColBase_05 { idc = 4405; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_34 : TSD9_ColBase_06 { idc = 4406; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_34 : TSD9_ColBase_07 { idc = 4407; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_34 : TSD9_ColBase_08 { idc = 4408; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_34 : TSD9_ColBase_09 { idc = 4409; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_34 : TSD9_ColBase_10 { idc = 4410; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_34 : TSD9_ColBase_11 { idc = 4411; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_34 : TSD9_ColBase_12 { idc = 4412; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_34 : TSD9_ColBase_13 { idc = 4413; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_34 : TSD9_ColBase_14 { idc = 4414; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_34 : TSD9_ColBase_15 { idc = 4415; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_34 : TSD9_ColBase_16 { idc = 4416; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_34 : TSD9_ColBase_17 { idc = 4417; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_34 : TSD9_ColBase_18 { idc = 4418; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_34 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4419; y = (TSD9_ROWHGT * 34)+TSD9_FIRSTROW; };
//--------------------35
class TSD9_Col_01_Row_35 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4501; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_35 : TSD9_ColBase_02 { idc = 4502; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_35 : TSD9_ColBase_03 { idc = 4503; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_35 : TSD9_ColBase_04 { idc = 4504; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_35 : TSD9_ColBase_05 { idc = 4505; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_35 : TSD9_ColBase_06 { idc = 4506; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_35 : TSD9_ColBase_07 { idc = 4507; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_35 : TSD9_ColBase_08 { idc = 4508; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_35 : TSD9_ColBase_09 { idc = 4509; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_35 : TSD9_ColBase_10 { idc = 4510; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_35 : TSD9_ColBase_11 { idc = 4511; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_35 : TSD9_ColBase_12 { idc = 4512; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_35 : TSD9_ColBase_13 { idc = 4513; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_35 : TSD9_ColBase_14 { idc = 4514; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_35 : TSD9_ColBase_15 { idc = 4515; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_35 : TSD9_ColBase_16 { idc = 4516; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_35 : TSD9_ColBase_17 { idc = 4517; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_35 : TSD9_ColBase_18 { idc = 4518; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_35 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4519; y = (TSD9_ROWHGT * 35)+TSD9_FIRSTROW; };
//--------------------36
class TSD9_Col_01_Row_36 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4601; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_36 : TSD9_ColBase_02 { idc = 4602; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_36 : TSD9_ColBase_03 { idc = 4603; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_36 : TSD9_ColBase_04 { idc = 4604; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_36 : TSD9_ColBase_05 { idc = 4605; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_36 : TSD9_ColBase_06 { idc = 4606; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_36 : TSD9_ColBase_07 { idc = 4607; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_36 : TSD9_ColBase_08 { idc = 4608; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_36 : TSD9_ColBase_09 { idc = 4609; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_36 : TSD9_ColBase_10 { idc = 4610; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_36 : TSD9_ColBase_11 { idc = 4611; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_36 : TSD9_ColBase_12 { idc = 4612; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_36 : TSD9_ColBase_13 { idc = 4613; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_36 : TSD9_ColBase_14 { idc = 4614; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_36 : TSD9_ColBase_15 { idc = 4615; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_36 : TSD9_ColBase_16 { idc = 4616; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_36 : TSD9_ColBase_17 { idc = 4617; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_36 : TSD9_ColBase_18 { idc = 4618; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_36 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4619; y = (TSD9_ROWHGT * 36)+TSD9_FIRSTROW; };
//--------------------37
class TSD9_Col_01_Row_37 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4701; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_37 : TSD9_ColBase_02 { idc = 4702; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_37 : TSD9_ColBase_03 { idc = 4703; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_37 : TSD9_ColBase_04 { idc = 4704; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_37 : TSD9_ColBase_05 { idc = 4705; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_37 : TSD9_ColBase_06 { idc = 4706; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_37 : TSD9_ColBase_07 { idc = 4707; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_37 : TSD9_ColBase_08 { idc = 4708; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_37 : TSD9_ColBase_09 { idc = 4709; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_37 : TSD9_ColBase_10 { idc = 4710; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_37 : TSD9_ColBase_11 { idc = 4711; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_37 : TSD9_ColBase_12 { idc = 4712; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_37 : TSD9_ColBase_13 { idc = 4713; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_37 : TSD9_ColBase_14 { idc = 4714; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_37 : TSD9_ColBase_15 { idc = 4715; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_37 : TSD9_ColBase_16 { idc = 4716; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_37 : TSD9_ColBase_17 { idc = 4717; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_37 : TSD9_ColBase_18 { idc = 4718; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_37 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4719; y = (TSD9_ROWHGT * 37)+TSD9_FIRSTROW; };
//--------------------38
class TSD9_Col_01_Row_38 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4801; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_38 : TSD9_ColBase_02 { idc = 4802; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_38 : TSD9_ColBase_03 { idc = 4803; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_38 : TSD9_ColBase_04 { idc = 4804; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_38 : TSD9_ColBase_05 { idc = 4805; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_38 : TSD9_ColBase_06 { idc = 4806; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_38 : TSD9_ColBase_07 { idc = 4807; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_38 : TSD9_ColBase_08 { idc = 4808; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_38 : TSD9_ColBase_09 { idc = 4809; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_38 : TSD9_ColBase_10 { idc = 4810; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_38 : TSD9_ColBase_11 { idc = 4811; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_38 : TSD9_ColBase_12 { idc = 4812; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_38 : TSD9_ColBase_13 { idc = 4813; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_38 : TSD9_ColBase_14 { idc = 4814; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_38 : TSD9_ColBase_15 { idc = 4815; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_38 : TSD9_ColBase_16 { idc = 4816; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_38 : TSD9_ColBase_17 { idc = 4817; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_38 : TSD9_ColBase_18 { idc = 4818; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_38 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4819; y = (TSD9_ROWHGT * 38)+TSD9_FIRSTROW; };
//--------------------39
class TSD9_Col_01_Row_39 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 4901; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_39 : TSD9_ColBase_02 { idc = 4902; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_39 : TSD9_ColBase_03 { idc = 4903; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_39 : TSD9_ColBase_04 { idc = 4904; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_39 : TSD9_ColBase_05 { idc = 4905; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_39 : TSD9_ColBase_06 { idc = 4906; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_39 : TSD9_ColBase_07 { idc = 4907; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_39 : TSD9_ColBase_08 { idc = 4908; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_39 : TSD9_ColBase_09 { idc = 4909; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_39 : TSD9_ColBase_10 { idc = 4910; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_39 : TSD9_ColBase_11 { idc = 4911; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_39 : TSD9_ColBase_12 { idc = 4912; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_39 : TSD9_ColBase_13 { idc = 4913; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_39 : TSD9_ColBase_14 { idc = 4914; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_39 : TSD9_ColBase_15 { idc = 4915; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_39 : TSD9_ColBase_16 { idc = 4916; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_39 : TSD9_ColBase_17 { idc = 4917; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_39 : TSD9_ColBase_18 { idc = 4918; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_39 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 4919; y = (TSD9_ROWHGT * 39)+TSD9_FIRSTROW; };
//---------------------------------------------
//--------------------40
class TSD9_Col_01_Row_40 : TSD9_ColBase_01_Button { style = TSD9_ST_CENTER; idc = 5001; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_02_Row_40 : TSD9_ColBase_02 { idc = 5002; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_03_Row_40 : TSD9_ColBase_03 { idc = 5003; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_04_Row_40 : TSD9_ColBase_04 { idc = 5004; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_05_Row_40 : TSD9_ColBase_05 { idc = 5005; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_06_Row_40 : TSD9_ColBase_06 { idc = 5006; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_07_Row_40 : TSD9_ColBase_07 { idc = 5007; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_08_Row_40 : TSD9_ColBase_08 { idc = 5008; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class /* TSD9_Col_09_Row_40 : TSD9_ColBase_09 { idc = 5009; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_10_Row_40 : TSD9_ColBase_10 { idc = 5010; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_11_Row_40 : TSD9_ColBase_11 { idc = 5011; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_12_Row_40 : TSD9_ColBase_12 { idc = 5012; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class */ TSD9_Col_13_Row_40 : TSD9_ColBase_13 { idc = 5013; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_14_Row_40 : TSD9_ColBase_14 { idc = 5014; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_15_Row_40 : TSD9_ColBase_15 { idc = 5015; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_16_Row_40 : TSD9_ColBase_16 { idc = 5016; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_17_Row_40 : TSD9_ColBase_17 { idc = 5017; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_18_Row_40 : TSD9_ColBase_18 { idc = 5018; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
class TSD9_Col_19_Row_40 : TSD9_ColBase_19_Button { style = TSD9_ST_LEFT; idc = 5019; y = (TSD9_ROWHGT * 40)+TSD9_FIRSTROW; };
};
