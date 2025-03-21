// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
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
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 3420.23,
                  cardNumber: 113573349,
                  expiryMonth: 11,
                  expiryYear: 23,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balance: 420.20,
                  cardNumber: 112463289,
                  expiryMonth: 8,
                  expiryYear: 22,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),

          SizedBox(height: 25),

          // 3 buttons -> send + pay + bills
          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // send button
              MyButton(
                iconImagePath: 'lib/icons/send-money.png', 
                buttonText: 'Send',
                ),

                // pay button
                MyButton(
                iconImagePath: 'lib/icons/credit-card.png', 
                buttonText: 'Pay',
                ),

              // bills button
               MyButton(
                iconImagePath: 'lib/icons/bill.png', 
                buttonText: 'Bills',
                ), 
            ],
          ),
        ),

          // column -> stats + transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // statistics
                Row(
                  children: [
                    // icon
                    Container(
                      height: 80,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        ),
                      child: Image.asset('lib/icons/statistics.png'),
                    ),

                    SizedBox(
                      width: 20,
                    ),
            
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Statistics',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: 18,
                         ),
                        ),
                         SizedBox(
                          height: 12,
                        ),
                        Text('Payment and Income',
                         style: TextStyle(
                         fontSize: 16,
                         color: Colors.grey[600],
                         ),
                        ),
                      ],
                    ),
            
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
