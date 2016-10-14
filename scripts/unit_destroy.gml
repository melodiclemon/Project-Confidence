///unit_destroy()
/*
    
*/
if(object_index == obj_unitFriend)
{
    instance_destroy();
}
else if(object_get_parent(object_index) == obj_unitFoe)
    instance_destroy();

