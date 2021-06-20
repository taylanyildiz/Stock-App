import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class LeftSideCheck extends GetView<LeftSideController> {
  const LeftSideCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (LeftSideController _) {
        return _buildLeftSideScroll(controller.menuIndicatorIndex);
      },
    );
  }

  Widget _buildLeftSideScroll(int selectItems) {
    switch (selectItems) {
      case 0:
        return SelectComponents();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      case 5:
        return Container();
      default:
        return Container();
    }
  }
}
