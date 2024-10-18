class Cubie{
PMatrix3D matrix;
int x = 0;
int y = 0;
int z = 0;
color c;
Face[] faces = new Face[6];
Cubie(PMatrix3D m, int x_, int y_, int z_){
this.x = x_;
this.y = y_;
this.z = z_;
this.matrix = m;
c = color(255);
faces[0] = new Face(new PVector(0, 0, -1), color (0, 0, 255)); //blue
faces[1] = new Face(new PVector(0, 0, 1), color (0, 255, 0)); //green
faces[2] = new Face(new PVector(0, 1, 0), color (255, 255, 255)); //white
faces[3] = new Face(new PVector(0, -1, 0), color (255, 255, 0)); //yellow
faces[4] = new Face(new PVector(1, 0, 0), color (255, 150, 0)); //orange
faces[5] = new Face(new PVector(-1, 0, 0), color (255, 0, 0)); //red
}
void turnFaceZ(int dir){
for (Face f : faces){
f.turnZ(dir * HALF_PI);
}
}
void turnFaceY(int dir){
for (Face f : faces){
f.turnY(dir * HALF_PI);
}
}
void turnFaceX(int dir){
for (Face f : faces){
f.turnX(dir * HALF_PI);
}
}
void update(int x, int y, int z){
matrix.reset();
matrix.translate(x, y, z);
this.x = x;
this.y = y;
this.z = z;
}
void show(){
//fill(c);
noFill();
stroke(0);
strokeWeight(0.1);
pushMatrix();
applyMatrix(matrix);
box(1);
for(Face f : faces){
f.show();
}
popMatrix();
}
}
