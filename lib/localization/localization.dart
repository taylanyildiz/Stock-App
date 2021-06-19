import 'package:get/get.dart';
import 'package:stock_app/localization/translate/en.dart';
import 'package:stock_app/localization/translate/tr.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tr': tr,
        'en': en,
      };
}
