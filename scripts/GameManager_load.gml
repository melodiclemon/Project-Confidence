if(file_exists("save.ini"))
{
    ini_open("save.ini");
    with(GameManager)
    {
        transitionToX = ini_read_real("player","x",-1);
        transitionToY = ini_read_real("player","y",-1);
        transitionToRoom = ini_read_real("player","room",0);
    }
    
    ini_close();
}
