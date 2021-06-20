import 'package:flutter/material.dart';
import 'package:stock_app/constants/icon_constant.dart';

class WindowsButton extends StatelessWidget {
  const WindowsButton({
    Key? key,
    required this.onMinimize,
    required this.onMaximize,
    required this.onClose,
  }) : super(key: key);

  final Function()? onMinimize;
  final Function()? onMaximize;
  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _WinButton(
          icon: const Icon(Icons.minimize),
          onPressed: onMaximize,
          hoverColor: Colors.grey.withOpacity(.5),
        ),
        _WinButton(
          icon: const Icon(IconConstant.ic_maximize),
          onPressed: onMaximize,
          hoverColor: Colors.grey.withOpacity(.5),
        ),
        _WinButton(
          icon: const Icon(IconConstant.ic_close),
          hoverColor: Colors.red,
          onPressed: onClose,
        ),
      ],
    );
  }
}

class _WinButton extends StatelessWidget {
  const _WinButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.hoverColor,
  }) : super(key: key);

  final Function()? onPressed;
  final Icon icon;
  final Color? iconColor;
  final Color? hoverColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      hoverColor: hoverColor ?? Colors.grey,
      mouseCursor: MouseCursor.uncontrolled,
      child: Container(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 10.0,
          right: 10.0,
          bottom: 5.0,
        ),
        child: Icon(
          icon.icon,
          color: iconColor ?? Colors.white,
          size: 13.0,
        ),
      ),
    );
  }
}
