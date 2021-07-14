import 'package:akarbook/model/property.dart';
import 'package:akarbook/utils/utils.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int index = 0;
  List<Property> proprtyList = [];
  bool tab1 =true;
  bool tab2 =false;
  bool tab3 =false;

  @override
  void onInit() {
      AppConst().propertyList.forEach((element) {
        proprtyList.add(Property.fromMap(element));
    });
      update();
    super.onInit();
  }
}
