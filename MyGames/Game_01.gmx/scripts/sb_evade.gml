///sb_evade(object, weight)
///Return vector2 for evading a specified object considering it's velocity

var _target_obj = argument[0];
var _weight = argument[1];

if(instance_exists(_target_obj)) { // Target exists
    // var _time = 10; // basic
    var _time = vect_dist(position, _target_obj.position) / _target_obj.max_speed; // dynamic
    var _target_future_pos = vect_add(_target_obj.position, vect_multr(_target_obj.velocity, _time));
    
    
    // subtract current position from target position and constrain to max_speed
    var _desired_velocity = vect_scaler(vect_subtract(position,_target_future_pos),max_speed);
    
    return (vect_multr(vect_subtract(_desired_velocity,velocity),_weight));

} else { // No target
    return vect2(0,0);
}
