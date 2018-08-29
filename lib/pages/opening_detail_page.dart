import 'package:flutter/material.dart';
import 'package:flutter_chess/data/opening_data.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class OpeningDetailPage extends StatefulWidget {
  final position;

  OpeningDetailPage({this.position});

  @override
  _OpeningDetailPageState createState() => _OpeningDetailPageState();
}

class _OpeningDetailPageState extends State<OpeningDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(openings[widget.position].name),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            child: ChessBoard(
              size: MediaQuery.of(context).size.width,
                onMove: (move) {}, onCheckMate: (win) {}, onDraw: () {},
            initMoves: openings[widget.position].moves,),
            tag: "Opening${widget.position}",
          ),
        ],
      ),
    );
  }
}
