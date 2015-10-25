int time = 0;
int interval_born = 5000;

Star estrela;
ArrayList<Star> constelacao;

void setup() {
  fullScreen();
  constelacao = new ArrayList<Star>();
  constelacao.add(new Star(mouseX, mouseY));
}

void draw() {
  background(255);
  if (time >= interval_born) {
    time = 0;
    constelacao.add(new Star(mouseX, mouseY));
    println(constelacao.size());
  }
  
  for(int i = 0; i < constelacao.size();) {
    estrela = constelacao.get(i);
    estrela.run();
    i++;
  }
  time = time + 100;
}