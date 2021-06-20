import 'package:flutter/material.dart';

class EditTable extends StatelessWidget {
  const EditTable({
    Key? key,
    required this.child,
    required this.headers,
    required this.values,
  }) : super(key: key);

  final Widget child;
  final List<Text> headers;
  final List<TextField> values;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: child,
        ),
      ),
    );
  }
}
