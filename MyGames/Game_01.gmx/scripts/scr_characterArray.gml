//Weapon Array
/*
[i,0] = Name                        1
[i,1] = Sprite index                2
[i,2] = Character number            3
*/
numberOfCharacterInfo = 3; // !!!!! DONT FORGET TO INCREASE !!!!!!
global.numberOfCharacters = 2; // !!!!! DONT FORGET TO INCREASE !!!!!!

//Fill array to prevent crash
for (i = 0; i < global.numberOfCharacters; i++) {
    for(j = 0; j < numberOfCharacterInfo; j++) {
        global.characterArray[i,j] = 0;   
    }
}

// [0] test character 0
global.characterArray[0,0] = "Test Character 0"; //Name
global.characterArray[0,1] = spr_testcharacter1; //Sprite index
global.characterArray[0,2] = 0; //Character number

// [1] test character 1
global.characterArray[1,0] = "Test Character 1"; //Name
global.characterArray[1,1] = spr_testcharacter2; //Sprite index
global.characterArray[1,2] = 1; //Character number
