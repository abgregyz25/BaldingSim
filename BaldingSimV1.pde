float[] hairlength;
float haircount = 0;
int hairfall = 0;
int years = 0;
float days = 0;
int old = 20000;
float[] rh, gh, bh;

void setup(){
  size(1000,730);
  background(255);
  stroke(0);
  hairlength = new float [1000];
  rh = new float [1000];
  gh = new float [1000];
  bh = new float [1000];
  for (int i = 0; i< width; i++){
  hairlength[i]=0;
  rh[i] = random(110,140);
  gh[i] = random(40,47);
  bh[i] = random(0,5);
  } 
}

void draw(){
  for (int i = 0; i< width; i++){
    stroke(rh[i],gh[i],bh[i]);
    haircount++;
    point(haircount,hairlength[i]);  
    hairlength[i]++;
    hairfall = floor(random(old));
    if(hairfall == 1){
     hairlength[i] = 0;
     stroke(255);
     line(haircount,0,haircount,height);
    }  
  }
  haircount = 0;
  old= old - 1;
  if (old < 5){
   old = 4; 
  }
  days++;
  if (days == 365){
   days = 0;
   years++;
  }
  fill(0,127,128,1);
  noStroke();
  rect(0,150,width, height - 150);
  println("years: " + years + " old: " + old);

  
  stroke(255);
  fill(255,0,128);
  textSize(24);
  text("Age: " + years, 20, 170);
  text("Odds of fallout: 1 in " + old, 20, 210);
  
  fill(255,0,128);
for(int x = -1; x < 2; x++){
  //for(int y = -1; y < 2; y++){
  //  text("LIKE THIS!", 20+x,20+y);
  //}
    text("Age: " + years, 20 + x, 170);
    text("Odds of fallout: 1 in " + old, 20 + x, 210);
    text("Age: " + years, 20, 170 + x);
    text("Odds of fallout: 1 in " + old, 20, 210 + x);
}
fill(200);
text("Age: " + years, 20, 170);
text("Odds of fallout: 1 in " + old, 20, 210);
}
