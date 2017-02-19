class Walker
{
  PVector location;
  float size;
  float angleX;
  float speed;
  float color_value;
  color body_color;
  
  Walker(PVector l)
  {
    location = l.copy();
    size = 30;
    angleX = 0;
    speed = 1;
    color_value = l.y / height * 255;
    body_color = color(color_value, 255, 255);
  }
    
  void run()
  {
    update();
    display();
  }
  
  void update()
  {
    if(frameCount % 180 > location.x / size * 2 && frameCount % 180 <= 90 + location.x / size * 2)
    {
      angleX += -1;
      location.add(0, 1, 0);
      color_value = (color_value + 1) % 255;
      body_color = color(color_value, 255, 255);
    }
    
    if(location.y >= height + size / 2)
    {
      location.y = -size;
    }
  }
  
  void display()
  {    
    pushMatrix();
    translate(location.x, location.y, location.z);
    stroke(255);
    fill(body_color);
    rotateX(radians(angleX));
    box(size);
    popMatrix();
  }
}