//card_dragOnFriend(cardType)

var type = argument0;
var target = obj_combatManager.attackTarget;

if(type == cardType.normalCard)
{
    obj_unitFriend.attack += cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.negativeCard)
{
    obj_unitFriend.defense -= cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.powerCard)
{
    obj_unitFriend.attack += cardValue;
    obj_unitFriend.defense += cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else if(type == cardType.reverseCard)
{
    if(obj_unitFriend.attack == 0)
    {
        state = card_moveToBaseState;
        exit;
    }
    var tempAttack =  obj_unitFriend.attack;
    var tempDef =  obj_unitFriend.defense;
    obj_unitFriend.attack = tempDef;
    obj_unitFriend.defense = tempAttack;
    card_removeCardFromArray(id);
    obj_deck.cardTriggerDraw++;
    obj_combatManager.currentTurn = turn.draw;
    instance_destroy();
    exit;
}
else if(type == cardType.multiCard)
{
    obj_unitFriend.attack *= cardValue;
    card_removeCardFromArray(id);
    obj_deck.draw++;
    instance_destroy();
    exit;
}
else
{
    state = card_moveToBaseState; 
}
