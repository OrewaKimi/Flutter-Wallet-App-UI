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
                'My',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              Text(
                'Cards',
                style: TextStyle(fontSize: 28),
              ),

              // plus button
              Icon(Icons.add)
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
