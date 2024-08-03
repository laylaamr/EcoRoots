import 'package:flutter/material.dart';

import 'category.dart';

class DogwodtreePage extends StatelessWidget {
  DogwodtreePage({super.key});
  List<String> dogwodTree = [
    "assets/images/dogwodtree.png",
    "90 L.E",
    "Dogwood Tree",
    "A dogwood tree features showy white or pink flowers and green leaves that turn red in fall. It bears bright red or purple berries.",
    "- Choose a sunny to partly shady spot.\n- Dig a hole twice as wide as the root ball.\n- Set the tree at soil level.\n- Backfill with soil and firm gently.\n- Water well to settle the soil.\n- Apply mulch around the base.\n- Keep the area weed-free.\n- Water regularly, especially in dry periods.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
            url: dogwodTree[0],
            price: dogwodTree[1],
            name: dogwodTree[2],
            info: dogwodTree[3],
            data: dogwodTree[4]));
  }
}