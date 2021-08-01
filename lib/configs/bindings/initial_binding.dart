import 'package:get/get.dart';

import '../../data/repositories/repositories.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PropertyRepository>(
      PropertyRepository(),
      permanent: true,
    );
    // Get.put<DeepLinksController>(
    //   DeepLinksController(),
    //   permanent: true,
    // );
  }
}
