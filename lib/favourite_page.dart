import 'package:flutter/material.dart';
import 'package:tree/activity.dart';
import 'package:tree/appletree_page.dart';
import 'package:tree/crabAppletree_page.dart';
import 'package:tree/dogwodtree_page.dart';
import 'package:tree/elmtree_page.dart';
import 'package:tree/palmtree_page.dart';
import 'package:tree/prichtree_page.dart';
import 'package:tree/settings.dart';
import 'package:tree/sprucetree_page.dart';

import 'beechtree_page.dart';

import 'component.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<String> url = [
    "assets/images/dogwodtree.png",
    "assets/images/britshtree.png",
    "assets/images/crabatree.png",
    "assets/images/elmtree.png",
    "assets/images/petchtree.png",
    "assets/images/palmtree.png",
    "assets/images/spurcetree.png",
    "assets/images/appletree.png",


  ];
  List<String> name = [
    "Dogwood Tree",
    "Brich Tree",
    "Crabapple Tree",
    "Elm Tree",
    "beech Tree",
    "palm Tree",
    "Spurce Tree",
    "Apple Tree",

  ];
  List <dynamic> navigate=[
    DogwodtreePage(),
    PrichTreePage(),
    CrabappletreePage(),
    ElmtreePage(),
    BeachtreePage(),
    PlamtreePage(),
    SprucetreePage(),
    AppleTreePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Activity()));
            },
            icon: const Icon(Icons.keyboard_return,size: 35,),

          ),
          actions: [
            IconButton(
              onPressed: () { Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));},
              icon: const Icon(Icons.notifications, color: Colors.black, size: 30),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.black, size: 30))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Favorites",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Component(url: url[0], name: name[0],navigate:navigate [0],),
              Component(url: url[1], name: name[1],navigate: navigate[1]),
              Component(url: url[2], name: name[2],navigate: navigate[2]),
              Component(url: url[3], name: name[3],navigate: navigate[3]),
              Component(url: url[4], name: name[4],navigate: navigate[4]),
              Component(url: url[5], name: name[5],navigate: navigate[5]),
              Component(url: url[6], name: name[6],navigate: navigate[6]),
              Component(url: url[7], name: name[7],navigate: navigate[7]),
              const SizedBox(
              height: 30,
              ),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 140),
                  color: const Color(0xff98B66E),
                  onPressed: () {},
                  child: const Text(
                    "Add More",
                    style: TextStyle(fontSize: 16, color: Color(0xffFFFEFE)),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Privacy Policy & Terms Of Conditions",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffA2A2A2),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
