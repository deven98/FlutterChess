import 'package:flutter/material.dart';
import 'package:flutter_chess/pages/developer_details_page.dart';
import 'package:flutter_chess/pages/home_page.dart';
import 'package:flutter_chess/pages/openings_page.dart';
import 'package:flutter_chess/pages/pieces_page.dart';
import 'package:flutter_chess/pages/play_game_page.dart';
import 'package:flutter_chess/pages/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Theme.of(context).platform == TargetPlatform.android ? "Raleway" : null,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => HomePage(),
        '/pieces_page': (context) => PiecesPage(),
        '/openings_page': (context) => OpeningsPage(),
        '/play_game_page': (context) => PlayGamePage(),
        '/developer_details_page': (context) => DeveloperDetailsPage(),
      },
    );
  }
}




