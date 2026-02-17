int layers = 0;       
int limit = 7;    
void setup() {
    size(600, 600);
}

void draw() {
    background(0);
    fill(255,255,255);
    stroke(0);
    
    sierpinski(100, 500, 400, layers);
}
void sierpinski(float x, float y, float len, int d) {
    if (d == 0) {
        triangle(
            x, y,
            x + len, y,
            x + len/2, y - len
        );
    } 
    else {
        sierpinski(x, y, len/2, d - 1);
        sierpinski(x + len/2, y, len/2, d - 1);
        sierpinski(x + len/4, y - len/2, len/2, d - 1);
    }
}

void keyPressed() {
    if (layers < limit) {
        layers++;
    }
}

void mousePressed() {
   if(layers == 0) layers = 0;
    else layers--;
}
