import 'package:flutter/material.dart';

class BottomSide extends StatelessWidget {
  const BottomSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        height: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}
