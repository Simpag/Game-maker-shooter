///scr_random_weapon_ticket() Gives an random weapon based on tickets
var _winWeapon, _totalTicket, _winTicket;
_totalTicket = 0;
_winTicket = 0;
_winWeapon = 0;

for (i = 0; i < global.numberOfWeapons; i++) {
    _totalTicket += global.weaponArray[i,10]; //tickets
}

_winTicket = irandom_range(1, _totalTicket);

for (i = 0; i < global.numberOfWeapons; i++) {
    _winTicket -= global.weaponArray[i, 10];
    if (_winTicket <= 0) {
        _winWeapon = global.weaponArray[i,11] //weapon number
        break;        
    }
}

return(_winWeapon);
