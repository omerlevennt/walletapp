// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';

import '../util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.monetization_on,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        size: 32,
                        color: Colors.pink[200],
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        size: 32,
                        color: Colors.grey,
                      ))
                ]),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "My ",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cards",
                      style: TextStyle(fontSize: 32),
                    )
                  ],
                ),

                //plus button
                Container(
                    height: 50,
                    width: 40,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //card
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  balence: 5250.20,
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balence: 342.23,
                  cardNumber: 12345678,
                  expiryMonth: 11,
                  expiryYear: 23,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balence: 420.42,
                  cardNumber: 12345678,
                  expiryMonth: 08,
                  expiryYear: 22,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 12),
          ),
          SizedBox(
            height: 20,
          ),

          //3 buttons -> send + pay +bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //send button
                MyButton(
                    iconImagePath: "lib/icons/send-money.png",
                    buttonText: "Send"),
                //pay button

                MyButton(
                    iconImagePath: "lib/icons/credit-card.png",
                    buttonText: "Pay"),
                //bills button
                MyButton(
                    iconImagePath: "lib/icons/bill.png", buttonText: "Bill"),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),

          //column -> stats + transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //statistics
                MyListTile(
                    iconImagePath: "lib/icons/statistics.png",
                    tileName: "Statistics",
                    tileSupTile: "Payments and Income"),

                //transaction
                MyListTile(
                    iconImagePath: "lib/icons/transaction.png",
                    tileName: "Transaction",
                    tileSupTile: "Transaction History"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
