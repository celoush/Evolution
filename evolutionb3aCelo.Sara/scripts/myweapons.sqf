


for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	sleep 1.001;
	waitUntil {animationState player == "ainvpknlmstpslaywrfldnon" or animationState player == "ainvpknlmstpsnonwnondnon_3"};
	waitUntil {animationState player != "ainvpknlmstpslaywrfldnon" and animationState player != "ainvpknlmstpsnonwnondnon_3"};

	pweapons = weapons player;
	_count = count _weapons;
	pallammo = [];
	i=0;
	while {_i < _count} do 
	{
		_gun = _weapons select 0;
		_ammo = player ammo _gun;
		pallammo = pallammo + [_ammo];
		_i=_i+1;
		sleep 0.1;
	};
	//_ammo = ammo player;
	//_ammo = "test";
	hint format["weapons = %1, ammo = %2",pweapons,pallammo];
};




