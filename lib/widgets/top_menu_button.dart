import 'package:flutter/material.dart';

class TopMenuButton extends StatelessWidget {
  const TopMenuButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  void _onPressed() {
    onPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.uncontrolled,
      hoverColor: Colors.grey,
      onTap: () => _onPressed(),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          bottom: 5.0,
          top: 5.0,
          right: 20.0,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
