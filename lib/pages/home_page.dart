// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // app bar
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'My Cards',
                style: TextStyle(fontSize: 26),
              ),
            ],
          ),
          )
          // cards

          // 3 buttons -> send + pay + bills

          // column -> stats + transactions
        ],),
    );
  }
}
