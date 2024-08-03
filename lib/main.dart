
import 'package:flutter/material.dart';
import 'package:tree/appletree_page.dart';
import 'package:tree/elmtree_page.dart';
import 'package:tree/favourite_page.dart';
import 'package:tree/tabs.dart';
import 'package:tree/welcomeScreen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: TestPage(),
    );
  }
}
class TestPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home:WelcomeScreen(),


    );
  }
}