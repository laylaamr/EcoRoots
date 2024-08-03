import 'package:flutter/material.dart';
import 'package:tree/appletree_page.dart';
import 'package:tree/crabAppletree_page.dart';
import 'package:tree/dogwodtree_page.dart';
import 'package:tree/elmtree_page.dart';
import 'package:tree/favourite_page.dart';
import 'package:tree/palmtree_page.dart';
import 'package:tree/policy.dart';
import 'package:tree/prichtree_page.dart';
import 'package:tree/settings.dart';
import 'package:tree/sprucetree_page.dart';

import 'beechtree_page.dart';
import 'component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Activity(),
    );
  }
}

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedOption = 'Yes';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Container(
                  width: 41,
                  height: 54,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/tree.png"),
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.black, size: 30),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Settings()));
                  },
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.black, size: 30),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => FavouritePage()));
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Help Us Save The Earth",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 41,
              width: 394,
              decoration: BoxDecoration(
                color: Color(0xFFE9EFE1),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(text: "Activity"),
                    Tab(text: "Explore"),
                    Tab(text: "Suggest"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ActivityTab(),
                  ExploreTab(),
                  SuggestTab(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Policy()),
                  );
                },
                child: Text(
                  'Privacy Policy & Terms Of Conditions',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    //decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Latest Plants",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              width: 180,
              height: 333,
              decoration: BoxDecoration(
                color: Color(0xFFFFFEFE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 181,
                    height: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/rev1.jpeg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Ahmed ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Planted Elm Tree",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "2 years ago",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 180,
              height: 333,
              decoration: BoxDecoration(
                color: Color(0xFFFFFEFE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 181,
                    height: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/rev2.jpeg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Mark ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Planted Birch Tree",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "2:23 Today",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(width: 280),
            Text(
              "See All",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),

        Container(
          width: 376,
          height: 57,
          decoration: BoxDecoration(
            color: Color(0xFFE9EFE1),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            SizedBox(width: 5,),
            Container(
              width: 30,
              height: 40,
              decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("assets/images/3.png")
              )
            ),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 10,),
            Text.rich(
            TextSpan(
    children: <TextSpan>[
    TextSpan(
    text: 'Ritchard planted ',
    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
    ),
    TextSpan(
    text: 'evergreen tree ',
    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
    ),
    ],
    ),
    ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.access_time_filled_rounded,color: Colors.black,size: 10,),
                  SizedBox(width: 10,),
                  Text("2 : 24 PM",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),)
                ],
              ),
            ],),
              Spacer(),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.favorite,color: Colors.grey,size: 25,),
              ),
              SizedBox(width: 10),





          ],),
        ),
        SizedBox(height: 10),
        Container(
          width: 376,
          height: 57,
          decoration: BoxDecoration(
            color: Color(0xFFE9EFE1),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5,),
              Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: AssetImage("assets/images/4.png")
                    )
                ),),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Emily planted ',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        TextSpan(
                          text: 'tanabata tree ',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.access_time_filled_rounded,color: Colors.black,size: 10,),
                      SizedBox(width: 10,),
                      Text("4 : 56 PM",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),)
                    ],
                  ),
                ],),
              Spacer(),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.favorite,color: Colors.grey,size: 25,),
              ),
              SizedBox(width: 10),





            ],),
        ),

        SizedBox(height: 10),
        Container(
          width: 376,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF8CA46A),
          ),
          child: TextButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Signin()));
            },
            child: Text(
              "Plant your tree",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),

      ],
    );
  }
}

class ExploreTab extends StatelessWidget {
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
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Also View",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
          ),
          Component(url: url[0], name: name[0],navigate:navigate [0],),
          Component(url: url[1], name: name[1],navigate:navigate [1]),
          Component(url: url[2], name: name[2],navigate: navigate[2]),
          Component(url: url[3], name: name[3],navigate: navigate[3]),
          Component(url: url[4], name: name[4],navigate: navigate[4]),
          Component(url: url[5], name: name[5],navigate: navigate[5]),
          Component(url: url[6], name: name[6],navigate: navigate[6]),
          Component(url: url[7], name: name[7],navigate: navigate[7]),
        ],),
    );
  }
}

class SuggestTab extends StatefulWidget {
  @override
  _SuggestTabState createState() => _SuggestTabState();
}

class _SuggestTabState extends State<SuggestTab> {
  String _selectedOption = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 107,
            width: 394,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "What is the temperature in your area?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF314220),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Container(
                    height: 33,
                    width: 123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFFFEFE),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 107,
            width: 394,
            decoration: BoxDecoration(
              color: Color(0xFFFFFEFE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "How much moisture is your soil?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF314220),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Container(
                    height: 33,
                    width: 123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 107,
            width: 394,
            decoration: BoxDecoration(
              color: Color(0xFFFFFEFE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Do your prefer floral trees ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF314220),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Radio<String>(
                      value: 'Yes',
                      groupValue: _selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                      activeColor: Colors.lightGreen,
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xFF314220),
                      ),
                    ),
                    SizedBox(width: 20),
                    Radio<String>(
                      value: 'No',
                      groupValue: _selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                      activeColor: Colors.lightGreen,
                    ),
                    Text(
                      'No',
                        style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF314220),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded (
            child: Container(
              //height: 183,
             // width: 394,
              decoration: BoxDecoration(
                color: Color(0xFFFFFEFE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "How long do you want it to grow ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xFF314220),
                      ),
                    ),
                  ),
                  _buildRadioOption('2-4 years'),
                  _buildRadioOption('4-6 years'),
                  _buildRadioOption('6-8 years'),
                  _buildRadioOption('8-10 years'),
                ],
              ),
            ),
          ),
          //SizedBox(height: 55),
          Container(
            width: 376,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF8CA46A),
            ),
            child: TextButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text(
                "Plant your tree",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
  Widget _buildRadioOption(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _selectedOption,
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
          activeColor: Colors.lightGreen,
        ),
        Text(
          value,
          style: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Color(0xFF314220),
    ),
        ),
      ],
    );
  }
}

