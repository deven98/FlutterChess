
List<ChessOpening> openings = [
  ChessOpening("Ruy Lopez", [["e2","e4"],["e7","e5"],["g1","f3"],["b8","c6"],["f1","b5"],], "1. e4 e5 2. Nf3 Nc6 3. Bb5", ""),
  ChessOpening("Italian Game", [["e2","e4"],["e7","e5"],["g1","f3"],["b8","c6"],["f1","c4"],], "1. e4 e5 2. Nf3 Nc6 3. Bc4", ""),
  ChessOpening("Sicilian Defense", [["e2","e4"],["c7","c5"],], "1. e4 c5", ""),
  ChessOpening("French Defense", [["e2","e4"],["e7","e6"],], "1. e4 e6", ""),
  ChessOpening("Caro-Kann Defense", [["e2","e4"],["c7","c6"],], "1. e4 c6", ""),
  ChessOpening("Pirc Defense", [["e2","e4"],["d7","d5"],], "1. e4 d6", ""),
  ChessOpening("Queen's Gambit", [["d2","d4"],["d7","d5"],["c2","c4"],], "1. d4 d5 2. c4", ""),
  ChessOpening("Indian Defenses", [["d2","d4"],["g8","f6"],], "1. d4 Nf6", ""),
];

class ChessOpening {
  final String name;
  final List moves;
  final String moveNotation;
  final String information;

  ChessOpening(this.name, this.moves, this.moveNotation, this.information);

}
