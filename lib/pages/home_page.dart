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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                    'My ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Cards',
                    style: TextStyle(fontSize: 28),
                  ),
                ]),
                // plus button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          // cards
          Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(16),
            ), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,
                  ),
                Text(
                  '\$5,250.20',
                  style: TextStyle(color: Colors.white,
                  fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 30,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // card number
                    Text('**** 3456',
                     style: TextStyle(color: Colors.white,
                     ),
                    ),
                    // card expiration date
                    Text('10/24',
                    style: TextStyle(color: Colors.white,
                     ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // 3 buttons -> send + pay + bills
          // column -> stats + transactions
        ],
      ),
    );
  }
}