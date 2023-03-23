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
      stroke(230, 19,16);
    } else if (this.col.charAt(0) == 'g'){
      stroke(1, 104, 66);
    }else if (this.col.charAt(0) == 'b'){
      stroke(0, 48, 140);
    }
    else if (this.col.charAt(0) == 'o'){
      stroke(255, 131, 5);
    }else
      {  stroke(0); }
    strokeWeight(1);
    line(from.x, from.y, to.x, to.y);
  }
}  
