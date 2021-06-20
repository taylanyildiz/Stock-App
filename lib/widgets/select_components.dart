import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class SelectComponents extends GetView<LeftSideController> {
  SelectComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (LeftSideController _) => Flexible(
        flex: 14,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SelectComponentsHeader(),
              Expanded(
                child: Container(
                  child: Scrollbar(
                    isAlwaysShown: true,
                    controller: controller.scrollController,
                    child: ListView.builder(
                      controller: controller.scrollController,
                      physics: const ClampingScrollPhysics(),
                      itemCount: controller.componentsItems.length,
                      itemBuilder: (context, index) =>
                          _buildComponentName(index),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComponentName(int index) {
    return InkWell(
      onTap: () => controller.selectComponentsName(index),
      mouseCursor: MouseCursor.uncontrolled,
      hoverColor: Colors.red,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: controller.selectComponent[index]
                  ? Colors.grey.withOpacity(.1)
                  : Colors.transparent,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          children: [
            Text(
              controller.componentsItems[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
