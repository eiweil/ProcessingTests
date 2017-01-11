// download geomerative from www.ricardmarxer.com/geomerative 
//place on your Mac in Documents/Processing/libraries 
import geomerative.*; 
RFont font; 
String SampleText = "F A L L  2 0 1 6"; 
RPoint[] pnts; 
void setup() { 
  frameRate(14); 
  size(1270, 700); 
  // initialise library and generate font 
  // the .ttf file must be placed in the data folder of the sketch 
  RG.init(this); 
  font = new RFont("/Library/Fonts/Arial Narrow.ttf", 200, RFont.CENTER); 
  // define points along font outline 
  RCommand.setSegmentLength (2); 
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH); 
  if (SampleText.length() > 0) { 
    // generate a group of graphics 
    RGroup grp; 
    // assign to text 
    grp = font.toGroup(SampleText); 
    // get points along font outline 
    pnts = grp.getPoints(); 
  } 
} 
void draw() { 
  background(255, 255, 255); 
  translate(600, 350); // text's position 
  for (int i=0; i < pnts.length; i++) { // draw ellipses along font outline 
    noFill(); 
    stroke(53, 53, 203);
    //ellipse(pnts[i].x + random(mouseX/10), pnts[i].y + random(mouseY/10), 30, 30); 
    //rect(pnts[i].x + 10, pnts[i].y - 10, 30 , 30);
    quad(pnts[i].x, pnts[i].y, pnts[i].x + random(30), pnts[i].y - random(20), pnts[i].x - random(30), pnts[i].y + random(20), pnts[i].x - random(30), pnts[i].y - random(20)); 
    //line(pnts[i].x - random(30), pnts[i].y - random(20), pnts[i].x + random(30), pnts[i].y + random(20)); 
    //triangle(pnts[i].x - random(30), pnts[i].y - random(20), pnts[i].x + random(30), pnts[i].y + random(20), pnts[i].x - random(30), pnts[i].y + random(20)); 
 
  } 
  
  saveFrame("fall2016.gif");
} 