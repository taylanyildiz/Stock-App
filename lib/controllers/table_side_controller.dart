import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TableSideController extends GetxController {
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  late TextEditingController searchController;
  late bool isShowSearch = false;

  void setSearch() {
    isShowSearch = !isShowSearch;
    update();
  }

  void closeSearch() {
    if (searchController.text.isEmpty) {
      isShowSearch = false;
    }
    update();
  }

  void onChangeSearch(String? input) {}

  void onSubmittedSearch(String? input) {}

  /// Add header for table
  void addHeader() {}
}
