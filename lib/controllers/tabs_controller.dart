import 'package:get/get.dart';

class BottomTabsConroller extends GetxController {
  int currentTab = 0;
 void changeBotomTab(int index){
   currentTab = index;
   update();
 }
}
