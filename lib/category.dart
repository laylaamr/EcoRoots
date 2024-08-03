import 'package:flutter/material.dart';
import 'package:tree/policy.dart';

import 'activity.dart';

class Category extends StatelessWidget {
  String url;
  String price;
  String name;
  String info;
  String data;

  Category(
      {super.key,
        required this.url,
        required this.price,
        required this.name,
        required this.info,
        required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.39,
            child: Stack( children: [

              Image.asset(url),
            
              Padding(
                padding: EdgeInsets.only(top: 40,left: 10),
                child:IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Activity()));
                  },
                  icon: const Icon(Icons.keyboard_return,size: 35,color: Colors.black,),

                ),) ,
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    price,
                    style: const TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    info,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Text(
                    "How to plant it",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    data,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 130,
                    ),
                    color: const Color(0xff98B66E),
                    onPressed: () {},
                    child: const Text(
                      "Plant Your Tree",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Policy()));
                },
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
    );
  }
}