import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';
import 'package:flutter/material.dart';

double pieceSize = 60.0;

List pieces = [
  ChessPiece("King", WhiteKing(size: pieceSize,)),
  ChessPiece("Queen", WhiteQueen(size: pieceSize,)),
  ChessPiece("Rook", WhiteRook(size: pieceSize,)),
  ChessPiece("Bishop", WhiteBishop(size: pieceSize,)),
  ChessPiece("Knight", WhiteKnight(size: pieceSize,)),
  ChessPiece("Pawn", WhitePawn(size: pieceSize,)),
];

class ChessPiece {
  final String name;
  final Widget pieceWidget;

  ChessPiece(this.name, this.pieceWidget);
}
