//card_dragOnFoe(cardType)

var type = argument0;
show_debug_message("type" + string(type));
var foe = instance_place(x,y,obj_unitFoe);

if(type == cardType.normalCard && !card_immuneToCardType(foe,type))
{
    foe.defense += cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.negativeCard && foe.attack != 0  && !card_immuneToCardType(foe,type))
{
    if(foe.attack - cardValue < 0)
        foe.attack = 0;
    else
        foe.attack -= cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.powerCard && !card_immuneToCardType(foe,type))
{
    foe.defense += cardValue;
    foe.attack += cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.reverseCard && !card_immuneToCardType(foe,type))
{
    var tempAttack =  foe.attack;
    var tempDef =  foe.defense;
    foe.defense = tempAttack;
    foe.attack = tempDef;
    card_removeCardFromArray(id);
    obj_deck.cardTriggerDraw++;
    obj_combatManager.currentTurn = turn.draw;
    instance_destroy();
    exit;
}
else if(type == cardType.sigmaCard && !card_immuneToCardType(foe,type))
{
    foe.attack += card_sigmaEffect();
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
{
    state = card_moveToBaseState; 
}
