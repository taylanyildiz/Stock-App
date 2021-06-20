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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
