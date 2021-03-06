#version 120

attribute vec2 uv0;
attribute vec4 vertex;
uniform mat4 wvp;
varying vec2 uv;
varying vec2 lightPos;

uniform vec4 lightPosition;

void main(void)
{
	uv = uv0;

	gl_Position = (wvp * vertex);
	
	lightPos = lightPosition.xy;
}
