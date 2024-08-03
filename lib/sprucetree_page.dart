import 'package:flutter/material.dart';

import 'category.dart';

class SprucetreePage extends StatelessWidget {
  SprucetreePage({super.key});
  List<String> spruceTree = [
    "assets/images/spurcetree.png",
    "90 L.E",
    "Spruce",
    "Height: 30 to 200 feet, conical shape.Leaves: Needle-like (0.5 to 2 inches).Cones: Cylindrical, 1 to 6 inches, hang down.",
    "- Location: Sunny, well-drained soil.\n- Dig Hole: Twice the width, same depth as \n- Plant: Level with the ground.\n -Backfill: Fill with soil and water.\n- Mulch: Retain moisture.- Apply mulch around the base.\n- Keep the area weed-free.\n- Water regularly, especially in dry periods.\n",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Category(
          url: spruceTree[0],
          price: spruceTree[1],
          name: spruceTree[2],
          info: spruceTree[3],
          data: spruceTree[4],
        ));
  }
}
