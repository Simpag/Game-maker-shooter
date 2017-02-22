///sb_seek_arrive(x, y, slow_radius, weight)
///Return vector2 for steering towards given point with slowing inside a radius

var _target = vect2(argument[0], argument[1]);
var _slow_radius = argument[2];
var _weight = argument[3];

// subtract current position from target position and constrain to max_speed
//var _desired_velocity = vect_scaler(vect_subtract(_target,position),max_speed);
var _desired_velocity = vect_subtract(_target,position);
var _distance = vect_len(_desired_velocity);

if(_distance < _slow_radius) { //Inside slowing radius
    _desired_velocity = vect_multr(vect_norm(_desired_velocity), max_speed * (_distance / _slow_radius));
} else { // Outside slowing radius
    _desired_velocity = vect_multr(vect_norm(_desired_velocity), max_speed);
}

return (vect_multr(vect_subtract(_desired_velocity,velocity),_weight));

