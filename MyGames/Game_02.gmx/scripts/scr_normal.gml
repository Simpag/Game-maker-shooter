///scr_normal
scr_inputs();


if (key_right) || (key_left) || (key_down) || (key_up) {
    state = playerStates.movement;
    alarm[0] = -1;
}

//Stay in normal state
if ((key_shoot) || key_use) alarm[0] = -1;

//Go into idle after 10 sec
if (!alarm[0]) alarm[0] = goIdle * room_speed;
