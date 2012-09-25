_grp = _this select 0;
rscripts=rscripts+1;
waitUntil {count units _grp == 0};
deleteGroup _grp;
gdel = gdel+1;
rscripts=rscripts-1;