import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class TopSide extends StatelessWidget {
  const TopSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black.withOpacity(.8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopMenuButton(
              onPressed: () => print('file'),
              title: 'File',
            ),
            TopMenuButton(
              onPressed: () => print('file'),
              title: 'Edit',
            ),
            TopMenuButton(
              onPressed: () => print('file'),
              title: 'View',
            ),
            TopMenuButton(
              onPressed: () => print('file'),
              title: 'Help',
            ),
            TopMenuButton(
              onPressed: () => print('file'),
              title: 'Windows',
            ),
            const Spacer(),
            _buildSelectedItemNameShow(),
            const Spacer(),
            WindowsButton(
              onMinimize: () => print('minimize'),
              onMaximize: () => print('maximize'),
              onClose: () => print('close'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedItemNameShow() {
    return GetBuilder(
      builder: (LeftSideController leftController) {
        return Text(
          leftController.componentsItems[leftController.componentIndex]
              .toLowerCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
