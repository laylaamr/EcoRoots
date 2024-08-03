import 'package:flutter/material.dart';
import 'package:tree/createNewacc.dart';
import 'package:tree/activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
    );
  }
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE9EFE1),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Createnewacc()));
                    }
                      , icon: Icon(Icons.keyboard_return,size: 35,color: Colors.black,),),
                    SizedBox(width: 18,),

                  ],
                ),
                //SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("Create a new account", style: TextStyle(color: Colors.black, fontSize: 50,fontWeight: FontWeight.bold),),
                ),
                //SizedBox(height: 60,),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),


                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Email',
                      // hintStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),

                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_rounded),
                      hintText: 'password',

                      hintStyle: TextStyle(color: Colors.black, fontSize: 25),

                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(25.0),
                  height: 50,
                  width: 280,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Activity()));
                  },
                    child:
                    Align(
                        alignment: Alignment.center,
                        child: Text("Sign up", style: TextStyle(fontSize: 28,color:Colors.black ),)
                    ),

                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 2,
                        endIndent: 10, // Add spacing between the divider and text
                      ),
                    ),
                    Text("Or Continue with ",style: TextStyle(fontSize: 20),),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 2,
                        indent: 10, // Add spacing between the text and divider
                      ),
                    ),

                    SizedBox(width: 20,),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 70,),
                    GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image:DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage ("assets/images/FacebookLogo.png")
                            ),
                            //color: Colors.black,
                          ),
                        )
                    ),
                    SizedBox(width: 20,),
                    GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image:DecorationImage(
                              // fit: BoxFit.cover,
                                image:AssetImage ("assets/images/GoogleLogo.png")
                            ),
                            //color: Colors.black,
                          ),
                        )
                    ),
                    SizedBox(width: 20,),
                    GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image:DecorationImage(
                              // fit: BoxFit.cover,
                                image:AssetImage ("assets/images/AppleLogo.jpeg")
                            ),
                            //color: Colors.black,
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 80,),
                Row(
                  children: [
                    SizedBox(width: 40,),
                    Text("Have already An Account?",style: TextStyle(fontSize: 20,color: Colors.black),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Createnewacc()));
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        )

    );

  }}