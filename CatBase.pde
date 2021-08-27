// Cat with moving legs, tail and whiskers
//Movement Controls
boolean moveWhisker = true; // Chenge to update whisker movement
boolean moveLeg = true; // Chenge to update legs movement
boolean moveTail = true; // Change to update tail movement

// Whisker Controls
boolean whiskerDown = true;
float whiskerCtrl = 95;

// Leg controls
float frontLeftLeg = 325;
float frontLeftFoot = 310;
boolean frontLeftForward = true;
float hindLeftLeg = 425;
float hindLeftFoot = 410;
boolean hindLeftForward = true;
float frontRightLeg = 300;
float frontRightFoot = 285;
boolean frontRightBackward = true;
float hindRightLeg = 400;
float hindRightFoot = 385;
boolean hindRightBackward = true;

// Tail controls
boolean exchange1 = true;
boolean exchange2 = true;
float ctrlX1 = 540;
float ctrlY1 = 125;
float ctrlX2 = 460;
float ctrlY2 = 45;

void setup(){
  size(700,250);
  frameRate(30);
}

void draw(){
  background(256, 256, 256);

  // Front Right Leg as joined stroke - Movable
  noFill();
  stroke(77,79,83);
  strokeWeight(8);
  strokeJoin(MITER);
  beginShape();
  vertex(315, 150);
  vertex(frontRightLeg, 200);
  vertex(frontRightFoot, 200);
  endShape();
  
  // Hind Right Leg as joined stroke - Movable
  beginShape();
  vertex(415, 150);
  vertex(hindRightLeg, 200);
  vertex(hindRightFoot, 200);
  endShape();
  
  // Tail as a beizer curve - Movable
  stroke(77,79,83);
  strokeWeight(6);
  bezier(450, 125, ctrlX1, ctrlY1, ctrlX2, ctrlY2, 540, 45);

  // Body as an ellipse
  fill(232,232,232);
  strokeWeight(2);
  stroke(35,31,32);
  ellipse(360, 120, 200, 90);

  // Random body patches
  // Patch 1 as curve-vertex shape
  noStroke();
  fill(125,125,125);
  beginShape();
  curveVertex(310,  100);
  curveVertex(320,  100);
  curveVertex(320,  115);
  curveVertex(300,  125);
  curveVertex(295,  115);
  curveVertex(300, 90);
  curveVertex(310, 90);
  curveVertex(310, 100);
  endShape();
  
  // Patch 2 as curve-vertex shape
  noStroke();
  fill(125,125,125);
  beginShape();
  curveVertex(330,  130);
  curveVertex(340,  130);
  curveVertex(330,  145);
  curveVertex(320,  155);
  curveVertex(310,  145);
  curveVertex(330, 120);
  curveVertex(340, 120);
  curveVertex(350, 130);
  endShape();
   
  // Patch 3 as curve-vertex shape
  noStroke();
  fill(125,125,125);
  beginShape();
  curveVertex(380,  132);
  curveVertex(410,  135);
  curveVertex(420,  150);
  curveVertex(370,  150);
  curveVertex(360,  135);
  curveVertex(400, 120);
  curveVertex(420, 110);
  endShape();
    
  // Patch 4 as curve-vertex shape
  noStroke();
  fill(125,125,125);
  beginShape();
  curveVertex(400,  90);
  curveVertex(415,  95);
  curveVertex(410,  100);
  curveVertex(400,  115);
  curveVertex(400, 90);
  curveVertex(390, 90);
  endShape();
  
  // Face as an ellipse
  fill(232,232,232);
  stroke(35,31,32);
  strokeWeight(2);
  ellipse(250, 90, 80, 80);
  
  // Ear 1 as a triangular shape
  fill(232,232,232);
  strokeWeight(2);
  beginShape();
  vertex(225, 60);
  vertex(235, 30);
  vertex(245, 50);
  endShape();
  
  // Ear 2 as a triangular shape
  fill(232,232,232);
  strokeWeight(2);
  beginShape();
  vertex(280, 62);
  vertex(270, 32);
  vertex(260, 52);
  endShape();
  
  // Inner-ear 1 as a triangular shape
  noStroke();
  fill(77,79,83);
  beginShape();
  vertex(231, 60);
  vertex(236, 43);
  vertex(241, 55);
  vertex(231, 60);
  endShape();
  
  // Inner-ear 2 as a triangular shape
  fill(77,79,83);
  beginShape();
  vertex(274, 60);
  vertex(269, 43);
  vertex(264, 55);
  vertex(274, 60);
  endShape();
  
  // Eye 1 as an ellipse
  stroke(35,31,32);
  fill(256,256,256);
  strokeWeight(0.75);
  ellipse(238, 80, 15, 15);
  
  // Eye 2 as an ellipse
  fill(256,256,256);
  strokeWeight(0.75);
  ellipse(267, 80, 15, 15);
  
  // Eye-ball 1 as an ellipse
  fill(0);
  strokeWeight(0.75);
  ellipse(238, 80, 8, 8);
  
  // Eye-ball 2 as an ellipse
  fill(0);
  strokeWeight(0.75);
  ellipse(267, 80, 8, 8);
  
  // Eye-ball-shine 1 as an ellipse
  fill(256,256,256);
  strokeWeight(0.75);
  ellipse(239, 79, 3, 3);
  
  // Eye-ball-shine 2 as an ellipse
  fill(256,256,256);
  strokeWeight(0.75);
  ellipse(268, 79, 3, 3);
  
  // Nose as a triangle
  fill(0);
  triangle(247, 90, 258, 90, 252, 97);
  
  // Whisker as curves - Movable
  // Left whiskers
  noFill();
  curve(252, 120, 252, 99, 224, whiskerCtrl-7, 230, 120);
  curve(252, 120, 252, 100, 224, whiskerCtrl, 230, 120);
  curve(252, 120, 252, 101, 224, whiskerCtrl+7, 230, 120);
  
  // Right whiskers
  curve(252, 120, 252, 99, 280, whiskerCtrl-7, 230, 120);
  curve(252, 120, 252, 100, 280, whiskerCtrl, 230, 120);
  curve(252, 120, 252, 101, 280, whiskerCtrl+7, 230, whiskerCtrl);
  
  // Mouth as curves figure
  noFill();
  strokeWeight(2);
  curve(252, 10, 252, 100, 232, 112, 232, 90);
  curve(252, 10, 252, 100, 272, 112, 272, 90);
  
  // Front Left Leg as joined stroke - Movable
  noFill();
  stroke(77,79,83);
  strokeWeight(8);
  strokeJoin(MITER);
  beginShape();
  vertex(300, 150);
  vertex(frontLeftLeg, 200);
  vertex(frontLeftFoot, 200);
  endShape();
  
  // Hind Left Leg as joined stroke - Movable
  beginShape();
  vertex(400, 150);
  vertex(hindLeftLeg, 200);
  vertex(hindLeftFoot, 200);
  endShape();

  // Movement controls
  
  if(moveWhisker){ // Enable whisker movement if true
   if(whiskerCtrl == 95){ // Whisker top coordinate
    whiskerDown = true;
    }
    else if(whiskerCtrl == 105){ // Whisker bottom coordinate
    whiskerDown = false;
    }
    
    if(whiskerDown){ // Check to move whisker upward or downward
      whiskerCtrl++; 
    }
    else{
      whiskerCtrl--; 
    }
  }
  
  if(moveTail){ // Enable tail movement if true
   if(ctrlX1 == 540){ // Control point x-coordinate  
    exchange1 = true;
    }
    else if(ctrlX1 == 420){ // Control point x-coordinate 
    exchange1 = false;
    }
    
    if(ctrlY1 == 125){ // Control point y-coordinate 
    exchange2 = true;
    }
    else if(ctrlY1 == 5){ // Control point y-coordinate 
    exchange2 = false;
    }
    
    if(exchange1){ // Check to update control points positioning
      ctrlX1--; 
      ctrlX2++; 
    }
    else{
       ctrlX1++; 
       ctrlX2--; 
    }
    
    if(exchange2){ // Check to update control points positioning
      ctrlY1--; 
      ctrlY1++; 
    }
    else{
      ctrlY1++; 
      ctrlY1--; 
    }
  }
  
  if(moveLeg){  // Enable leg movement if true
   if(frontLeftLeg == 280){ // Leg and foot joining coordinate
    frontLeftForward = true;
    }
    else if(frontLeftLeg == 325){ // Leg and foot joining coordinate
    frontLeftForward = false;
    }
    
    if(frontLeftForward){ // Check to move forward or backward
      frontLeftLeg++;
      frontLeftFoot++;
    }
    else{
      frontLeftLeg--;
      frontLeftFoot--;
    }
    
    if(hindLeftLeg == 380){ // Leg and foot joining coordinate
    hindLeftForward = true;
    }
    else if(hindLeftLeg == 425){ // Leg and foot joining coordinate
    hindLeftForward = false;
    }
    
    if(hindLeftForward){ // Check to move forward or backward
      hindLeftLeg++;
      hindLeftFoot++;
    }
    else{
      hindLeftLeg--;
      hindLeftFoot--;
    }
    
    if(frontRightLeg == 300){ // Leg and foot joining coordinate
    frontRightBackward = false;
    }
    else if(frontRightLeg == 345){ // Leg and foot joining coordinate
    frontRightBackward = true;
    }
    
    if(frontRightBackward){ // Check to move forward or backward
      frontRightLeg--;
      frontRightFoot--;
    }
    else{
      frontRightLeg++;
      frontRightFoot++;
    }
    
    if(hindRightLeg == 400){ // Leg and foot joining coordinate
    hindRightBackward = false;
    }
    else if(hindRightLeg == 445){ // Leg and foot joining coordinate
    hindRightBackward = true;
    }
    
    if(hindRightBackward){ // Check to move forward or backward
      hindRightLeg--;
      hindRightFoot--;
    }
    else{
      hindRightLeg++;
      hindRightFoot++;
    }
  }
}
