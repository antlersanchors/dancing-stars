class AwesomeSauce extends Transformable {

	int _radius;
	float _lineLength;
	int _rays = _numberRays;
	float _angle;
	PVector _increment = new PVector(1, 1);

	ArrayList<PVector> _vectors;
	ArrayList<Boolean> _increasing;
  
  public AwesomeSauce(int x, int y, int r) {
    super(x, y);

    _vectors = new ArrayList<PVector>(_numberRays);
    _increasing = new ArrayList<Boolean>(_numberRays);
    
    _radius = r;
    _angle = 360 / _rays;

    _lineLength = random(10, 35);
    _vectors.add(new PVector(_lineLength, _lineLength));
    _increasing.add(new Boolean(true));
}
  
  public void draw_shape(){

  	stroke(255);
    
    for (int i = 0; i < _rays; i ++) {

    	PVector _startingVector;
    	PVector _newVector;
    	Boolean _checkDirection;

    	_checkDirection = _increasing.get(i);
    	_startingVector = _vectors.get(i);

    	if(_checkDirection == true && _startingVector.x < 35 ) {
    		_newVector = _startingVector + _increment;
    	} else if (_startingVector < 6) {
    		_checkDirection = true;
    		_newVector = _startingVector + _increment;
		} else {
			_increasing(i) = false;
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