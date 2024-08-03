


import 'package:flutter/material.dart';

import 'category.dart';

class PrichTreePage extends StatelessWidget {
  PrichTreePage({super.key});
  List prichTree = [
    "assets/images/britshtree.png",
    "90 L.E",
    "Brich Tree",
    "A birch tree has a slender trunk with peeling white or silver bark. Its green, oval leaves turn yellow in fall. It produces long, slender catkins",
    "- Choose a sunny, well-drained spot.\n- Dig a hole as deep as the root ball.\n- Position the tree at soil level.\n- Backfill with soil and firm it gently.\n- Water thoroughly to settle the soil.\n- Apply mulch around the base.\n- Keep the area free of weeds.\n- Water regularly, especially in dry periods.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
            url: prichTree[0],
            price: prichTree[1],
            name: prichTree[2],
            info: prichTree[3],
            data: prichTree[4]));
  }
}
