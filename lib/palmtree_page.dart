import 'package:flutter/material.dart';

import 'category.dart';

class PlamtreePage extends StatelessWidget {
  PlamtreePage({super.key});
  List<String> plamTree = [
    "assets/images/palmtree.png",
    "120 L.E",
    "Palm",
    "Palm trees are tall, slender trees characterized by their long, smooth trunks and fan-shaped orfeather-like leaves that emerge from the top.",
    "- Choose a sunny spot with well-draining soil.\n  - Dig a hole twice the root ball's width.\n- Remove the palm from its container.\n  - Place the palm upright in the hole.\n - Backfill and pack the soil.\n - Water and add mulch.\n - Select a healthy palm sapling.\n- Clear the planting area.\n ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
            url: plamTree[0],
            price: plamTree[1],
            name: plamTree[2],
            info: plamTree[3],
            data: plamTree[4]));
  }
}