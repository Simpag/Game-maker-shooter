///scr_reload()
//Insert reload animation here
cont_cursor.sprite_index = spr_cursor_reload;
if (global.weaponArray[weapon,2] > 0) {
    canShoot = false;
    alarm[1] = global.weaponArray[weapon,7] * room_speed;
}
