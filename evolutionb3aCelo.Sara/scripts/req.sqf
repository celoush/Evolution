_player = _this select 0;
_name = name vehicle _player;
_rank = rank _player;
_reqrank = _this select 1;
_nrank = "test";

switch (_reqrank) do
{
    case rank1:
    {
	_nrank = "CORPORAL";
    };
    case rank2:
    {
	_nrank = "SERGEANT";
    };
    case rank3:
    {
	_nrank = "LIEUTENANT";
    };
    case  rank4:
    {
	_nrank = "CAPTAIN";
    };
    case  rank5:
    {
	_nrank = "MAJOR";
    };
    case  rank6:
    {
	_nrank = "COLONEL";
    };
};

hint format[localize "EVO_032",_nrank,_rank];
//exitWith {};

