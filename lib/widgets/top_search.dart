import 'package:flutter/material.dart';

class TopSearch extends StatelessWidget {
  const TopSearch({
    Key? key,
    required this.onSumbitted,
    required this.onChanged,
  }) : super(key: key);

  final Function(String)? onChanged;
  final Function(String)? onSumbitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 200.0,
      child: TextField(
        onChanged: onChanged,
        onSubmitted: onSumbitted,
        textInputAction: TextInputAction.search,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black.withOpacity(.3),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
