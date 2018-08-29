import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperDetailsPage extends StatefulWidget {
  @override
  _DeveloperDetailsPageState createState() => _DeveloperDetailsPageState();
}

class _DeveloperDetailsPageState extends State<DeveloperDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About the writer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(backgroundImage: AssetImage('images/profile_pic.jpeg'),radius: 70.0,),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text("Deven Joshi", style: TextStyle(fontSize: 22.0),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Google Certified Android Developer. \nSpeaker and Blogger for Flutter and Android. \nLoves coding, AI and Chess.",
            style: TextStyle(fontSize: 20.0),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Medium:", style: TextStyle(fontSize: 18.0),),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("https://www.medium.com/@dev.n", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 18.0),),
                    ),
                    onTap: () {
                      _launchURL("https://www.medium.com/@dev.n");
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("GitHub:", style: TextStyle(fontSize: 18.0),),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("https://www.github.com/deven98", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 18.0),),
                    ),
                    onTap: () {
                      _launchURL("https://www.github.com/deven98");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

