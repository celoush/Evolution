comment "Cheetah, 6th of January 2007 - contact: forum www.ofpec.com or cheetah99 [at] hotmail [dot] com";
comment "V1.00";

private ["_unit","_x","_upperArray","_lowerArray","_numberArray","_xLeft","_yLeft","_s1","_s2","_s3","_s4","_xCoordB","_xCoordS","_yCoordB","_yCoordS","_coord"];

_unit = _this select 0;
_xLeft = (getPos _unit) select 0;
_yLeft = (getPos _unit) select 1;

_upperArray = ["V","W","X","Y","Z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"];
_lowerArray = ["a","b","c","d","e","f","g","h","i","j"];
_numberArray = ["4","3","2","1","0","9","8","7","6","5","4","3","2","1","0","9","8","7","6"];
_numbersArray = ["1","0","9","8","7","6","5","4","3","2","1","0","9"];

_s1 = -10000;
_s2 = -8000;
_s3 = 0;

while { (_xLeft >= _s1) } do
{
  if (abs(_xLeft) < _s2) then
  {
    if (_xLeft > 0) then
    {
      _xLeft = _xLeft - ((_s3-5) * 2000);
    };
  };

  _s1 = _s1 + 2000;
  _s2 = _s2 + 2000;
  _s3 = _s3 + 1;

};

if (abs(_xLeft) >= 2000) then
{
  _xLeft = _xLeft + (abs(_s3-5) * 2000);
  _x = 1;
};
_s4 = (abs(_xLeft) / 200);
_s4 = (_s4 - (_s4 mod 1));
_xCoordB = (_upperArray select (_s3-1));
if(_x == 1) then { _s4 = 9-_s4; };
if(_xCoordB == "Z") then { _s4 = 9-_s4; };
_xCoordS = (_lowerArray select _s4);

_s1 = -9520;
_s2 = -7520;
_s3 = 0;

while { (_yLeft >= _s1) } do
{
  if (_yLeft < _s2) then
  {

  if (_yLeft < 0) then
  {
    _yLeft = _yLeft + (_s3 * 2000);
    _yLeft = _yLeft * -1;
  }
  else
  {
    _yLeft = _yLeft - ((_s3-5) * 2000);
    };
  };

  _s1 = _s1 + 2000;
  _s2 = _s2 + 2000;
  _s3 = _s3 + 1;
};
_s4 = ((_yLeft-80) / 200);
_yCoordS = (_numbersArray select (_s4 - (_s4 mod 1)));
_yCoordB = (_numberArray select (_s3-1));

_coord = format ["%1%2%3%4",_xCoordB,_xCoordS,_yCoordB,_yCoordS];
_coord