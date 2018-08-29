import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chess/data/opening_data.dart';
import 'package:flutter_chess/pages/opening_detail_page.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class OpeningsPage extends StatefulWidget {
  @override
  _OpeningsPageState createState() => _OpeningsPageState();
}

class _OpeningsPageState extends State<OpeningsPage> {

  List<ChessBoardController> controllers = [];

  @override
  void initState() {
    super.initState();
    for(int i = 0; i<openings.length; i++) {
      controllers.add(ChessBoardController());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chess Openings"),
      ),
      body: ListView.builder(
          itemCount: openings.length,
          itemBuilder: (context,position) {
          return OpeningCard(
            leftWidget: ChessBoard(
              onMove: (move){},
              onDraw: (){},
              onCheckMate: (win){},
              chessBoardController: controllers[position],
              initMoves: openings[position].moves,
              enableUserMoves: false,
            ),
            rightWidget: Text(openings[position].name),
            heroTag: "Opening$position",
            onTap: (){
              Navigator.push(
                context,
                MyCustomRoute(
                  builder: (context) => OpeningDetailPage(
                    position: position,
                  ),
                ),
              );
            },
          );
      },),
    );
  }
}

class OpeningCard extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final GestureTapCallback onTap;
  final String heroTag;

  OpeningCard({this.leftWidget, this.rightWidget, this.onTap, this.heroTag});

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
                  flex: 3,
                  child: Center(
                    child: Material(
                      child: Hero(
                        child: leftWidget,
                        tag: heroTag,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return new SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }
}

