import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbf93),
        title: Text("Notre site internet"),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 110.0, 8.0, 20.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: _launchURL,
                child: Image.asset(
                  'assets/cal.jpg', // On click should redirect to an URL
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
