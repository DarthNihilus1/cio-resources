#version 330

uniform mat4 p3d_ModelViewProjectionMatrix;
in vec4 p3d_Vertex;
out vec2 l_uv;

const int Size = 128;

void main()
{
	gl_Position = p3d_ModelViewProjectionMatrix * p3d_Vertex;
    
    // Shift 2D vertex from screen space (-1, 1) to texture space (0, 1)
	l_uv = vec2(p3d_Vertex.x + 1.0, p3d_Vertex.z + 1.0);
    l_uv /= 2.0;
}
