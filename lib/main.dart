import 'package:flutter/material.dart';
import 'package:flutter_wordpress_api_get_post/widgets/maintab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuisinealancienne',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MainTab(),
      debugShowCheckedModeBanner: false,
    );
  }
}
