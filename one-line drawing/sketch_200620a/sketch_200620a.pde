PImage sunflower;
int spacing = 5;
IntList bk_list;
IntList gr_list;
IntList wt_list;

IntList divide_list;

int a = 0;

int[] thred = {175,150};//Change the threshold

void setup() {
  size(1920, 1080);
  sunflower = loadImage("teacher.jpg");//Put the picture HERE!!
  //image(sunflower, 0, 0);
  bk_list = new IntList();
  gr_list = new IntList();
  wt_list = new IntList();
  
  divide_list = new IntList();
  
  for (int i =680; i<width-600; i+= spacing) {
    for (int j = 300; j<height-50; j+= spacing) {
      a += 1;
      int loc = i+j*width;
      color c = sunflower.pixels[loc];
      if (brightness(c)>thred[0]) {
        fill(255);
        wt_list.append(i);
        wt_list.append(j);
      } else {
        if (brightness(c)<=thred[0] && brightness(c)>thred[1]) {
          fill(150);
          gr_list.append(i);
          gr_list.append(j);
        } else {
          fill(0);
          bk_list.append(i);
          bk_list.append(j);
        }
      }
      noStroke();
      ellipse(i, j, spacing*0.6, spacing*0.6);
    }
  }
  //print(gr_list);//Print the list----bk_list & gr_list & wt_list
  DivideList(gr_list);
}

void DivideList(IntList x){
  for(int i = 0 ;i<x.size();i++){
    divide_list.append(x.get(i));
  }
  print(divide_list); 
}

void draw() {
}
