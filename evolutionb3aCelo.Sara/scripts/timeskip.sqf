// Skips time -KilJoy
sleep 1.0;
_temp = compile gdate_packed;
_date = call _temp;
setDate _date;
rscripts=rscripts+1;


//gdate = [2007,7,4,Param2,59];


//setDate

for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
   sleep 10.0;
   setDate [date select 0,date select 1,date select 2,date select 3,(date select 4)+1];
   //skiptime 0.00052;
};