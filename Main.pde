FlowField ff;
ArrayList<Particle> particles;

void settings()
{
  size(512, 512);
}

void setup()
{  
  ff = new FlowField(20);
  ff.update();

  particles = new ArrayList<Particle>();
  
  for (int i = 0; i < 10000; i++)
  {
    PVector start = new PVector(random(width), random(height));
    particles.add(new Particle(start, random(2, 8)));
  }
  
  background(255);
}

void draw()
{
  ff.update();
  
  for (Particle p : particles)
  {
    p.follow(ff);
    p.run();
  }
}
