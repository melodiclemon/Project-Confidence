//Copyright (c) 2016 Julian T. Adams / @jujuadams
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in allcopies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPos; //The "real world" coordinates of this vertex

void main() {
    
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    v_vPos = gm_Matrices[MATRIX_WORLD] * object_space_pos;
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//Copyright (c) 2016 Julian T. Adams / @jujuadams
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in allcopies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPos; //The "real world" coordinates of this texel

uniform float u_fSilhDepth;
uniform vec4 u_vSilhView;
uniform vec3 u_cSilhColour;
uniform sampler2D u_sSilhSurface;

void main() {
    
    vec2 samplePos = v_vPos.xy - u_vSilhView.xy; //Relative position of vertex in the view
    vec4 sampleColour = texture2D( u_sSilhSurface, samplePos / u_vSilhView.zw ); //Sample the mask surface
    float sampleDepth = samplePos.y + sampleColour.r * 256.0; //Calculate the depth of this texel by adding the offset from the mask surface
    float sprDepth = u_fSilhDepth - u_vSilhView.y; //Relative y-position of the sprite being drawn in the view
    
    //If the sprite has a lower depth than the mask and the sample ISN'T transparent, this texel is occluded
    if ( ( sampleDepth > sprDepth ) && ( sampleColour.a > 0.02 ) ) {
        gl_FragColor = vec4( u_cSilhColour, v_vColour.a * texture2D( gm_BaseTexture, v_vTexcoord ).a );
    }
    
}
