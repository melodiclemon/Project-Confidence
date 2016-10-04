///card_immuneToCardType(foe,type)

// Checks if the enemy is immune to a card of a certain type

var foe = argument0;
var type = argument1;

if(foe.immuneToCardType[type] == 1)
    return true;
else
    return false;

