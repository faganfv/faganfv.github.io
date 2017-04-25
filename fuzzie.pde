// Colorful Fuzzie by Fred Fagan
// Penn State ART 297a with James Stone
// January 29, 2016

// Set up the sketch at the beginning of the run
void setup() {
  // Set the size of the sketch
  size(500,500);
  noLoop(); // So that it doesn't keep changing colors and moving lines
}

// Begin drawing - this will only occur once because of the noLoop() function
void draw() {
  // Set the background of the sketch to white
  background(255);
  
  // Feet
  // Set the position and size of the ellipse
  ellipse(175, 295, 100, 50);
  ellipse(275, 295, 100, 50);
  
  // Get random hair color each run
  int hairColor = int(random(1,6));
  
  // Switch between each case of random integers
  switch(hairColor) {
      case 1: 
        stroke(0); // Black
        break;
      case 2: 
        stroke(0, 128, 255); // Blue
        break;
      case 3: 
        stroke(255, 102, 102); // Pink
        break;
      case 4: 
        stroke(0, 204, 0); // Green
        break;
      case 5: 
        stroke(160); // Gray
        break;
    }
  
  // Hair:
  // Use pushMatrix() to save starting origin
  // Translate to the point I want as the center (222.5, 225)
  // Draw 500 lines using a loop to rotate each line randomly
  // Use popMatrix() to return to starting origin
  pushMatrix();
  translate(222.5, 225);
  for (int i = 0; i < 500; i = i+1) {
    rotate(radians(frameCount));
    line(0, 0, random(60, 65), random(60, 65));
  }
  popMatrix();
  
  // Eyes
  stroke(0);
  // Set fill to white
  fill(255);
  ellipse(200, 225, 50, 50);
  ellipse(245, 225, 50, 50);
  
  // Eyeballs
  // Set fill to black
  fill(0);
  ellipse(245, 225, 10, 10);
  ellipse(200, 225, 10, 10);
}