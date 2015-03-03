class AwesomeSauce extends Transformable {

	int _radius;
	int _lineLength;
	int _rays;
	float _angle;
  
  public AwesomeSauce(int x, int y, int r, int s) {
    super(x, y);
    
    _radius = r;
    _rays = s;
    _angle = 360 / _rays;

    _lineLength = int(random(5, 35));

  }  
  
  public void draw_shape(){

  	stroke(255);
    
    beginShape(LINES);
    for (int i = 0; i < _rays; i ++) {
    	
    	rotate(_angle);		
    	vertex(0, 0);
    	vertex(_lineLength, _lineLength);
    }
    println("AwesomeSauce drawn");
    println(_angle);
    endShape();
    
  }
  
  public boolean inside(int mx, int my) {    
    if(dist(mx, my, _position.x, _position.y) < _radius) return true;
    return false;
  }


}