///scr_collision
if (!place_meeting(x+move_x, y+move_y, obj_collider)) {
    x += move_x;
    y += move_y;
} else {
    //Horizontal collision
    for(i = 0; i < abs(move_x); i++) {
        if (place_meeting(x + sign(move_x), y, obj_collider)) break;
        x += sign(move_x);
    }
    
    //Vertical collision
    for(i = 0; i < abs(move_y); i++) {
        if (place_meeting(x, y + sign(move_y), obj_collider)) break;
        y += sign(move_y);
    }
}

