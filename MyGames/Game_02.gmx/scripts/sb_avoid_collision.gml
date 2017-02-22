///sb_avoid_collision(object, see_ahead_distance, max_avoidance_force, weight)
///Return vector2 for avoiding colliding with specified object
///Requires collsion_line_first from GMLscripts.com


var _avoid_obj = argument[0];
var _see_ahead_distance = argument[1];
var _max_avoidance_force = argument[2];
var _weight = argument[3];

var _see_ahead = vect_add(position, vect_multr(vect_norm(velocity), _see_ahead_distance));
var _nearest_obj = collision_line_first(position[1], position[2],
                                        _see_ahead[1], _see_ahead[2],
                                        _avoid_obj,
                                        false,
                                        true);

if(_nearest_obj != noone) {
    var _avoidance_force = vect_subtract(_see_ahead, _nearest_obj.position);
    _avoidance_force = vect_norm(_avoidance_force);
    _avoidance_force = vect_multr(_avoidance_force, _max_avoidance_force);
    
    return vect_multr(_avoidance_force, _weight);
} else {
    return vect2(0,0);
}
                                        

