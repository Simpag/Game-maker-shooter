x = obj_player.x + lengthdir_x(global.weaponArray[weapon, 5], obj_player.facing);
y = obj_player.y + lengthdir_y(global.weaponArray[weapon, 6], obj_player.facing);

/*scr_inputs();
var mx = key_right - key_left;
var my = key_down - key_up;
a = mx;
b = my * 0.1;
c = a + b;

switch (c) {
    case 1: //Right
        obj_gun.rotateOffsetX = 0;
        obj_gun.rotateOffsetY = -(obj_player.sprite_height/2) + global.weaponArray[obj_gun.weapon, 6] + 1;
        break;
    
    case -1: //Left 
        obj_gun.rotateOffsetX = -(obj_player.sprite_width/2) + global.weaponArray[obj_gun.weapon, 5] + 1;
        obj_gun.rotateOffsetY = -(obj_player.sprite_height/2) + global.weaponArray[obj_gun.weapon, 6] + 2;
        break;
    
    case 0.10: //Down
        obj_gun.rotateOffsetY = 0;
        obj_gun.rotateOffsetX = 0;
        break;
    
    case -0.10: //Up
        obj_gun.rotateOffsetX = -(obj_player.sprite_width/2) + global.weaponArray[obj_gun.weapon, 5] + 1;
        obj_gun.rotateOffsetY = -(obj_player.sprite_height/2) + global.weaponArray[obj_gun.weapon, 6];
        break;
    
    case 1.10: //Right down
        obj_gun.rotateOffsetX = 2;
        obj_gun.rotateOffsetY = -(obj_player.sprite_height/4) + global.weaponArray[obj_gun.weapon, 6] -2;
        break;
    
    case 0.90: //Right up
        
        break;
    
    case -0.90 : //Left down
        
        break;
    
    case -1.10: //Left up
        
        break;
}
