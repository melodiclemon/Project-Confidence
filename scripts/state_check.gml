///state_check(obj,currentState,id)

/*
Checks the current state and returns it. In the case that the object does not
exist it returns noone. if you DONT want to use this as an ASSIGNER set the 
currentState to undefined. if you have a specific instance in mind, add the id.

*/



var i, arg;

var i, arg;
for (i = 0; i < 3; i++)
{
    if(argument_count > i)
    {
        arg[i] = argument[i]
    }
    else
    {
        arg[i] = -1;
    }
}


var obj = arg[0];
var inst = arg[2];
var cS = arg[1];

if(instance_exists(obj))
{
    if(inst)
        return inst.state;
    else
        return obj.state; 
}
else
{
    if(cS != undefined)
        return cS
    else
        return noone;
}
