///stick_throwState()

if(canThrow)
{
    xx = mouse_x;
    yy = mouse_y;
    canThrow = false;
}

image_angle += 40;

move_towards_point(xx,yy,5);


if(point_distance(x,y,obj_player.x,obj_player.y) > 150)
{
    with(Doggie)
    {
        state = doggie_getStickState; 
    }
    vspeed = 0;
    hspeed = 0;
    state = stick_idleState;
}
