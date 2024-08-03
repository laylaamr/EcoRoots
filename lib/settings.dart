import 'package:flutter/material.dart';
import 'package:tree/activity.dart';
import 'package:tree/policy.dart';
import 'package:tree/tabs.dart';

import 'favourite_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Settings(),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 10,),
              IconButton(onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Activity()));
              }
                , icon: Icon(Icons.keyboard_return,size: 35,color: Colors.black,),),

              Spacer(),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.black, size: 30),
                onPressed: () {},
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
          Text("Help Us save the Earth \nSetting",style: TextStyle(fontSize: 28,
          fontWeight: FontWeight.w700),),
          Text("General",style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey),),
           SizedBox(height: 10),
           Expanded(child: Tabs(icon: Icons.dark_mode,name: "Dark mode",)),
           Expanded(child: Tabs(icon: Icons.manage_accounts_rounded,name: "Account",)),
           Expanded(child: Tabs(icon: Icons.notifications,name: "Notification",)),
           Expanded(child: Tabs(icon: Icons.card_giftcard,name: "Coupons",)),
           Expanded(child: Tabs(icon: Icons.logout_outlined,name: "Log out",)),
          Expanded(child: Tabs(icon: Icons.delete,name: "Delete account",)),
           Text("FeedBack", style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.w400,color: Colors.grey
           ),),
           SizedBox(height: 10,),
           Expanded(child: Tabs(icon: Icons.error_outline,name: "Report a bug",)),
           Expanded(child: Tabs(icon: Icons.send,name: "Send feedback",)),

          SizedBox(height: 20,),
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

          SizedBox(height: 10,),


        ],
      ),
    ),) ;
  }}