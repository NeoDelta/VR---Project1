[VERTEX SHADER]

varying vec4 pos2;
void main()
{
	vec4 pos = gl_ModelViewMatrix * gl_Vertex;
	gl_Position = gl_ProjectionMatrix*(pos);
	
}

[FRAGMENT SHADER]

void main(){
	gl_FragColor = vec4(1.0,0.0,0.0,1.0);

}