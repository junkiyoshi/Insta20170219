ArrayList<Walker> walkers;

void setup()
{
  size(512, 512, P3D);
  colorMode(HSB);
  frameRate(30);
  
  walkers = new ArrayList<Walker>();
  
  for(int y = 0; y < height + 40; y += 40)
  {
    for(int x = 0; x < width * 2; x += 40)
    {
      walkers.add(new Walker(new PVector(x, y, 0)));
    }
  }
}

void draw()
{
  background(0);
  
  camera(-128, height / 2, 512,
         256.0, 256.0, 0.0, 
         0.0, 1.0, 0.0);
   
  for(Walker w : walkers)
  {
    w.run();
  }
  
  /*
  println(frameCount);
  saveFrame("screen-#####.png");
  if(frameCount > 900)
  {
     exit();
  }
  */
}