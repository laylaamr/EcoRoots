import 'package:flutter/material.dart';

import 'category.dart';

class CrabappletreePage extends StatelessWidget {
  CrabappletreePage({super.key});
  List<String> crabppleTree = [
    "assets/images/crabatree.png",
    "80 L.E",
    "Crabapple Tree",
    "A crabapple tree has a dense canopy with vibrant pink, white, or red flowers. It bears small, colorful and tart fruits .",
    "- Select a sunny, well-drained location.\n- Dig a hole twice as wide as the root ball.\n- Place the tree at soil level in the hole.\n- Backfill with soil and tamp down gently.\n- Water thoroughly to remove air pockets.\n- Add mulch around the base.\n- Keep the area weed-free.\n- Water regularly, especially during dry time"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
            url: crabppleTree[0],
            price: crabppleTree[1],
            name: crabppleTree[2],
            info: crabppleTree[3],
            data: crabppleTree[4]));
  }
}