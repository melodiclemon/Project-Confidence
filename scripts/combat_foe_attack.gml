///combat_enemy_attack()
obj_unitFriend.defense -= attack;

//apply shake to the screen
if(instance_exists(CameraManager))
{
    CameraManager.shake = attack;
}
