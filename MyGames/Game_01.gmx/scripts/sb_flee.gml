///sb_flee(x, y, weight)
///Return vector2 for steering away from a given point

var _target = vect2(argument[0], argument[1]);
var _weight = argument[2];

// subtract target position from current position and constrain to max_speed
var _desired_velocity = vect_scaler(vect_subtract(position,_target),max_speed);

return (vect_multr(vect_subtract(_desired_velocity,velocity),_weight));

