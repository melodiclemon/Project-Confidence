///ability_stick()

inventory_removeItem(1);
//show_message("stick");
var stick = instance_create(obj_player.x,obj_player.y,Stick);
stick.state = stick_throwState;

state = Player_Overworld_Idle;
