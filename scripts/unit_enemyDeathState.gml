///unit_enemyDeathState()

if(sprite_index != animations[? "death"])
    animation_play(animations[? "death"],0,animDeathSpeed);
 
       
if(animation_end() && sprite_index == animations[? "death"])
{
    if(reanimate > 0)
    {
        state = unit_enemyReanimateState;
        exit;
    }
    else
        instance_destroy();
}
