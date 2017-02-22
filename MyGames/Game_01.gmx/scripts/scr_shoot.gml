///scr_shoot
//Remove bullet from clip
global.weaponArray[weapon,8]--;

//Rate of fire
canShoot = false;
alarm[0] = room_speed/global.weaponArray[weapon, 6];

//Create the muzzle flash
//scr_muzzleflash_play();

var _dir = obj_player.image_angle - 15;

//Create bullet and set speed and direction
bullet = instance_create(obj_player.x + lengthdir_x(global.weaponArray[weapon, 10], _dir), obj_player.y + lengthdir_y(global.weaponArray[weapon, 11], _dir), obj_bullet); 
bullet.direction = obj_player.image_angle;
bullet.speed = global.weaponArray[weapon, 4];
