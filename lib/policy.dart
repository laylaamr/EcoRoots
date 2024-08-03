import 'package:flutter/material.dart';
import 'package:tree/activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Policy(),
    );
  }
}

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width:20),
              IconButton(onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Activity()));
              }
                , icon: Icon(Icons.keyboard_return,size: 35,color: Colors.black,),),
              SizedBox(width: 230,),
              IconButton(onPressed: (){
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Createnewacc()));
              }
                , icon: Icon(Icons.notifications,size: 35,color: Colors.black,),),
              IconButton(onPressed: (){
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Createnewacc()));
              }
                , icon: Icon(Icons.favorite,size: 35,color: Colors.black,),),
              
            ],
          ),
//SizedBox(height: 10),
Text("Privacy Policy & Terms Of Conditions",style: TextStyle(fontSize: 20,color: Color(0xFF8CA46A),fontWeight: FontWeight.w800),),
          SizedBox(height: 20),
          Text("When considering the safety and privacy of a tree-planting app.\n\n Data encryption protects user information. \n\n A clear privacy policy outlines data collection and usage. \n\n User consent is required for data collection with opt-out options\n \n Control over location sharing allows users to manage access \n\n Anonymous account options enhance user privacy\n\nCommunity guidelines promote respectful interactions\n\nRegular security updates improve privacy and fix vulnerabilities\n\nUsers can delete accounts and data\n\nSecure payment options protect financial information\n\nRobust user authentication prevents unauthorized access\n\nData anonymization reduces personal information exposure\n\nTransparent data sharing builds user trust\n\nUser feedback helps improve safety features\n\nOpt-in location services enhance user control\n\nData retention policies limit information storage\n\nUser education on privacy settings empowers choices\n\nThird-party audits verify app security\n\nRegular developer training mitigates risks  ",
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(

                  image:DecorationImage(

                      fit: BoxFit.cover,
                      image:AssetImage ("assets/images/FacebookLogo.png")
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(

                  image:DecorationImage(

                      fit: BoxFit.cover,
                      image:AssetImage ("assets/images/InstaLogo.jpeg")
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 40,
                height: 44,
                decoration: BoxDecoration(

                  image:DecorationImage(

                      fit: BoxFit.cover,
                      image:AssetImage ("assets/images/TwitterLogo.png")
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(

                  image:DecorationImage(

                      fit: BoxFit.cover,
                      image:AssetImage ("assets/images/YoutubeLogo.png")
                  ),
                ),
              ),
              SizedBox(width: 130,),
              Icon(Icons.safety_check_rounded,color: Color(0xFF8CA46A),size: 60,)
            ],
          )
        ],
      ),
    );}}