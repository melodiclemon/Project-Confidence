
// if we release the card, check if it we are 
// on a value or we want to return to the original position
if(mouse_check_button_released(mb_left))
{
    if(place_meeting(x,y,obj_unitFriend))
    {
        card_dragOnFriend(type);   
    }
    else if(place_meeting(x,y,obj_unitFoe))
    {
        card_dragOnFoe(type);
    }
    else if(place_meeting(x,y,obj_deck) && obj_deck.canRedraw)
    {
        card_removeCardFromArray(id);
        obj_deck.cardTriggerDraw++;
        obj_combatManager.currentTurn = turn.draw;
        obj_deck.canRedraw = false;
        instance_destroy();
    }
    else
    {
        state = card_moveToBaseState;
      
    }
    obj_combatManager.card = false;
    highlight = false;
}


//make sure the card follows the mouse
x = smooth_approach(x,mouse_x,.2);
y = smooth_approach(y,mouse_y,.2);


