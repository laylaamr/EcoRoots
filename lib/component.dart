import 'package:flutter/material.dart';
import 'package:tree/activity.dart';
import 'package:tree/appletree_page.dart';
import 'package:tree/crabAppletree_page.dart';
import 'package:tree/dogwodtree_page.dart';
import 'package:tree/elmtree_page.dart';
import 'package:tree/palmtree_page.dart';
import 'package:tree/prichtree_page.dart';
import 'package:tree/sprucetree_page.dart';




class Component extends StatelessWidget {
  Component({super.key, required this.url, required this.name,required this.navigate});
  String url;
  String name;
  Widget navigate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: const Color(0xffFFFEFE),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              width: 125,
              height: 115,
              child: Image.asset(
                fit: BoxFit.fill,
                url,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                         Text(
                          name,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                      SizedBox(
                        width: 40,
                      ),
                    // SizedBox(width: 10,),

                       IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.grey,
                              size: 30,
                            ),
                      ),
                    ],
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    color: const Color(0xff98B66E),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => navigate));
                    },
                    child: const Text(
                      "view",
                      style: TextStyle(fontSize: 16, color: Color(0xffFFFEFE)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}