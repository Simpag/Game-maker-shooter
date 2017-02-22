///sb_wander(circle_distance, circle_radius, wander_angle, weight)
///Return vector2 for steering towards random point


var _circle_distance = argument[0];
var _circle_radius = argument[1];
var _wander_angle = argument[2]/2;
var _weight = argument[3];

// Use velocity vector to place circle
var _circle_center = vect_multr(vect_norm(velocity), _circle_distance);

var _displacement = vect2(0, -1);
_displacement = vect_multr(_displacement, _circle_radius);

//Set the angle
var _displacement_length = vect_len(_displacement);
var _random_angle = random_range(-_wander_angle, _wander_angle);
_displacement[1] = cos(_random_angle) * _displacement_length;
_displacement[2] = sin(_random_angle) * _displacement_length;

var _target_position = vect_add(position,vect_add(_circle_center, _displacement));


// Set velocity
var _desired_velocity = vect_scaler(vect_subtract(_target_position,position),max_speed);

return (vect_multr(vect_subtract(_desired_velocity,velocity),_weight));

