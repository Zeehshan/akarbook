import 'package:akarbook/ui/pages/home/widgets/tabs.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.home;
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
  ];
}
