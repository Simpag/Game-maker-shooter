//Weapon Array
/*
[i,0] = Name                                1
[i,1] = Weapon number                       2
[i,2] = Ammo                                3
[i,3] = Damage                              4
[i,4] = Bullet Speed                        5
[i,5] = Range                               6
[i,6] = Rate Of Fire (per s)                7
[i,7] = Reaload Time In Sec                 8
[i,8] = Current Clip                        9
[i,9] = Clip Size                           10
[i,10] = Bullet x Offset                    11
[i,11] = Bullet y Offset                    12
[i,12] = Bullet Sprite Index                13
[i,13] = Idle Sprite Index                  14
[i,14] = Move Sprite Index                  15
[i,15] = Melee Sprite Index                 16
[i,16] = Reload Sprite Index                17
[i,17] = Shoot Sprite Index                 18
*/
numberOfWeaponInfo = 18; // !!!!! DONT FORGET TO INCREASE !!!!!!
global.numberOfWeapons = 1; // !!!!! DONT FORGET TO INCREASE !!!!!!

//Fill array to prevent crash
for (i = 0; i < global.numberOfWeapons; i++) {
    for(j = 0; j < numberOfWeaponInfo; j++) {
        global.weaponArray[i,j] = 0;   
    }
}

// [0] Handgun
global.weaponArray[0,0] = "Handgun";                    //Name
global.weaponArray[0,1] = 1;                            //Weapon Number
global.weaponArray[0,2] = 15;                           //Ammo
global.weaponArray[0,3] = 25;                           //Damage
global.weaponArray[0,4] = 10;                           //Bullet speed
global.weaponArray[0,5] = 2000;                         //Range
global.weaponArray[0,6] = 2;                            //Rate of fire (per s)
global.weaponArray[0,7] = 0.5;                          //Reaload Time In Sec
global.weaponArray[0,8] = 20;                           //Current Clip  
global.weaponArray[0,9] = 20;                           //Clip Size 
global.weaponArray[0,10] = 144;                         //Bullet x Offset
global.weaponArray[0,11] = 144;                         //Bullet y Offset
global.weaponArray[0,12] = spr_player_handgun_bullet;   //Bullet Sprite Index 
global.weaponArray[0,13] = spr_player_handgun_idle;     //Idle Sprite Index
global.weaponArray[0,14] = spr_player_handgun_move;     //Move Sprite Index             
global.weaponArray[0,15] = spr_player_handgun_idle;     //Melee Sprite Index    
global.weaponArray[0,16] = spr_player_handgun_idle;     //Reload Sprite Index
global.weaponArray[0,17] = spr_player_handgun_idle;     //Shoot Sprite Index

