_sop = _this select 0;
_sot = _this select 1;
_sor = _this select 2;


if(_sor > 0) then
{
	switch (_sot) do
	{
	    case parso1:
	    {
		[west,"HQ"] sideradio "SUB_par";
	    };
	    case parso2:
	    {
		[west,"HQ"] sideradio "SUB_parb";
	    };
	    case somso1:
	    {
		[west,"HQ"] sideradio "SUB_som";
	    };
	    case somso2:
	    {
		[west,"HQ"] sideradio "SUB_somb";
	    };
	    case cayso1:
	    {
		[west,"HQ"] sideradio "SUB_cay";
	    };
	    case cayso2:
	    {
		[west,"HQ"] sideradio "SUB_cayb";
	    };
	    case dolso1:
	    {
		[west,"HQ"] sideradio "SUB_dol";
	    };
	    case dolso2:
	    {
		[west,"HQ"] sideradio "SUB_dolb";
	    };
	    case ortso1:
	    {
		[west,"HQ"] sideradio "SUB_ort";
	    };
	    case ortso2:
	    {
		[west,"HQ"] sideradio "SUB_ortb";
	    };
	    case corso1:
	    {
		[west,"HQ"] sideradio "SUB_cor";
	    };    
	    case corso2:
	    {
		[west,"HQ"] sideradio "SUB_corb";
	    };
	    case obrso1:
	    {
		[west,"HQ"] sideradio "SUB_obr";
	    };
	    case obrso2:
	    {
		[west,"HQ"] sideradio "SUB_obrb";
	    };
	    case bagso1:
	    {
		[west,"HQ"] sideradio "SUB_bag";
	    };
	    case bagso2:
	    {
		[west,"HQ"] sideradio "SUB_bagb";
	    };
	    case eposo1:
	    {
		[west,"HQ"] sideradio "SUB_epo";
	    };
	    case eposo2:
	    {
		[west,"HQ"] sideradio "SUB_epob";
	    };
	    case masso1:
	    {
		[west,"HQ"] sideradio "SUB_mas";
	    };
	    case masso2:
	    {
		[west,"HQ"] sideradio "SUB_masb";
	    };
	    case pitso1:
	    {
		[west,"HQ"] sideradio "SUB_pit";
	    };
	    case pitso2:
	    {
		[west,"HQ"] sideradio "SUB_pitb";
	    }; 
	};
};

if (group player != group _sop) exitWith {};

//if (player distance _sop > 100) exitWith {};
if(_sot == _sop and _sop == vehicle player) exitWith {player addscore _sor;hint "You have broken the rules of engagment, -30 points"};
if(_sot != _sop) then {player addscore _sor;_sot removealleventhandlers "killed";deletevehicle _sot};