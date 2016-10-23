ini_open("save.ini");

obj_player.x = ini_read_real("player","x",-1);
obj_player.y = ini_read_real("player","y",-1);

ini_close();
