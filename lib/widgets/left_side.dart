import 'package:flutter/material.dart';
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
        child: Row(
          children: const [
            LeftMenu(),
            LeftSideCheck(),
          ],
        ),
      ),
    );
  }
}
