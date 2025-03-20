// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // pagecontroller
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                Row(
                  children: [
                    Text(
                      'My ',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Cards', style: TextStyle(fontSize: 28)),
                  ],
                ),

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
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.20,
                  cardNumber: 11264892,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: 3420.23,
                  cardNumber: 113573349,
                  expiryMonth: 11,
                  expiryYear: 23,
                  color: Colors.blue[400],
                ),
                MyCard(
                  balance: 420.20,
                  cardNumber: 112463289,
                  expiryMonth: 8,
                  expiryYear: 22,
                  color: Colors.green[400],
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          SmoothPageIndicator(
            controller: _controller,
             count: 3,
             effect: ExpandingDotsEffect(),
             ),
          // 3 buttons -> send + pay + bills

          // column -> stats + transactions
        ],
      ),
    );
  }
}