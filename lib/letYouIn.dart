import 'package:flutter/material.dart';
import 'package:tree/createNewacc.dart';
import 'package:tree/signup.dart';
import 'package:tree/welcomeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signin(),
    );
  }
}

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFFE9EFE1),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
       SizedBox(height: 50,),
       Row(
         children: [
           SizedBox(width: 20,),
IconButton(onPressed: (){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
}
  , icon: Icon(Icons.keyboard_return,size: 35,color: Colors.black),),
           SizedBox(width: 53,),
          // Text("Let You In", style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),)
         ],
       ),
         Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Text("Let You In", style: TextStyle(color: Colors.black, fontSize: 50,fontWeight: FontWeight.bold),),
         ),
         //SizedBox(height: 80,),
         Container(
           margin: EdgeInsets.all(25.0),
           child: ElevatedButton(onPressed: (){},
                child: Row(
             children: [
               Container(
                 width: 50,
                 height: 60,
                 decoration: BoxDecoration(

                  // borderRadius: BorderRadius.circular(100),
               image:DecorationImage(

                   fit: BoxFit.cover,
                   image:AssetImage ("assets/images/FacebookLogo.png")
               ),
                 ),
               ),
               SizedBox(width: 20,),
               Text("Continue with Facebook", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Colors.black ),),

             ],
           ),

           ),
         ),
         Container(
           margin: EdgeInsets.all(10.0),
           child: ElevatedButton(onPressed: (){},
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 60,
                   decoration: BoxDecoration(

                     // borderRadius: BorderRadius.circular(100),
                     image:DecorationImage(

                         fit: BoxFit.cover,
                         image:AssetImage ("assets/images/GoogleLogo.png")
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Text("Continue with Google", style: TextStyle(fontSize: 25,color:Colors.black ),),

               ],
             ),

           ),
         ),
         Container(
           margin: EdgeInsets.all(25.0),
           child: ElevatedButton(onPressed: (){},
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 60,
                   decoration: BoxDecoration(

                     image:DecorationImage(

                         image:AssetImage ("assets/images/AppleLogo.jpeg")
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Text("Continue with Apple", style: TextStyle(fontSize: 25,color:Colors.black ),),

               ],
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
             Text("Or",style: TextStyle(fontSize: 30),),
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
         SizedBox(height: 50,),
         Container(
           margin: EdgeInsets.all(25.0),
           height: 60,
           child: ElevatedButton(onPressed: (){
             Navigator.of(context)
                 .push(MaterialPageRoute(builder: (context) => Createnewacc()));
           },
             child:
             Align(
               alignment: Alignment.center,
                 child: Text("Sign in with Password", style: TextStyle(fontSize: 28,color:Colors.black ),)
             ),

             ),
           ),
      SizedBox(height: 60,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(width: 50,),
          Text("Don't Have An Account?",style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(width: 10,),
          GestureDetector(
            onTap: () {

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Signup()));
            },
            child: Text(
              'Sign up',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                //decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),


     ],),

      );
    }}