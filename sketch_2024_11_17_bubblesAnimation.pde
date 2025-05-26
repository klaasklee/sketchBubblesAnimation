float bubbleX_1 = 200;
float bubbleY_1 = 200;
int bubbleSize_1 = 0;
float speed_1 = 0.6;

float bubbleX_2 = 200;
float bubbleY_2 = 200;
int bubbleSize_2 = 0;
float speed_2 = 0.2;

float bubbleX_3 = 200;
float bubbleY_3 = 200;
int bubbleSize_3 = 0;
float speed_3 = 0.4;

void setup() {
  size (400, 400);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  
  // draw bubble
  ellipse(bubbleX_1, bubbleY_1, bubbleSize_1, bubbleSize_1);
  
  // move bubble
  bubbleX_1 = bubbleX_1 + (map(noise(0.005*frameCount), 0, 1, -1, 1));
  bubbleY_1 = bubbleY_1 - speed_1;
  // set bubble size
  bubbleSize_1 = int(map(bubbleY_1, -50, 200, 50, 0));
  
  // if bubble outside
  if (bubbleY_1 + bubbleSize_1/2 < 0){
    bubbleX_1 = 200;
    bubbleY_1 = 200;
    bubbleSize_1 = 0;
  }
  
  // ------
  
  // draw bubble
  ellipse(bubbleX_2, bubbleY_2, bubbleSize_2, bubbleSize_2);
  
  // move bubble
  bubbleX_2 = bubbleX_2 + (map(noise(0.04*frameCount*200), 0, 1, -1, 1));
  bubbleY_2 = bubbleY_2 - speed_2;
  // set bubble size
  bubbleSize_2 = int(map(bubbleY_2, -50, 200, 50, 0));
  
  // if bubble outside
  if (bubbleY_2 + bubbleSize_2/2 < 0){
    bubbleX_2 = 200;
    bubbleY_2 = 200;
    bubbleSize_2 = 0;
  }

  // ------
  
  // draw bubble
  ellipse(bubbleX_3, bubbleY_3, bubbleSize_3, bubbleSize_3);
  
  // move bubble
  bubbleX_3 = bubbleX_3 + (map(noise(0.04*frameCount*-200), 0, 1, -1, 1));
  bubbleY_3 = bubbleY_3 - speed_3;
  // set bubble size
  bubbleSize_3 = int(map(bubbleY_3, -50, 200, 50, 0));
  
  // if bubble outside
  if (bubbleY_3 + bubbleSize_3/2 < 0){
    bubbleX_3 = 200;
    bubbleY_3 = 200;
    bubbleSize_3 = 0;
  }
  
  //rect(0, 0, width, map(noise(0.01*frameCount), 0, 1, 100, 120));
  //rect(0, 0, map(noise(0.01*frameCount+77), 0, 1, 100, 120), height);
}
