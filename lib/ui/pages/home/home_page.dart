import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/configs/themes/colors.dart';
import 'package:real_estate/configs/themes/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: ((controller) {
          return Scaffold(
            drawer: Drawer(
              child: Container(
                color: Color(0XFF01203F),
              ),
            ),
            body: Container(
                child: Column(
              children: [
                _getStackedContainer(controller, context),
                _getNavigationButtons(controller),
              ],
            )),
          );
        }));
  }

  Widget _getStackedContainer(controller, context) {
    return Expanded(
      child: IndexedStack(
        index: controller.index,
        children: [
          HomeWidget(controller: controller),
        ],
      ),
    );
  }

  Widget _getNavigationButtons(HomePageController controller) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              child: CircleAvatar(
                minRadius: 16,
                maxRadius: 18,
                backgroundColor:
                    controller.index == 0 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.home,
                  size: 23,
                  color: controller.index == 0 ? Colors.white : Colors.black26,
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
                backgroundColor:
                    controller.index == 2 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.person,
                  size: 23,
                  color: controller.index == 2 ? Colors.white : Colors.black26,
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
                backgroundColor:
                    controller.index == 3 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.favorite,
                  size: 23,
                  color: controller.index == 3 ? Colors.white : Colors.black26,
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
                backgroundColor:
                    controller.index == 4 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 23,
                  color: controller.index == 4 ? Colors.white : Colors.black26,
                ),
              ),
              onTap: () {
                controller.index = 4;
                controller.update();
              })
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({this.controller});

  final HomePageController? controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
      Container(
        margin: EdgeInsets.only(bottom: Get.height/3),
        height: MediaQuery.of(context).size.height - 400,
        color: Color(0XFF002247),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10 ),
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: Get.width / 1.5,
                  width: Get.width / 1.5,
                  padding: EdgeInsets.only(top: 30),
                  child: ClipRRect(child: Image.asset("images/home.jpg"),),

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                ),
              ),
            );
          }),
        ),
      )
    ]);
  }
}

class HomePageController extends GetxController {
  int index = 0;
}
