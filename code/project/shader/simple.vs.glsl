attribute vec3 a_position;
attribute vec2 a_texCoord;

uniform mat4 u_modelView;
uniform mat3 u_normalMatrix;
uniform mat4 u_projection;

varying vec2 v_texCoord;

void main() {
	vec4 eyePosition = u_modelView * vec4(a_position,1);

	v_texCoord = a_texCoord;

	gl_Position = u_projection * eyePosition;
}
