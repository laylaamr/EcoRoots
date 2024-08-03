import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  Tabs({super.key, required this.icon, required this.name});
  late var icon;
  late String name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
       width: double.infinity,

     // color: Colors.red,
       height: 50,
      child: Column(

        children: [

          Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
           // SizedBox(width: 10),
            Icon(icon ,color: Colors.black,),
            SizedBox(width: 20),
            Text(name, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            SizedBox(width: 200),
            Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.grey,),

          ],),
          Divider(
            color: Colors.grey,
            thickness: 1,
            endIndent: 10, // Add spacing between the divider and text
          ),

        ],
      ),

    ),);
  }}