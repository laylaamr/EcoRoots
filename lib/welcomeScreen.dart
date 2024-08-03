

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree/letYouIn.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color( 0xFF2d4e2d),
body: Column(
 mainAxisAlignment: MainAxisAlignment.start,
   crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Image.asset("assets/images/2.png") ,
    //SizedBox(height: 40,),
    Text("Plant a tree &\n      Save our planet",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w700),),
    SizedBox(height: 30),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        color: Color(0xFF8CA46A),
      ),
        child: TextButton(onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Signin()));
        }, child: Text("Plant a tree", style: TextStyle(fontSize: 30,color:Colors.white))))
],),

    );}}