///scr_randomweapon(tier of weapon)
//argument0 = which tier to give a weapon from
tier = argument0;
var weapon, rnd, give;

//Get the array of that tier
//weapon = scr_weapontier_array(tier); This should not be a comment

//Get a random number from 0 to the length of the array
rnd = irandom_range(0, array_length_1d(weapon));

//Return the weapon
give = weapon[rnd];
return(give);
