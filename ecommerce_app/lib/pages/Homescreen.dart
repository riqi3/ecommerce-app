
import 'package:flutter/material.dart';

import '../widgets/HomeAppBar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
        ],
      ),
    );
  }
}