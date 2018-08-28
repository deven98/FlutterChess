import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chess/data/piece_data.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class PieceDetailPage extends StatefulWidget {
  final int position;

  PieceDetailPage({@required this.position});

  @override
  _PieceDetailPageState createState() => _PieceDetailPageState();
}

class _PieceDetailPageState extends State<PieceDetailPage> {
  ChessBoardController controller = new ChessBoardController();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 200)).then((value) {
      controller.clearBoard();
      controller.putPiece(
          pieces[widget.position].pieceType, "e2", PieceColor.White);
      controller.putPiece(
          pieces[widget.position].pieceType, "e7", PieceColor.Black);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildTitle(),
            _buildContent(),
            _buildChessBoard(MediaQuery.of(context).size),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Hero(
              tag: "Piece${widget.position}",
              child: pieces[widget.position].pieceWidget),
        ),
        Text(
          pieces[widget.position].name,
          style: TextStyle(
            fontSize: 24.0,
          ),
        )
      ],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 32.0),
      child: Text(
        pieces[widget.position].information,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget _buildChessBoard(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ChessBoard(
        size: size.width,
        onDraw: () {},
        onCheckMate: (winColor) {},
        onMove: (move) {},
        chessBoardController: controller,
      ),
    );
  }
}
