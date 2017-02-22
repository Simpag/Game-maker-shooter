/*
[i,0] = which room
[i,1] = number of spawners in room, only needs to be on the first spawnpoint
[i,2] = #1 x cord
[i,3] = #1 y cord
[i,4] = #2 x cord
[i,5] = #2 y cord
[i,6] = #3 x cord
[i,7] = #3 y cord
...
*/

numberOfSpawnPointInfo = 8; // !!!!! DONT FORGET TO INCREASE !!!!!!
global.numberOfRooms = 1; // !!!!! DONT FORGET TO INCREASE !!!!!!

//Reset amout of spawnpoints
for (i = 0; i < global.numberOfRooms; i++) {
    for(j = 0; j < numberOfSpawnPointInfo; j++) {
        global.spawnPointArray[i,j] = 0;   
    }
}

//rm_test
global.spawnPointArray[0,0] = rm_test; //which room
global.spawnPointArray[0,1] = 3; //Number of spawnpoints
global.spawnPointArray[0,2] = 544; //x cord
global.spawnPointArray[0,3] = 352; //y cord 
global.spawnPointArray[0,4] = 416; //#2 x cord
global.spawnPointArray[0,5] = 576; //#2 y cord
global.spawnPointArray[0,6] = 600; //#3 x cord
global.spawnPointArray[0,7] = 200; //#3 y cord
