public class Runner {
    public static void main(String[] args) {
        //Create and run things, print stuff out, etc.
        Board board = new Board();
        try{
        board.placeShip(new Ship("Battleship"), "A11", "down");
        
        board.placeShip(new Ship("carrier"), "B2", "across");
        board.placeShip(new Ship("patrol boat"), "C5", "down");
        board.placeShip(new Ship("submarine"), "F1", "across");

        board.placeShip(new Ship("destroyer"), "G6", "down");


       // System.out.println(board.board[1][0].isOccupied());
       // System.out.print(board.hasBeenHit("A1"));

        System.out.print(board.displaySetup());
        //System.out.print(board);
        
        }catch(Exception e){
            System.out.println("ERROR");
        };
    }
}
