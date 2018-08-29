import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleFontSize = 24.0;

  void _changeStatusBarColor() async {
    await FlutterStatusbarManager.setHidden(true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(Theme.of(context).platform == TargetPlatform.android) {
      _changeStatusBarColor();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 36.0),
                            child: FlutterLogo(
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Chess",
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuButton(itemBuilder: (context) {
                      return [PopupMenuItem(child: Text("About us"), value: 0,)];
                    },
                    onSelected: (value) {
                      Navigator.pushNamed(context, '/developer_details_page');
                    },)
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SectionTitle("Learn how the pieces move"),
                    SectionCard(
                        WhitePawn(
                          size: 80.0,
                        ),
                        Text(
                          "Explore how chess pieces move on a chessboard",
                          style: TextStyle(fontSize: 18.0),
                        ), () {
                      Navigator.pushNamed(context, '/pieces_page');
                    }),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SectionTitle("Learn Chess openings"),
                    SectionCard(
                        Icon(
                          Icons.book,
                          size: 80.0,
                        ),
                        Text(
                          "Learn commonly played chess openings",
                          style: TextStyle(fontSize: 18.0),
                        ), () {
                      Navigator.pushNamed(context, '/openings_page');
                    }),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SectionTitle("Play two-player"),
                    SectionCard(
                        Icon(
                          Icons.looks_two,
                          size: 80.0,
                        ),
                        Text(
                          "Play chess with a friend on the same device",
                          style: TextStyle(fontSize: 18.0),
                        ), () {
                      Navigator.pushNamed(context, '/play_game_page');
                    }),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final GestureTapCallback onTap;

  SectionCard(this.leftWidget, this.rightWidget, this.onTap);

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

class SectionTitle extends StatelessWidget {
  final String text;

  SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0, color: Colors.blue),
      ),
    );
  }
}
