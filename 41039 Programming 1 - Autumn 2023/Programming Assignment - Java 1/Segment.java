public class Segment {
    private boolean hit;
    private Ship ship;

    public Segment(Ship ship){
        this.ship = ship;
        this.hit = false;
    }

    public boolean hit(){
        return this.hit;
    }

    public void attack(){
        this.hit = true;
    }

    public Ship getShip(){
        return this.ship;
    }

    public String toString(){
        return this.ship.toString();
    }
}
