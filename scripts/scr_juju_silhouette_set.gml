///scr_juju_silhouette_set( y, colour )
//
//Copyright (c) 2016 Julian T. Adams / @jujuadams
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in allcopies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

with( SilhouetteManager ) {
    
    var shader = shd_juju_silhouette;
    var surface = sur_silhouette;
    
    shader_set( shader );
    texture_set_stage( shader_get_sampler_index( shader, "u_sSilhSurface" ), surface_get_texture( surface ) );
    shader_set_uniform_f( shader_get_uniform( shader, "u_vSilhView" ), view_xview[0], view_yview[0], view_wview[0], view_hview[0] );
    shader_set_uniform_f( shader_get_uniform( shader, "u_cSilhColour" ), colour_get_red( argument1 ) / 255, colour_get_green( argument1 ) / 255, colour_get_blue( argument1 ) / 255 );
    shader_set_uniform_f( shader_get_uniform( shader, "u_fSilhDepth" ), argument0 );

}
