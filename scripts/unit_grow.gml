if(obj_combatManager.currentTurn != turn.upkeep && canGrow == false)
{
    canGrow = true;
}

if(obj_combatManager.currentTurn == turn.upkeep && canGrow == true)
{
    defense+= growDefense;
    attack+= growAttack;
    canGrow = false;
}


