#version 410

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec2 inUV;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
out vec2 outUV;
void main(){

    gl_Position = projection * view * model * vec4(inPosition.xyz,1.0);
    outUV = inUV;
}
