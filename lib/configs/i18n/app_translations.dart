import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:akarbook/configs/i18n/er_ER.dart';


class AppTranslations extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('er');

  static void changeLocale(String langCode) {
    Get.updateLocale(locale!);
  }


  @override
  Map<String, Map<String, String>> get keys => {
        'er': er_ER,
      };

}
