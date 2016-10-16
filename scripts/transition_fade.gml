///transition_fade()



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
    sur = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
}

// resize the application surface so that we can make a perfect copy of it to our 
// created surface.
if(surface_exists(application_surface) && surface_exists(sur))
{
    surface_copy(sur,0,0,application_surface); 
}

//Draw the surface
if(surface_exists(sur))
{
    if(shader_is_compiled(shd_fade))
    {
        shader_set(shd_fade);
        var ch = shader_get_uniform(shd_fade,"colourChange");
        shader_set_uniform_f(ch,colourChange);
        draw_surface(sur,0,0);
        shader_reset();
    }
    else
    {
         draw_surface(sur,0,0);
    }
}

