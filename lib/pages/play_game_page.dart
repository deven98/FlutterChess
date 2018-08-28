import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class PlayGamePage extends StatefulWidget {
  @override
  _PlayGamePageState createState() => _PlayGamePageState();
}

class _PlayGamePageState extends State<PlayGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Play with a friend"),),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ChessBoard(
                size: MediaQuery.of(context).size.width,
                onMove: (moveNotation){},
                onCheckMate: (winColor){},
                onDraw: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

