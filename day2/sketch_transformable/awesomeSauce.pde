class AwesomeSauce extends Transformable {

	int _radius;
	int _lineLength;
	int _rays = _numberRays;
	float _angle;
	PVector _increment;
  
  public AwesomeSauce(int x, int y, int r, int s) {
    super(x, y);
    
    _radius = r;
    _rays = s;
    _angle = 360 / _rays;

    _lineLength = int(random(10, 35));
    _vectors.add(new PVector(_lineLength, _lineLength));
}
  
  public void draw_shape(){

  	stroke(255);

    
    for (int i = 0; i < _rays; i ++) {

    	PVector _startingVector;
    	PVector _newVector;

    	_startingVector = _vectors.get(i);

    beginShape(LINES);

    	 
    	
    	rotate(_angle);		
    	vertex(6, 6);
    	vertex(_lineLength, _lineLength);

    endShape();
    }
    
  }
  
  public boolean inside(int mx, int my) {    
    if(dist(mx, my, _position.x, _position.y) < _radius) return true;
    return false;
  }


}