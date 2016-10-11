///resolution_set_fullscreen(fullscreen)

var windowed = argument0;
var base_w = 320;
var base_h = 240;
var max_w = display_get_width();
var max_h = display_get_height();
var scale;

if(max_w < max_h)
    scale = floor(max_w/base_w);
else
    scale = floor(max_h/base_h);
    

if(!windowed)
{
    window_set_size(base_w*scale,base_h*scale);
    window_set_fullscreen(true);
    surface_resize(application_surface,base_w*scale,base_h*scale)
}
else
{
    window_set_size(640,480);
    window_set_fullscreen(false);
    surface_resize(application_surface,640,480);
}

