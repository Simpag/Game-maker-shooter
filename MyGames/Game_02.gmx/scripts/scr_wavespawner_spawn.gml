//If tospawn is less than spawncap set the amout to be spawned to tospawn
if (OrgToSpawn > global.spawnCap) spawn = global.spawnCap - instance_number(obj_enemy_parent);


if (instance_number(obj_enemy_parent) < global.spawnCap && global.enemiesLeft > 0) {
    do {
        _toSpawn -= 1;
        spawn -= 1;
        var s = irandom(array_length_1d(global.spawnPointsToChoose)-1); //-1 because its zero based
        var _x = global.spawnPointsToChoose[s].x
        var _y = global.spawnPointsToChoose[s].y
        
        //Make sure the enemy is not ontop of another
        var spawn_id = instance_create(_x, _y, obj_enemy_parent);
        do {
            spawn_id.x += irandom_range(-10, 10);
            spawn_id.y += irandom_range(-10, 10);
        
            with (spawn_id) {
                collision = place_meeting(x,y,obj_collider);
                collision = place_meeting(x,y,obj_enemy_parent);
            }
        }
        until spawn_id.collision == 0;
    } 
    until spawn == 0;
}

if (_toSpawn > 0) {
    alarm[1] = 0.5 * room_speed; //Wait 0.5 sec to check if the player killed any enemies
}
