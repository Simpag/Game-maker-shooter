//Find out how many spawnpoints there are in the room
var _room;
for (i = 0; i < global.numberOfRooms; i++){
    if (room == global.spawnPointArray[i, 0]) {
        _room = i;
        break;
    }
}

//Create the spawnpoints and assign them to an array for the enemies to pick from
var _i = 2;
for (i = 0; i < global.spawnPointArray[_room, 1]; i++) {
    var _x = global.spawnPointArray[_room, _i];
    _i++;
    var _y = global.spawnPointArray[_room, _i];
    _i++;
    global.spawnPointsToChoose[i] = instance_create(_x, _y, cont_spawnPoint);
}
