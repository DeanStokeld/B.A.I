from random import Random

class Robot:

    def __init__(self):
        self.rows = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
        self.columns = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
        self.ships = ["battleship", "carrier", "destroyer", "submarine", "patrol boat"]
        self.board = []
        for i in range(10):
            row = []
            for j in range(10):
                row.append(0)
            self.board.append(row)
        self.attacked_positions = []

    def generate_placements(self) -> list[tuple[str, str]]:
        rand = Random()
        placements = []

        for length in [4, 5, 3, 3, 2]:
            finished_placement = False
            while not finished_placement:
                random_number = rand.randint(0, 1)
                if random_number == 0:
                    direction = "down"
                else:
                    direction = "across"
                row = rand.randint(0, 9)
                column = rand.randint(0, 9)

                if direction == "down":
                    if row + length <= 10:
                        valid_placement = True
                        for i in range(length):
                            if self.board[row+i][column] == 1:
                                valid_placement = False
                                break
                        if valid_placement:
                            finished_placement = True
                            for i in range(length):
                                self.board[row+i][column] = 1

                elif direction == "across":
                    if column + length <= 10:
                        valid_placement = True
                        for i in range(length):
                            if self.board[row][column+i] == 1:
                                valid_placement = False
                                break
                        if valid_placement:
                            finished_placement = True
                            for i in range(length):
                                self.board[row][column+i] = 1

                if finished_placement:
                    placement = self.rows[row] + self.columns[column]
                    placements.append((placement, direction))

        return placements 

    def get_attack(self) -> str:
        rand = Random()
        found_suitable_position = False

        while not found_suitable_position:
            row = rand.randint(0, 9)
            column = rand.randint(0, 9)
            position = self.rows[row] + self.columns[column]
            if position not in self.attacked_positions:
                self.attacked_positions.append(position)
                found_suitable_position = True
        
        return position

    def give_result(self, result: str, board_state: list[list[str]]) -> None:
        pass
