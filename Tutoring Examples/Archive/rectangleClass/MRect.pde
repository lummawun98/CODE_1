class MRect 
{
  int w; // single bar width
  float xpos; // rect xposition
  float h; // rect height
  float ypos ; // rect yposition
  float dist; // single bar distance
  float num; // number of bars
 
  MRect( float _xpos, float _ypos, int _width, float _height, float _dist, float _num) {

    xpos = _xpos;
    ypos = _ypos;
    w = _width;
    h = _height; 
    dist = _dist;
    num = _num;
  }
 
  void move (float x, float y, float offset) {
    float dif = ypos - y;
    
    if (abs(dif) > 1) {
      ypos -= dif-offset;
    }
    dif = xpos - x;
    if (abs(dif) > 1) {
      xpos -= dif+offset;
    }
  }
 
  void display(color c) {
    fill(c);
    for (int i=0; i<num; i++) {
      rect(xpos+(i*(dist+w)), ypos, w, height*h);
    }
  }
}