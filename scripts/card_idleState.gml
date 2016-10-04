///card_idleState
highlight = position_meeting(mouse_x,mouse_y,id);

if(highlight && mouse_check_button_pressed(mb_left) && obj_combatManager.card == false && obj_combatManager.currentTurn = turn.friend)
{
  state = card_dragState;  
  obj_combatManager.card = true;    
}

