//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 _color = texture2D( gm_BaseTexture, v_vTexcoord);
	float _result = (_color.r + _color.g + _color.b) / 3.;
	
	gl_FragColor = vec4(vec3(_result), _color.a);
}