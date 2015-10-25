float distance = 0;
int time = 0;
int interval_born = 1000;

Star estrela;
ArrayList<Star> constelacao;

void setup() {
  fullScreen();
  smooth();
  constelacao = new ArrayList<Star>();
  constelacao.add(new Star(random(width), distance));

}

void draw() {
  background(255);
  if (time >= interval_born) {
    time = 0;
    constelacao.add(new Star(random(width), distance));
    println(constelacao.size());
  }
  
  if (distance > height) {
     distance = 0; 
  }
  
  for(int i = 0; i < constelacao.size();) {
    estrela = constelacao.get(i);
    //delay(50);
    //gota.distance = distance;
    estrela.display();
    i++;
  }

  distance = distance + 50;
  time = time + 1000;
}