import 'package:flutter/material.dart';

import 'category.dart';

class ElmtreePage extends StatelessWidget {
  ElmtreePage({super.key});
  List elmTree = [
    "assets/images/elmtree.png",
    "99 L.E",
    "Elm",
    "The elm tree is a tall deciduous tree.Its serrated leaves turn yellow in fall.Elms produce winged seeds in spring.",
    "- Choose a sunny spot with well-draining soil.\n  - Dig a hole wider than the root ball.\n  - Backfill the hole and pack the soil.\n - Water deeply after planting.\n  - Add mulch to retain moisture.\n- Select a healthy elm sapling.\n  - Clear the planting area of debris.\n  - Dig a hole deep enough for the roots.   ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
          url: elmTree[0],
          price: elmTree[1],
          name: elmTree[2],
          info: elmTree[3],
          data: elmTree[4],
        ));
  }
}
