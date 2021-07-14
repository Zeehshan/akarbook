import 'package:akarbook/controllers/home_controller.dart';
import 'package:akarbook/ui/pages/home/drawer_page.dart';
import 'package:akarbook/ui/pages/home/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:akarbook/configs/themes/colors.dart';

class HomePage extends StatelessWidget {
  final _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: ((controller) {
          return SafeArea(
            child: Scaffold(
              drawer: DrawerPage(),
              key: _scaffold,
              body: Container(
                  child: Column(
                    children: [
                      _getStackedContainer(controller, context),
                      _getNavigationButtons(controller),
                    ],
                  )),
            ),
          );
        }));
  }

  Widget _getStackedContainer(controller, context) {
    return Expanded(
      child: IndexedStack(
        index: controller.index,
        children: [
          HomeWidget(controller: controller, scaffold: _scaffold),
          Container(color: Colors.blue,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blueAccent,),
        ],
      ),
    );
  }

  Widget _getNavigationButtons(HomeController controller) {
    return Center(
      child: Container(
        width: Get.width,
        height: Get.height / 15,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.index == 0
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.home,
                    size: 23,
                    color:
                    controller.index == 0 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.index = 0;
                  controller.update();
                }),
            InkWell(
              child: CircleAvatar(
                minRadius: 16,
                maxRadius: 18,
                backgroundColor:
                controller.index == 1 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.search,
                  size: 23,
                  color: controller.index == 1 ? Colors.white : Colors.black26,
                ),
              ),
              onTap: () {
                controller.index = 1;
                controller.update();
              },
            ),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.index == 2
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.person,
                    size: 23,
                    color:
                    controller.index == 2 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.index = 2;
                  controller.update();
                }),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.index == 3
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.favorite,
                    size: 23,
                    color:
                    controller.index == 3 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.index = 3;
                  controller.update();
                }),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.index == 4
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 23,
                    color:
                    controller.index == 4 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.index = 4;
                  controller.update();
                })
          ],
        ),
      ),
    );
  }
}
