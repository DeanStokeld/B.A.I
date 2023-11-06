public class Ship {
   
    private String name;
    private int length;
    private char gridRep;
    private Segment[] segments;

    private Ship(String type){
        type(type);
    }

    private void type(String type){
        switch(type){
        case "Battleship":
            this.name = "Battleship";
            this.length = 4;
            this.gridRep = 'B';
            
            break;
        case "Carrier":
            this.name = "Carrier";
            this.length = 5;
            this.gridRep = 'C';
            break;
        case "Destroyer":
            this.name = "Destroyer";
            this.length = 3;
            this.gridRep = 'D';
            break;
        case "Submarine":
            this.name = "Submarine";
            this.length = 3;
            this.gridRep = 'S';
            break;
        case "Patrol Boat":
            this.name = "Patrol Boat";
            this.length = 2;
            this.gridRep = 'P';
            break;
        default:
            this.name = null;
            this.length = 0;
            this.gridRep = ' ';
            break;
        }

        this.segments = new Segment[length];
        for(int i = 0; i < length; i++)
            segments[i] = new Segment(this);
    }

    public int length(){
        return this.length;
    }

    public String name(){
        return this.name;
    }

    public boolean sunk(){
        for (int i = 0; i < this.length; i++){
            if (!segments[i].hit()) {
                return false;
            }
        }
        return true;
    }

    public String toString(){
        return this.gridRep+"";
    }

    public Segment getSegment(int position) {
        if(position >=1 && position <= length)
            return this.segments[position-1];
        return null;
    }

    public static Ship createShip(String type){
        Ship s = new Ship(type);
        if(s.name()==null)
            return null;
        return s;
    }
}
