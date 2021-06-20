import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';

class LeftMenu extends GetView<LeftSideController> {
  const LeftMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (LeftSideController _) => Flexible(
        flex: 2,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(.9),
          child: Stack(
            children: [
              _buildSelectIndicator(),
              _buildHoverIndicator(),
              Column(
                children: [
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(0, check),
                    onPressed: () => controller.selectMenuItems(0),
                    icon: const Icon(Icons.home),
                    iconColor: controller.selectedItems[0]
                        ? Colors.white
                        : controller.hoverItems[0]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(1, check),
                    onPressed: () => controller.selectMenuItems(1),
                    icon: const Icon(Icons.search),
                    iconColor: controller.selectedItems[1]
                        ? Colors.white
                        : controller.hoverItems[1]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(2, check),
                    onPressed: () => controller.selectMenuItems(2),
                    icon: const Icon(Icons.settings),
                    iconColor: controller.selectedItems[2]
                        ? Colors.white
                        : controller.hoverItems[2]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(3, check),
                    onPressed: () => controller.selectMenuItems(3),
                    icon: const Icon(Icons.person),
                    iconColor: controller.selectedItems[3]
                        ? Colors.white
                        : controller.hoverItems[3]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(4, check),
                    onPressed: () => controller.selectMenuItems(4),
                    icon: const Icon(Icons.window),
                    iconColor: controller.selectedItems[4]
                        ? Colors.white
                        : controller.hoverItems[4]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                  _MenuItems(
                    onHover: (check) => controller.onHoverMenuItems(5, check),
                    onPressed: () => controller.selectMenuItems(5),
                    icon: const Icon(Icons.add),
                    iconColor: controller.selectedItems[5]
                        ? Colors.white
                        : controller.hoverItems[5]
                            ? Colors.white
                            : Colors.grey.withOpacity(.6),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHoverIndicator() {
    return controller.isShowExpain
        ? AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: (Get.width * .045) * controller.hoverItemsIndex,
            left: Get.width * .022,
            child: Container(
              width: 3.0,
              height: Get.width * .044,
              color: Colors.grey,
            ),
          )
        : const SizedBox.shrink();
  }

  Widget _buildSelectIndicator() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      top: (Get.width * .045) * controller.menuIndicatorIndex,
      left: 0.0,
      child: Container(
        width: 3.0,
        height: Get.width * .044,
        color: Colors.white,
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  const _MenuItems({
    Key? key,
    required this.onPressed,
    required this.onHover,
    required this.icon,
    this.iconColor,
  }) : super(key: key);

  final Function()? onPressed;
  final Function(bool)? onHover;
  final Icon icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      onHover: onHover,
      hoverColor: Colors.red,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .005,
          vertical: Get.width * .015,
        ),
        child: Icon(
          icon.icon,
          color: iconColor,
          size: Get.width * .015,
        ),
      ),
    );
  }
}
