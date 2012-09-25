_local = _this select 0;
_pos = position _local;
_m24 = "weaponholder" createVehicleLocal _pos;
//_m24 addMagazineCargo ["30Rnd_545x39_AK",1];
_m24 addWeaponCargo ["AKS74PSO",1];
_m24 setpos [_pos select 0,_pos select 1,(_pos select 2)+0.8];