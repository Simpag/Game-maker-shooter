///sb_alignment(object, radius, weight)
///Return vector2 for aligning velocity with given object in given radius
///Uses collision_circle_list from GMLscripts.com

var _align_obj = argument[0];
var _align_radius = argument[1];
var _weight = argument[2];

var _neighbour_list = collision_circle_list(position[1], position[2], _align_radius, _align_obj, false, true);

if(_neighbour_list != noone) { // Has neighbours
    var _neighbour_num = ds_list_size(_neighbour_list);
    var _aligned_velocity = vect2(0,0);
    
    for(i=0; i<_neighbour_num; i++) {
        _aligned_velocity =vect_add(_aligned_velocity, _neighbour_list[|i].velocity);
    }
    //Testing adding own velocity
    _neighbour_num++;
    _aligned_velocity = vect_add(_aligned_velocity, velocity);
    //End testing
    
    _aligned_velocity = vect_divr(_aligned_velocity, _neighbour_num);

    //destroy temp ds_list
    ds_list_destroy(_neighbour_list);
    
    //return aligned velocity
    //return (vect_multr(vect_subtract(_aligned_velocity,velocity),_weight));
    return (vect_multr(vect_norm(_aligned_velocity),_weight));
} else { // No neighbours
    return vect2(0,0);
}

