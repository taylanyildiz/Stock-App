import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TranslateHelper {
  TranslateHelper._();

  static updateLocale(Locale locale) {
    Get.updateLocale(locale);
  }
}
