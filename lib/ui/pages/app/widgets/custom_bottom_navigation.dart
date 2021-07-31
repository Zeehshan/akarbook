

import 'package:akarbook/configs/themes/colors.dart';
import 'package:akarbook/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomTabsConroller controller = Get.put(BottomTabsConroller());
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        width: double.infinity,
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
                  backgroundColor: controller.currentTab == 0
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.home,
                    size: 23,
                    color:
                    controller.currentTab == 0 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.changeBotomTab(0);
                }),
            InkWell(
              child: CircleAvatar(
                minRadius: 16,
                maxRadius: 18,
                backgroundColor:
                controller.currentTab == 1 ? kLightPrimary : Colors.transparent,
                child: Icon(
                  Icons.search,
                  size: 23,
                  color: controller.currentTab == 1 ? Colors.white : Colors.black26,
                ),
              ),
              onTap: () {
                controller.changeBotomTab(1);
              },
            ),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.currentTab == 2
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.person,
                    size: 23,
                    color:
                    controller.currentTab == 2 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                 controller.changeBotomTab(2);
                }),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.currentTab == 3
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.favorite,
                    size: 23,
                    color:
                    controller.currentTab == 3 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.changeBotomTab(3);
                }),
            InkWell(
                child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 18,
                  backgroundColor: controller.currentTab == 4
                      ? kLightPrimary
                      : Colors.transparent,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 23,
                    color:
                    controller.currentTab == 4 ? Colors.white : Colors.black26,
                  ),
                ),
                onTap: () {
                  controller.changeBotomTab(4);
                })
          ],
        ),
      );
  }
}