class AwesomeSauce extends Transformable {

	int _radius;
	float _lineLength;
	int _rays = _numberRays;
	float _angle;
	PVector _increment = new PVector(1, 1);
  
  public AwesomeSauce(int x, int y, int r) {
    super(x, y);

    ArrayList<PVector> _vectors = new ArrayList<PVector>(_numberRays);
    ArrayList<boolean> _increasing = new ArrayList<boolean>(_numberRays);
    
    _radius = r;
    _angle = 360 / _rays;

    _lineLength = random(10, 35);
    _vectors.add(new PVector(_lineLength, _lineLength));
    _increasing.add(new boolean(true));
}
  
  public void draw_shape(){

  	stroke(255);
    
    for (int i = 0; i < _rays; i ++) {

    	PVector _startingVector;
    	PVector _newVector;
    	boolean _checkDirection;

    	_checkDirection = _increasing.get(i);
    	_startingVector = _vectors.get(i);

    	if(_increasing == true && _startingVector < 35) {
    		_newVector = _startingVector + _increment;
    	} else if (_startingVector < 6) {
    		_increasing = true;
    		_newVector = _startingVector + _increment;
		} else {
			_increasing = false;
		}

	}

    beginShape(LINES);
    	
    	rotate(_angle);		
    	vertex(6, 6);
    	vertex(_newVector.x, _newVector.y);

    endShape();
    }
    
  }
  
  public boolean inside(int mx, int my) {    
    if(dist(mx, my, _position.x, _position.y) < _radius) return true;
    return false;
  }


}