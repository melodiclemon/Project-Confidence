///transition_pixelate()

if(!transitionActive)
{
    transitionActive = true;
    timerSeconds = ds_queue_dequeue(timers);
    alarm[0] = timerSeconds * room_speed;
}
   
var aSize = application_get_position();
//if the surface doesn't exist we create it.
if(!surface_exists(sur))
{
    //sur = surface_create(display_get_gui_width(), display_get_gui_height());
    sur = surface_create(display_get_gui_width(), display_get_gui_height());
}

// resize the application surface so that we can make a perfect copy of it to our 
// created surface.

if(surface_exists(application_surface) && surface_exists(sur))
{
    surface_resize(application_surface, display_get_gui_width(), display_get_gui_height());
    surface_copy(sur,0,0,application_surface); 
}

//Draw the surface
if(surface_exists(sur))
{
    if(shader_is_compiled(shd_pixelate))
    {
        shader_set(shd_pixelate);
        var s = shader_get_uniform(shd_pixelate,"size");
        shader_set_uniform_f(s,surface_get_width(sur),surface_get_height(sur));
        //shader_set_uniform_f(s,aSize[2],aSize[3]);
        var ps = shader_get_uniform(shd_pixelate,"pixelSize");
        shader_set_uniform_f(ps,pixelSize);
        draw_surface(sur,0,0);
        shader_reset();
    }
    else
    {
         draw_surface(sur,0,0);
    }
}

