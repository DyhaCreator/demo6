PImage world,cccr;
int i;
void setup(){
  size(800,400);
  frameRate(100);
  world = loadImage("world.png");
  cccr = loadImage("cccr.png");
  image(world,0,0,800,400);
}
void draw(){
  world.loadPixels();
    for(int x = 0; x < world.width; x++){
    for(int y = 0; y < world.height; y++){
      int index = x + y * world.width;
      color pix = world.pixels[index];
      int r;
      if(blue(pix)>green(pix)&&blue(pix)>red(pix)){}
      else{
        r=round(random(0,100));
        if(r==1){world.pixels[index] = color(255,0,0);}
      }
    }
  }
  world.updatePixels();
  image(world,0,0,800,400);
  i++;
  if(i>=700){image(cccr,530,100,50,50);}
}
