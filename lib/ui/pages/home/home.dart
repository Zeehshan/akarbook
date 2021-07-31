import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height / 1.7,
          color: Colors.black,
        ),
        HomePage()
      ],
    );
  }
}