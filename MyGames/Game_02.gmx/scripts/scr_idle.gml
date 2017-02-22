///scr_idle
//insert idle sprite here: sprite_index = spr_player_idle
scr_inputs();

if (key_right) || (key_left) || (key_down) || (key_up) {
    state = playerStates.normal;
}
