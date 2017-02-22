///scr_move
scr_inputs();

/* Move direction
key left will be either -1 or 0
Key right will be either 1 or 0
So its move = -1 + 0 = -1 or
move = 0 + 1 = 1 or
move = 0 + 0 = 0 or
move = -1 + 1 = 0
*/
var move_x_dir = key_right - key_left;
var move_y_dir = key_down - key_up;

//Acceleration
var move_x_add = move_x_dir * move_acceleration;
var move_y_add = move_y_dir * move_acceleration;

//Restitution
/*
move_x_sub = if our current x is less than move_x_restitution then subtract that so we don't go under 0
then multiplay it by the direction we're moveing and if we're not pressing a button move_x_dir == 0 will be 
equal to 1 but if we're pressing a button it will be equal to 0.
*/
var move_x_sub = min(move_restitution, abs(move_x)) * sign(move_x) * (move_x_dir == 0);
var move_y_sub = min(move_restitution, abs(move_y)) * sign(move_y) * (move_y_dir == 0);

//Make sure that move_x is always inbetween -movespeed and movespeed
move_x = clamp(move_x + move_x_add - move_x_sub, -moveSpeed, moveSpeed);
move_y = clamp(move_y + move_y_add - move_y_sub, -moveSpeed, moveSpeed);

//If we move diagonally the two speed vectors will be added together so we'll move faster than the movespeed.
//So normalize the move
if !(move_x == 0 && move_y == 0) { //If the player is moving
    var dist = sqrt(sqr(move_x) + sqr(move_y)); //Basic vector calculation
    var mindist = min(moveSpeed, dist);
    move_x = (move_x / dist) * mindist;
    move_y = (move_y / dist) * mindist;
    
    //Facing direction of the player
    scr_graphics();
    
    //Collision checking
    scr_collision();
} else {
    state = playerStates.normal;
}
