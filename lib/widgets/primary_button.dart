import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(_animationController);
    _animation.addListener(_animationListener);
    super.initState();
  }

  void _animationListener() {
    setState(() {});
  }

  void _onPressed() async {
    await _animationController.forward();
    await _animationController.reverse();
    widget.onPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPressed,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, index) {
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(_animation.value),
            child: Container(
              width: widget.width ?? 100.0,
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? Colors.orange,
                borderRadius: BorderRadius.circular(5.0),
                // boxShadow: const [
                //   BoxShadow(
                //     color: Colors.black,
                //     blurRadius: 10.0,
                //     offset: Offset(1.0, 3.0),
                //   ),
                // ],
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: widget.textColor ?? Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
