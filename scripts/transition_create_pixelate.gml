///transition_create_pixelate(upScaleTime,downScaleTime,maxPixelSize)

var upScaleTime = argument0;
var downScaleTime = argument1;

var maxSize = argument2;

var inst = instance_create(0,0,TransitionManager);
inst.pixelSize = 0.1;
inst.maxPixelSize = argument2;
inst.transition = transitionType.pixelate;
ds_queue_enqueue(inst.timers,argument0,argument1);
