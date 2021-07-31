import 'package:akarbook/model/property.dart';
import 'package:get/get.dart';

class BottomTabsConroller extends GetxController {
  int currentTab = 0;
  List<Property> proprtyList = [];
  bool tab1 =true;
  bool tab2 =false;
  bool tab3 =false;
  
 void changeBotomTab(int index){
   currentTab = index;
   update();
 }
}
