[VERTEX SHADER]

void main()
{
	gl_Position = gl_ProjectionMatrix*gl_ModelViewMatrix*gl_Vertex;
	gl_TexCoord[0] = gl_MultiTexCoord0;
}

[FRAGMENT SHADER]

uniform sampler2D tex;
uniform float alpha;

void main()
{
	vec4 col = texture2D(tex, gl_TexCoord[0].st);
	gl_FragColor = vec4(col.xyz,min(col.w,alpha));
}
