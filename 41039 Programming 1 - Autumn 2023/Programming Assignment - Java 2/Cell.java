public class Cell{
	private boolean hasBeenHit;
	private Segment segment;

	public Cell(){
	}

	public void placeSegment(Segment segment){
		this.segment = segment;
	}

	public void attack(){
		this.hasBeenHit = true;
		if(this.segment != null)
			this.segment.attack();
	}

	public boolean hasBeenHit(){
		return this.hasBeenHit;
	}

	public boolean isOccupied(){
		if(this.segment == null)
			return false;
		return true;
	}

	public String displaySetup(){
		if(isOccupied() == true)
			return segment.toString();
		return ".";
	}

	public String toString(){
		if (this.hasBeenHit == true && this.segment == null)
			return "O";
		else if (this.segment != null && this.segment.getShip().sunk())
			return this.segment.toString();
		else if (this.hasBeenHit == true)
			return "X";
		return ".";
	}


}
