_player = _this select 0;
_supp = _this select 1;
_coord = _this select 2;


_messege = format["Requesting %1 at grid coord %2",_supp,_coord];

_player sideChat _messege;

sleep 3.0;
_messege = format["Received and understood %1, your ordnance is on the way",(name _player)];

[West,"HQ"] SideChat _messege;