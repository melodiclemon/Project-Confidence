///transition_create(transitionType,id)

var instId = argument1;

switch(argument0)
{
    case transitionType.null:
        exit;
        break;
    case transitionType.pixelate:
        transition_create_pixelate(instId.upScaleTime,instId.downScaleTime,instId.maxPixelSize);
        break;
}
