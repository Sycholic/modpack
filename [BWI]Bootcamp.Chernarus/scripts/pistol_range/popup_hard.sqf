_inc     = 0;
_count   = 0;
_targets = [pr1, pr2, pr3, pr4, pr5, pr6, pr7, pr8, pr9];
_many    =  count _targets;

nopop=true;
{_x  animate["terc",1]} forEach _targets;


hint "Begin!";
_target removeAction _action;
while {_inc<10} do 
{
_rnumber = random _many-1;
_rtarget = _targets select _rnumber;
_rtarget animate["terc", 0];
sleep 1;
 if (_rtarget animationPhase "terc" > 0.1) then
{
		_count = _count+1;
		    };
   hint format ["Targets :%1 Hit :%2",_inc+1,_count];
_rtarget animate["terc", 1];
_inc = _inc + 1;
};
sleep 1;
hint "Complete!";
