///unit_destroy()
/*
    
*/

if(object_index == obj_unitFriend)
{
    instance_destroy();
}
else if(object_get_parent(object_index) == obj_unitFoe)
{
    if(reanimate == 0)
        instance_destroy();
    else
        unit_reanimate();
}
