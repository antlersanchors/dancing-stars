class awesomeSauce extends Transformable {

	int _radius;
	int _lineLength;
  
  public awesomeSauce(int x, int y, int r) {
    super(x, y);
    _radius = r;
    
    _lineLength = int(random(5, 35););
  }  
  
  public void draw_shape(){
    ellipse(0, 0, _radius, _radius);  
    line(0, 0, _radius, 0);
  }
  
  public boolean inside(int mx, int my) {    
    if(dist(mx, my, _position.x, _position.y) < _radius) return true;
    return false;
  }


}