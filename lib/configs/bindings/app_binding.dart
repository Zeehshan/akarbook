import 'package:get/get.dart';

import '../../controllers/controllers.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BottomTabsConroller>(BottomTabsConroller());
  }
}
