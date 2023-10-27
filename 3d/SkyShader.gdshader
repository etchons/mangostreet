shader_type sky;

uniform vec3 skyColor: source_color;

void sky() {
	// Place sky code here.
	COLOR = skyColor;
}