import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chess/data/piece_data.dart';

class PiecesPage extends StatefulWidget {
  @override
  _PiecesPageState createState() => _PiecesPageState();
}

class _PiecesPageState extends State<PiecesPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Chess Basics"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: pieces.length,
          itemBuilder: (context, position) {

            String name = pieces[position].name;
            Widget widget = pieces[position].pieceWidget;

            return PieceCard(widget, Text(name, style: TextStyle(fontSize: 16.0),), (){});
          },
        ),
      ),
    );
  }
}

class PieceCard extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final GestureTapCallback onTap;

  PieceCard(this.leftWidget, this.rightWidget, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
        elevation: 4.0,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: leftWidget,
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: rightWidget,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

