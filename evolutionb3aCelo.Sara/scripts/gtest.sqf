
_i = 0;
_j = (count list alleast);
_var = list alleast;
_total = 0;
while {_i < _j} do 
{
	_unit = _var select _i;
	if (vehicle _unit == leader group _unit) then
	{	
		_total = _total +1;
	};
	_i = _i + 1;
};

hint format["
enemygroups = %1\n
groups deleted = %2\n
loops = %3\n
scripts = %4\n
",
_total,
gdel,
rscripts,
vscripts
];