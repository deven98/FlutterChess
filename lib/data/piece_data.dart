import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

double pieceSize = 60.0;

List<ChessPiece> pieces = [
  ChessPiece(
      "King",
      PieceType.King,
      WhiteKing(
        size: pieceSize,
      ),
      "The king moves one square in any direction. The king also has a special move called castling that involves also moving a rook."),
  ChessPiece(
      "Rook",
      PieceType.Rook,
      WhiteRook(
        size: pieceSize,
      ),
      "The rook can move any number of squares along a rank or file, but cannot leap over other pieces. Along with the king, a rook is involved during the king's castling move."),
  ChessPiece(
      "Bishop",
      PieceType.Bishop,
      WhiteBishop(
        size: pieceSize,
      ),
      "The bishop can move any number of squares diagonally, but cannot leap over other pieces."),
  ChessPiece(
      "Knight",
      PieceType.Knight,
      WhiteKnight(
        size: pieceSize,
      ),
      "The knight moves to any of the closest squares that are not on the same rank, file, or diagonal, thus the move forms an 'L'-shape: two squares vertically and one square horizontally, or two squares horizontally and one square vertically. The knight is the only piece that can leap over other pieces."),
  ChessPiece(
      "Queen",
      PieceType.Queen,
      WhiteQueen(
        size: pieceSize,
      ),
      "The queen combines the power of a rook and bishop and can move any number of squares along a rank, file, or diagonal, but cannot leap over other pieces."),
  ChessPiece(
      "Pawn",
      PieceType.Pawn,
      WhitePawn(
        size: pieceSize,
      ),
      "The pawn can move forward to the unoccupied square immediately in front of it on the same file, or on its first move it can advance two squares along the same file, provided both squares are unoccupied (black dots in the diagram); or the pawn can capture an opponent's piece on a square diagonally in front of it on an adjacent file, by moving to that square. A pawn has two special moves: the en passant capture and promotion."),
];

class ChessPiece {
  final String name;
  final PieceType pieceType;
  final Widget pieceWidget;
  final String information;

  ChessPiece(this.name, this.pieceType, this.pieceWidget, this.information);
}
