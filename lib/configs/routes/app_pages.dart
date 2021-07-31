import 'package:akarbook/configs/bindings/bindings.dart';
import 'package:akarbook/ui/pages/pages.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.app;
  static final routes = [
    GetPage(name: AppRoutes.app, page: () => App(),binding: AppBinding()),
  ];
}
