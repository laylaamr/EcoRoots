
import 'package:flutter/material.dart';

import 'category.dart';

class BeachtreePage extends StatelessWidget {
  BeachtreePage({super.key});
  List<String> beachTree = [
    "assets/images/petchtree.png",
    "89 L.E",
    "Beech",
    "- Choose a sunny spot with well-draining soil. \n - Dig a hole 2-3 times wider than the root ball. \n - Place the tree in the center.  \n- Backfill the hole and pack the soil gently.\n - Water deeply after planting.\n  - Add mulch to retain moisture. Select a healthy beech sapling.\n  - Clear the planting area.  "
  ];

  @override
  Widget build(BuildContext context) {
    return Category(
        url: beachTree[0],
        price: beachTree[1],
        name: beachTree[2],
        info: beachTree[3],
        data: beachTree[4]);
  }
}