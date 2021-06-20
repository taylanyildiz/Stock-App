import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeftSideController extends GetxController {
  @override
  void onInit() {
    componentsItems.forEach((element) {
      selectComponent.add(false);
    });
    selectComponent[0] = true;
    scrollController = ScrollController();
    update();
    super.onInit();
  }

  @override
  void onClose() {
    print('sadf');
    super.onClose();
  }

  late ScrollController? scrollController;

  /// Menu Initialized
  late List<bool> selectedItems = [true, false, false, false, false, false];
  late List<bool> hoverItems = [false, false, false, false, false, false];
  late bool isShowExpain = false;
  late int menuIndicatorIndex = 0;
  late int hoverItemsIndex = 0;

  /// Components initalized.
  final componentsItems = <String>[
    'Register',
    'Capacitor',
    'Opamp',
    'Transistor',
    'Bobine',
    'Diode',
  ];
  late List<bool> selectComponent = [];
  late int componentIndex = 0;

  void selectMenuItems(int index) {
    menuIndicatorIndex = index;
    selectedItems = [false, false, false, false, false, false];
    selectedItems[index] = !selectedItems[index];
    update();
  }

  void onHoverMenuItems(int index, bool check) async {
    hoverItems[index] = !hoverItems[index];
    hoverItemsIndex = index;
    var value = hoverItems.where((element) => element == false).length;
    if (value == 5) {
      isShowExpain = true;
    } else {
      isShowExpain = false;
    }
    update();
  }

  /// Select which one component for show on table.
  void selectComponentsName(int componentsIndex) {
    componentIndex = componentsIndex;
    componentsItems.forEach((element) {
      selectComponent[componentsItems.indexOf(element)] = false;
    });
    selectComponent[componentIndex] = !selectComponent[componentIndex];
    update();
  }
}
