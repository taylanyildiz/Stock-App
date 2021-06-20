import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';

class HomeScreenController extends GetxController {
  /// Un focus scope.
  void unFocus(BuildContext context) {
    Get.find<TableSideController>().closeSearch();
    FocusScope.of(context).unfocus();
  }
}
