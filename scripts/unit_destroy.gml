///unit_destroy()
/*
    
*/
if(object_index == obj_unitFriend)
{
    //state = unit_friendDefeatState;
}
else if(object_get_parent(object_index) == obj_unitFoe)
    instance_destroy();

