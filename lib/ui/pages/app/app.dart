import 'package:akarbook/controllers/controllers.dart';
import 'package:akarbook/ui/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../pages.dart';
import 'widgets/custom_bottom_navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: GetBuilder<BottomTabsConroller>(
        builder: (controller) {
          return Scaffold(
            drawer: DrawerPage(),
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
      ),
    );
  }
}
