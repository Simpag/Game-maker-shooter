///scr_object_is_around(range on all sides, object to check)
//argument0 = range around the object
//argument1 = which object to check if its in the radius 

var _inRange, _range, _obj;

_range = argument0;
_obj = argument1;

if (place_meeting(x + _range, y, _obj)) {
    _inRange = true;
} else if (place_meeting(x, y + _range, _obj)) {
    _inRange = true;
} else if (place_meeting(x - _range, y, _obj)) {
    _inRange = true;
} else if (place_meeting(x, y - _range, _obj)) {
    _inRange = true;
} else {
    _inRange = false;
}

return(_inRange);
