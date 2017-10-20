[VERTEX SHADER]

void main()
{
	gl_Position = gl_ProjectionMatrix*gl_Vertex;
	gl_TexCoord[0] = gl_MultiTexCoord0;
}

[FRAGMENT SHADER]

uniform sampler2D tex;

void main()
{
	gl_FragColor = texture2D(tex, gl_TexCoord[0].st);
}
