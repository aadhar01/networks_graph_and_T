static final color red = #E61310;
static final color green = #016842;
static final color blue =  #00308C;
static final color orange = #FF8305;
class Edge {
  Node from; 
  Node to; 
  float minutes;
  String col;
  
  Edge(Node from, Node to, float minutes, String col) {
    this.from = from; 
    this.to = to; 
    this.minutes = minutes;
    this.col = col;
  }
  
  Node getFromNode() {
    return from;
  }
  
  Node getToNode() {
    return to;
  }
  
  float getMinutes() {
    return minutes;
  }
  
  void draw() {
    if (this.col.charAt(0) == 'r'){
      stroke(red);
    } else if (this.col.charAt(0) == 'g'){
      stroke(green);
    }else if (this.col.charAt(0) == 'b'){
      stroke(blue);
    }
    else if (this.col.charAt(0) == 'o'){
      stroke(orange);
    }else
      {  stroke(0); }
    strokeWeight(1);
    line(from.x, from.y, to.x, to.y);
  }
}  
