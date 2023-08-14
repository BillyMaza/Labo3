boolean gameStarted = false;
PImage img;
ArrayList<PVector> circles = new ArrayList<PVector>();
PImage m;
int poX, poY, coloor; 

void setup() {
  size(900, 900);
  textAlign(CENTER, CENTER);
  textSize(24);
  img=loadImage("F1.png");
  m=loadImage("M1.png");
  poX=460;
  poY=10;
}

void draw() {
  
  if (gameStarted) {
    image(m,0,0);
      noFill();
    strokeWeight(4);
    stroke(#9FC40E);
    ellipse(poX,poY, 25,25);
    coloor= get(poX,poY);
    fill(coloor);
    rect (435,0,40,20);    
    stroke(#53E2E5);
    rect(435,880,40,20);
    if (coloor==-16777216){
    poX=460;
    poY=10;
   }

  } else {
    // Pantalla de inicio
    image(img,0,0);
    fill(#C34BF0);
    textSize(70);
    text("¡Click para inciar :D!", width/2, height/2);
    textSize(40);
    text("Creado por Billy Mazariegos", 480,550);
  }
}

void mousePressed() {
  if (!gameStarted) {
    gameStarted = true;
  }
}
    void keyPressed(){
  if (keyCode==UP){
    poY=poY-4;
  }
  if (keyCode==DOWN){
    poY=poY+4;
  }
  if (keyCode==RIGHT){
    poX=poX+4;
  }
  if (keyCode==LEFT){
    poX=poX-4;
  }

}


  
