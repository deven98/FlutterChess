import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chess/data/piece_data.dart';
import 'package:flutter_chess/pages/piece_detail_page.dart';

class PiecesPage extends StatefulWidget {
  @override
  _PiecesPageState createState() => _PiecesPageState();
}

class _PiecesPageState extends State<PiecesPage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

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

            return PieceCard(
                leftWidget: widget,
                rightWidget: Text(
                  name,
                  style: TextStyle(fontSize: 16.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PieceDetailPage(position: position,),
                    ),
                  );
                },
              heroTag: "Piece$position",
            );
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
  final String heroTag;

  PieceCard({this.leftWidget, this.rightWidget, this.onTap, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
                  child: Material(child: Hero(child: leftWidget, tag: heroTag,),color: Colors.white,),
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
