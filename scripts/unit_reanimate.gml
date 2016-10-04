///unit_reanimate()

if(reanimate == 0)
{
    exit;
}
    
else
{
    var inst = instance_create(x,y,id.object_index);
    inst.defense++;
    inst.reanimate = reanimate -1;
    inst.canAttack = false;
}
