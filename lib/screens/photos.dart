import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tele extends StatelessWidget {
  const Tele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbf93),
        title: Text("Contact téléphonique"),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 110.0, 8.0, 20.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: new FlatButton(
                    onPressed: () => launch("tel://0659910270"),
                    child: new Text(
                        "Appelez-moi !",
                      style: TextStyle(fontSize: 24.0),
                    )
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
