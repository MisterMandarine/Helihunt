_unsterb = [player1, player2, player3, player4, hunter1];
{
_x allowDamage false;
} forEach _unsterb;
sleep 60;
{
_x allowDamage true;
} forEach _unsterb;
