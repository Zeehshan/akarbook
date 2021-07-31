import 'package:akarbook/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages.dart';
import 'widgets/custom_bottom_navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomTabsConroller>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.currentTab,
            children: [
              HomeScreen(),
              SearchScreen(),
              ProfileScreen(),
              FavouriteScreen(),
              NotificationScreen(),
            ],
          ),
          bottomNavigationBar: CustomBottomNavigationBar(),
        );
      },
    );
  }
}
