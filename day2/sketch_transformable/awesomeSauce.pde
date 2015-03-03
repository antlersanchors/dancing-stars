class AwesomeSauce extends Transformable {

	int _radius;
	int _lineLength;
	int _rays;
	float _angle;
  
  public AwesomeSauce(int x, int y, int r, int s) {
    super(x, y);
    
    _radius = r;
    _rays = s;
    _angle = TWO_PI / _rays;
    
    // _lineLength = int(random(5, 35););
  }  
  
  public void draw_shape(){
    
    for (int i = 0; i < TWO_PI; i += _angle) {
    	float sx = 0 + cos(i) * _radius;
    	float sy = 0 + sin(i) * _radius;

		stroke(255);
    	line(0, 0 , sx, sy);
    }
    println("AwesomeSauce drawn");
    
  }
  
  public boolean inside(int mx, int my) {    
    if(dist(mx, my, _position.x, _position.y) < _radius) return true;
    return false;
  }


}