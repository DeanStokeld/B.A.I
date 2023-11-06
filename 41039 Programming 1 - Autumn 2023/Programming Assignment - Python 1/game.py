from components import Segment, Ship, Cell, InvalidPlacementException, InvalidPositionException, InvalidShipTypeException, Board

if __name__ == "__main__":
    #Your code should start here
    print("Welcome to BATTLESHIP!")
    print()
    print("Setup Phase")
    print("Player 1 place your ships, Player 2 - no peeking.")
    print()
    
    board = Board()
    print(board)
    ships = []

    error = True
    while(error==True):
        try:
            print("Where would you like to place your Battleship?")
            position = input("Position: ")
            direction = input("Direction: ")
            s = Ship.createShip("battleship")
            board.place_ship(s, position, direction)
            ships.append(s)
            error = False

        except InvalidPositionException:
            print("That position does not exist.")
            
        except InvalidPlacementException:
            print("That is not a valid placement for that ship.")
        except:
            pass

    print(board.display_setup())

    error = True
    while(error==True):
        try:
            print("Where would you like to place your Carrier?")
            position = input("Position: ")
            direction = input("Direction: ")
            s = Ship.createShip("carrier")
            board.place_ship(s, position, direction)
            ships.append(s)
            error = False

        except InvalidPositionException:
            print("That position does not exist.")
            
        except InvalidPlacementException:
            print("That is not a valid placement for that ship.")
        except:
            pass

    print(board.display_setup())

    error = True
    while(error==True):
        try:
            print("Where would you like to place your Destroyer?")
            position = input("Position: ")
            direction = input("Direction: ")
            s = Ship.createShip("destroyer")
            board.place_ship(s, position, direction)
            ships.append(s)
            error = False

        except InvalidPositionException:
            print("That position does not exist.")
            
        except InvalidPlacementException:
            print("That is not a valid placement for that ship.")
        except:
            pass

    print(board.display_setup())

    error = True
    while(error==True):
        try:
            print("Where would you like to place your Submarine?")
            position = input("Position: ")
            direction = input("Direction: ")
            s = Ship.createShip("submarine")
            board.place_ship(s, position, direction)
            ships.append(s)
            error = False

        except InvalidPositionException:
            print("That position does not exist.")
            
        except InvalidPlacementException:
            print("That is not a valid placement for that ship.")
        except:
            pass

    print(board.display_setup())

    error = True
    while(error==True):
        try:
            print("Where would you like to place your Patrol Boat?")
            position = str(input("Position: "))
            direction = str(input("Direction: "))
            s = Ship.createShip("patrol boat")
            board.place_ship(s, position, direction)
            ships.append(s)
            error = False

        except InvalidPositionException:
            print("That position does not exist.")
            
        except InvalidPlacementException:
            print("That is not a valid placement for that ship.")

        except:
            pass

    print(board.display_setup())

    print("Attack Phase")
    print("Player 2, sink the fleet!")
    print()
    
    def isAllShipsSunk():
        for ship in ships:
            if not ship.sunk():
                return False
        return True

    numShots = 0
    while not isAllShipsSunk():
        try:
            print(board)
            # for ship in ships:
            #     print(ship.name(), ship.sunk())
            attack = input("Enter a grid coordinate to attack: ")
            # print(attack, len(attack))
        
            if not board.has_been_hit(attack):
                board.attack(attack)
                numShots+=1
            else: 
                print("That position has already been attacked. Try again.")

        except InvalidPositionException:
            print("That is not a valid position to attack.")
    
    print(board)
    print("The fleet has been sunk in " + str(numShots) + " shots!")
    print("GAME OVER")

    # while not isAllShipsSunk():
    #     if(isAllShipsSunk()):
    #         break
    #     try:
    #         print(board)
    #         attack = input("Enter a grid coordinate to attack: ")
            
    #         if not board.has_been_hit(attack):
    #             board.attack(attack)
    #             numShots+=1
    #         else: 
    #             print("That position has already been attacked. Try again.")

    #     except InvalidPositionException:
    #         print("That is not a valid position to attack.")
    #     except EOFError:
    #         break
    
    # print(board)
    # print("The fleet has been sunk in " + str(numShots) + " shots!")
    # print("GAME OVER")
