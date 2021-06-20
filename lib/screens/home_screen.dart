import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.unFocus(context),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                const TopSide(),
                Flexible(
                  flex: 30,
                  child: Row(
                    children: const [
                      LeftSide(),
                      TableSide(),
                    ],
                  ),
                ),
                // const BottomSide(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
