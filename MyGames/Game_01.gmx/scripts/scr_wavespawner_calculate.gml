//Spawn algorithm ((0.0011*x^2+5)+sin(0.2*x))
var w = global.wave*10;
OrgToSpawn = round(((0.0011*power(w, 2)+5)+sin(0.2*w)));

//Add the amout of enemies to spawn to the amount to kill
global.enemiesLeft = OrgToSpawn;

//Spawn the enemies
_toSpawn = OrgToSpawn;
if (OrgToSpawn < global.spawnCap) {
    spawn = OrgToSpawn;
}
scr_wavespawner_spawn();
