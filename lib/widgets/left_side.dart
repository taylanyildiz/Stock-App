import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/constants/constants.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        color: Colors.black.withOpacity(.8),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              children: const [
                LeftMenu(),
                LeftSideCheck(),
              ],
            ),
            _buildHoverIndicatorMenu()
          ],
        ),
      ),
    );
  }

  Widget _buildHoverIndicatorMenu() {
    return GetBuilder(
      builder: (LeftSideController leftController) {
        return leftController.isShowExpain
            ? AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: (Get.width * .045) * leftController.hoverItemsIndex + 30.0,
                left: Get.width * .025,
                right: Get.width * .1,
                child: Container(
                  height: Get.width * .014,
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    TextConstants
                        .explainLeftMenuText[leftController.hoverItemsIndex],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
