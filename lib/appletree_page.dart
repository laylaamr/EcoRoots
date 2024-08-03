
import 'package:flutter/material.dart';

import 'category.dart';

class AppleTreePage extends StatelessWidget {
  AppleTreePage({super.key});
  List<String> appleTree = [
    "assets/images/appletree.png",
    "50 L.E",
    "Apple Tree",
    "An apple tree has a rounded canopy with green, serrated leaves. It produces fragrant white or pink flowers.",
    "- Choose a sunny, well-drained spot.\n- Dig a hole twice as wide as the root ball.\n- Place the tree at soil level.\n- Backfill with soil and firm gently.\n- Water deeply to remove air pockets.\n- Add mulch around the base.\n- Keep the area weed-free.\n- Water regularly, especially in dry periods.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
            url: appleTree[0],
            price: appleTree[1],
            name: appleTree[2],
            info: appleTree[3],
            data: appleTree[4]));
  }
}