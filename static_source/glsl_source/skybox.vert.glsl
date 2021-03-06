#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 vPos;

out vec2 TexCoords;

layout (std140) uniform Matrices
{
    mat4 projection;
    mat4 view;
};
uniform float direction;

void main()
{
    TexCoords = vPos;
    gl_Position = projection * view * vec4(aPos.x, direction * aPos.z, aPos.y, 1.0);
}