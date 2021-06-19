import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40.0,
            width: double.infinity,
            color: Colors.black,
          ),
          // Top side
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 200.0,
                  height: double.infinity,
                  color: Colors.red,
                ),
                // Left side,
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                // Table side
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            color: Colors.blue,
          ),
          // Bottom side,
        ],
      ),
    );
  }
}
