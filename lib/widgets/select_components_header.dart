import 'package:flutter/material.dart';

class SelectComponentsHeader extends StatelessWidget {
  const SelectComponentsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
      ),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: ' AKE',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' ASANSOR',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
