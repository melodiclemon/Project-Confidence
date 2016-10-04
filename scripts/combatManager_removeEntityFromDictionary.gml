//combatManager_removeEntityFromDictionary(id)

var i;
var key = ds_map_find_first(obj_combatManager.entityDictionary)
for(i = 0; i < ds_map_size(obj_combatManager.entityDictionary); i++)
{
     if(obj_combatManager.entityDictionary[? key].id == argument0)
     {
        ds_map_delete(obj_combatManager.entityDictionary,key);
        exit;
     }
     else
        key = ds_map_find_next(obj_combatManager.entityDictionary,key); 
}

