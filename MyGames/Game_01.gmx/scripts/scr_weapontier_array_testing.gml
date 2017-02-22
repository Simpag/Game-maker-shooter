///scr_weapontier_array(which tier)
/*
i = tier
x = weapon
[i,x]
*/
tier = argument0; //Which tier they are asking for

var _tier1, _tier2
_tier1 = 0;
_tier2 = 0;

for (i = 0; i < global.numberOfWeapons; i++) {
    if ((global.weaponArray[i, 10] == 1) && (tier == 1)) {
        mysteryWeaponArrayTier1[_tier1] = i;
        _tier1++;
    } else if (global.weaponArray[i, 10] == 2) {
        mysteryWeaponArrayTier2[_tier2] = i;
        _tier2++;
    }
}

if (tier == 1) {
    return(mysteryWeaponArrayTier1);
} else if (tier == 2) {
    return(mysteryWeaponArrayTier2);
}
