List<ChessOpening> openings = [
  ChessOpening(
      "Ruy Lopez",
      [
        ["e2", "e4"],
        ["e7", "e5"],
        ["g1", "f3"],
        ["b8", "c6"],
        ["f1", "b5"],
      ],
      "1. e4 e5 2. Nf3 Nc6 3. Bb5",
      "The Ruy Lopez is one of the oldest and most classic of all openings. It is named after a Spanish bishop who wrote one of the first books on chess. The Ruy Lopez attacks the knight which defends the e5-pawn. White hopes to use this attack to build more pressure on the black center."),
  ChessOpening(
      "Italian Game",
      [
        ["e2", "e4"],
        ["e7", "e5"],
        ["g1", "f3"],
        ["b8", "c6"],
        ["f1", "c4"],
      ],
      "1. e4 e5 2. Nf3 Nc6 3. Bc4",
      "The Italian game begins with 1.e4 e5 2.Nf3 Nc6 3.Bc4. The point is to control the center quickly with your pawn and knight and then put your bishop on it’s most dangerous square. You are also preparing to castle to safety."),
  ChessOpening(
      "Sicilian Defense",
      [
        ["e2", "e4"],
        ["c7", "c5"],
      ],
      "1. e4 c5",
      "The Sicilian Defense is the most popular choice of aggressive players with the black pieces. Often White will play 2.Nf3 and 3.d4 which will gain central space, but it allows Black to benefit by exchanging a central pawn for a bishop's pawn."),
  ChessOpening(
      "French Defense",
      [
        ["e2", "e4"],
        ["e7", "e6"],
      ],
      "1. e4 e6",
      "The French Defense is one of the first strategic openings every chess player should learn. After e5 (now or later), both sides will have pawn chains. One risk of the French Defense is that the c8-bishop can be very hard to develop."),
  ChessOpening(
      "Caro-Kann Defense",
      [
        ["e2", "e4"],
        ["c7", "c6"],
      ],
      "1. e4 c6",
      "The Caro-Kann was named after Horatio Caro and Marcus Kann who analyzed it in 1886. Black supports the move ...d5, to challenge the e4 pawn, while being ready to recapture. The Caro-Kann is considered to be a fairly solid, quiet opening."),
  ChessOpening(
      "Pirc Defense",
      [
        ["e2", "e4"],
        ["d7", "d6"],
      ],
      "1. e4 d6",
      "The Pirc Defense is a hypdermodern defense, meaning that it doesn’t try to control the center early on with his pawns. Instead black tries to attack the center with this minor pieces from the sides and then once the foundation is in place, then looks to undermine the center control that white usually has."),
  ChessOpening(
      "Queen's Gambit",
      [
        ["d2", "d4"],
        ["d7", "d5"],
        ["c2", "c4"],
      ],
      "1. d4 d5 2. c4",
      "The Queen’s Gambit is probably the most popular gambit and although most gambits are said to be unsound against perfect play the queen’s gambit is said to be the exception. After 1. d4 1…d5, white stakes claim to center control by playing 2. c4. The objective of the queen’s gambit is to temporarily sacrifice a pawn to gain control of the e5 square."),
  ChessOpening(
      "Indian Defenses",
      [
        ["d2", "d4"],
        ["g8", "f6"],
      ],
      "1. d4 Nf6",
      "The Kings Indian Defense is one of the most solid defenses in chess. Black builds an extremely strong defense around his king and then looks to counter attack depending on where white’s structure is weak."),
];

class ChessOpening {
  final String name;
  final List moves;
  final String moveNotation;
  final String information;

  ChessOpening(this.name, this.moves, this.moveNotation, this.information);
}
