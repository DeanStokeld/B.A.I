public class Board {
    private Cell[][] board;

    public Board(){
        board = new Cell[10][10];
        for(int i = 0; i < 10; i++)
            for(int j = 0; j < 10; j++)
                board[i][j] = new Cell();
    }

    public void placeShip(Ship ship, String position, String direction) throws InvalidPlacementException, InvalidPositionException, InvalidShipTypeException{

        if(position.length() < 2 || position.length() > 3)
            throw new InvalidPositionException();
        
        if (ship == null)
             throw new InvalidShipTypeException();
        
        if(!direction.equals("across") && !direction.equals("down"))
            throw new InvalidPlacementException();


        char rowChar = position.charAt(0);
        if(rowChar>=97)
            rowChar-=32;
        int row = rowChar - 'A';

        char colChar = position.charAt(1);
        int col = colChar - '1';

        if(position.length()==3){
            String colStr = position.substring(1);
            if(colStr.equals("10"))
                col = 9;
            else
                throw new InvalidPositionException();
        }


        
        
        if(row < 0 || row >= 10)
            throw new InvalidPositionException();
        if(col < 0 || col >= 10)
             throw new InvalidPositionException();

        for(int i = 0; i < ship.length(); i++){
            if(direction.equals("across")){
                
                if(col+i < 0 || col+i >= 10)
                     throw new InvalidPlacementException();
                if( board[row][col+i].isOccupied())
                     throw new InvalidPlacementException();

                board[row][col+i].placeSegment(ship.getSegment(i+1));

            }
            else if(direction.equals("down")){
                if(row+i < 0 || row+i >= 10)
                     throw new InvalidPlacementException();
                if( board[row+i][col].isOccupied())
                     throw new InvalidPlacementException();

                board[row+i][col].placeSegment(ship.getSegment(i+1));
            }

        }
    }

    public void attack(String position)  throws InvalidPositionException{
        if(position.length() < 2 || position.length() > 3)
            throw new InvalidPositionException();
        char rowChar = position.charAt(0);
        
        if(rowChar>=97)
            rowChar-=32;
            
        int row = rowChar - 'A';

        char colChar = position.charAt(1);
        int col = colChar - '1';

         if(position.length()==3){
            String colStr = position.substring(1);
            if(colStr.equals("10"))
                col = 9;
            else
                throw new InvalidPositionException();
        }
        
        if(row < 0 || row >= 10)
             throw new InvalidPositionException();
        if(col < 0 || col >= 10)
             throw new InvalidPositionException();

        board[row][col].attack();
        
    }

    public boolean hasBeenHit(String position) throws InvalidPositionException{
        if(position.length() < 2 || position.length() > 3)
            throw new InvalidPositionException();
        char rowChar = position.charAt(0);
        
        if(rowChar>=97)
            rowChar-=32;

        int row = rowChar - 'A';
        

        char colChar = position.charAt(1);
        int col = colChar - '1';

        if(position.length()==3){
            String colStr = position.substring(1);
            if(colStr.equals("10"))
                col = 9;
            else
                throw new InvalidPositionException();
        }
        
        if(row < 0 || row >= 10)
             throw new InvalidPositionException();
        if(col < 0 || col >= 10)
             throw new InvalidPositionException();

        return board[row][col].hasBeenHit();
    }

    public String toString(){
        String output = "";
        
        output += "  1 2 3 4 5 6 7 8 9 10\n";
        for(int i = 0; i < 10; i++){
            output +=  (char)('A' + i)+" ";
            for(int j = 0; j < 10; j++){
                output += board[i][j].toString();
                if(j < 9)
                    output += " ";
                else
                    output += "\n";
            }
        }
        return output;
    }
    public String displaySetup(){
        String output = "";
        
        output += "  1 2 3 4 5 6 7 8 9 10\n";
        for(int i = 0; i < 10; i++){
            output +=  (char)('A' + i)+" ";
            for(int j = 0; j < 10; j++){
                if(board[i][j].isOccupied())
                    output += board[i][j].displaySetup();
                else
                    output += board[i][j].toString();

                if(j < 9)
                    output += " ";
                else
                    output += "\n";
            }
        }
        return output;
    }
}

class InvalidPositionException extends Exception{

}

class InvalidPlacementException extends Exception{
    
}

class InvalidShipTypeException extends Exception{
    
}

