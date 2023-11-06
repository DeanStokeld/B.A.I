from random import Random

class Robot:
    def __init__(self):
        self.random = Random()
        self.directions = ["across", "down"]
        self.positions = [f"{chr(i)}{j}" for i in range(65, 75) for j in range(1, 11)]
        self.past_attacks = set()

    def generate_placements(self) -> list[tuple[str, str]]:
        placements = []
        for _ in ["Battleship", "Carrier", "Destroyer", "Submarine", "Patrol Boat"]:
            pos = self.random.choice(self.positions)
            dir = self.random.choice(self.directions)
            placements.append((pos, dir))
        return placements

    def get_attack(self) -> str:
        attack = self.random.choice(self.positions)
        while attack in self.past_attacks:
            attack = self.random.choice(self.positions)
        self.past_attacks.add(attack)
        return attack

    def give_result(self, result: str, board_state: list[list[str]]) -> None:
        pass
